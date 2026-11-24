---
url: https://help.hh-dm.com/reference/hhd-file-format/
---

On this pageHHD file format

The HHD (HH Data format) is a custom archive file format that uses the Zstd compression algorithm for efficient data storage.

Archive file structureâ

Headerâ

Offset (bytes)Data TypeSizeDescriptionIdentifier0uint4File identifier: 0x48484431Version4uint4File version: 1Directory offset8long8Location of the archive directory within the fileEntry count16long8Number of archived entriesEntry data BLOBs24Byte ArraysVariableZstd-compressed data entriesArchive directoryDirectory Offset`ArchiveEntry'VariableUncompressed binary data
ArchiveEntry object typeâ

Each archive entry contains the the information for accessing compressed data:

FieldTypeDescriptionName LengthintLength of the Name stringNamestringUnique identifier for the archive entry of the specified lengthData offsetlongByte offset to the compressed dataCompressed lengthlongSize of compressed data in bytesDecompressed lengthlongOriginal size after decompression
Types of archive entriesâ

All entries are compressed with Zstd. The following entries are present in every HHD file:

Entry NameContent TypeDescription[FileProperties]Serialized JSONSerialized HHDFileProperties object[Laps]Serialized JSONList of lap elapsed times (doubles)[Constants]Serialized JSONList of IConstantProperties objects[DataChunk||Channel Name]Serialized BinaryNumeric data array for the specified channel[ChannelProperties]Serialized JSONList of HHDChannelProperties objects
[ChannelProperties] JSON Schemaâ

FieldTypeDescriptionNamestringChannel identifierNullableboolWhether channel values can be nullDataTypeeChannelDataTypeData type of channel values (see supported types)ScalingFactordoubleMultiplier applied to raw valuesOffsetdoubleOffset applied to raw valuesFrequencyintSampling frequency (Hz)SampleCountintTotal number of samples in channelDimensioneDimensionPhysical dimension (e.g., velocity, temperature)UnitstringUnit of measurementTimeChannelNamestringReference to time channel for synchronizationFirstSampleTimedoubleThe time of the first data sample (if not 0)
Data Chunksâ

Data chunks store numeric arrays with optional null support, compressed with Zstd.

Non-nullable channels: Raw array of values of the specified data type

Nullable channels: Series of flag bytes followed by values

Flag byte = true: next byte(s) contain the value in the specified data type

Flag byte = false: value is null, proceed to next flag byte

Data typesâ

eChannelDataType.NET TypeDescriptionSBytebyteunsigned 8-bitBytesbytesigned 8-bitInt16shortsigned 16-bit integerUInt16ushortunsigned 16-bit integerInt32intsigned 32-bit integerUInt32uintunsigned 32-bit integerSinglefloat32-bit IEEE 754Doubledouble64-bit IEEE 754
Example: Reading a Data Chunkâ

Open the HHD archive file and read the header to locate the archive directory offset

Load the directory by reading Entry count of ArchiveEntry objects

Select the [ChannelProperties] entry:

Seek to the entry's data offset in the archive

Read the compressed data array (size: compressed length)

Decompress using Zstd decompression algorithm

Deserialize the decompressed JSON data into a collection of HHDChannelProperties objects

Find the specific HHDChannelProperties object matching your target channel name

Use the channel's metadata to process the corresponding data chunk:

Decompress the [DataChunk||Channel Name] entry using Zstd

Parse the byte array based on the channel's Nullable flag and DataType:

If nullable: read flag byte, then value byte(s) if flag is true

If non-nullable: read contiguous values in the specified DataType

Apply ScalingFactor and Offset transformations if needed

Scaling Factor and Offsetâ

Channel data in HHD is represented on disk using numeric primitives (integers or floats) while application code typically treats channel values as nullable double. The ScalingFactor and Offset fields convert between the stored representation and the application double values.

Conversions

From stored value to double (stored -> double):

doubleValue = (storedValue - Offset) / ScalingFactor

Apply this only to non-null values. If a value is marked null in a nullable channel, keep it as null.

From double to stored value (double -> stored):

storedValue = (doubleValue * ScalingFactor) + Offset

Example: writing an HHDFile with the NuGet packageâ

Add the HHDev.DataFileAccess.HHD NuGet package to your project. The following example shows how to create an in-memory data structure that is compatible with the HHDFileWriter.WriteFile method.

using HHDev.DataFileAccess.Core;
using HHDev.DataFileAccess.HHD;

namespace HHDTest
{
 internal class Program
 {
 static void Main(string[] args)
 {
 var srcFile = new DataFile()
 {
 FileName = "TestFile",
 ChannelProperties = 
 [
 new ChannelProperties(
 name: "TestChannel", 
 frequency: 1, 
 channelData: [0.0, 1.0, 2.0, 3.0])
 ],
 FileTimeLength = 3.5,
 StartTime = 0.0,
 LapElapsedTimes = [0.9, 2.1, 3.5],
 };

 var fileWriter = new HHDFileWriter(new HHDFileWriterOptions() 
 { 
 OpenNewFile = true, 
 });

 var writerResult = fileWriter.WriteFile("c:\\test_folder\\test_file.hhd", srcFile);
 if(writerResult.Successful)
 {
 var hhdFile = writerResult.NewDataFile;
 var channel = hhdFile.GetChannelData("TestChannel");
 }
 }
 }
}

Example: writing an HHDFile without the HHDFileWriter or ZstdDataRepositoryâ

Write the file header with placeholders for Directory offset and Entry count

Write file-level properties (entry name: [FileProperties]):

Serialize a HHDFileProperties object JSON

Compress and store in the archive

Write the compressed byte array to the file

Cache an ArchiveEntry object in directory collection to write later when finalizing the archive.

Write lap elapsed times ([Laps]):

Serialize a list of doubles into a JSON string

Compress and store in the archive

Write constant properties ([Constants]):

Serialize a list of IConstantProperties objects into a JSON string

Compress and store in archive

For each channel, write channel data ([DataChunk||CHANNEL NAME]):

It is optional to convert channel values from double?[] to a smaller storage type using ScalingFactor and Offset

Serialize the value arrays to byte arrays:

Nullable arrays consist of a boolean flag to indicate if the following bytes contain this element's value or the next element of the array (e.g. one array element can be a single-byte boolean false, followed by the next element's boolean true and an 8-byte double value)

Non-nullable arrays consist of contiguous stored-type values (e.g. Double is 8 bytes, UInt16 is 2 bytes)

Compress the byte array with Zstd and add to archive

Write channel properties index ([ChannelProperties]):

Create a list of HHDChannelProperties metadata objects (name, data type, frequency, units, scaling)

Serialize the list to a JSON string

Compress and store in archive

Finalize the archive:

Write the archive directory (reference the ArchiveEntry type definition and do not compress)

Updated the header with Directory offset and Entry count values

Close the file
