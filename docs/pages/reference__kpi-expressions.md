---
url: https://help.hh-dm.com/reference/kpi-expressions/
---

On this pageKPI Expressions

This sections explains the syntax, and available functions for the KPI expressions. This language is similar in concept to the Math Expressions but has some differences in behaviour and functions available due to the different applications of the language (operating on time series data versus the structured parameters that the Math Expressions are used to interact with).

When writing a math expression there will be an auto complete functionality that can help to find channel and function names.

There is an icon beside each item in the list that indicates the type that it represents, and the icons at the bottom of the list can be selected to filter the list.

IconDescriptionFunctionMath channelConstantData channelCustom expression
Syntaxâ

When writing a KPI expression, math channels, constants, data channels and custom expressions from the current Data Analysis Profile can be accessed and functions can be called to perform operations. Basic numerical operators are available.

Operatorsâ

The following numerical operators are available:

+ addition

- subtraction

* multiplication

/ division

The following boolean operators are available:

< less than

<= less than or equal

< greater than

<= greater than or equal

&& and

|| or

== equal

!= not equal

Unit Managementâ

Whenever a data channel is accessed, a unit conversion can be performed to change the returned unit. The base unit of the data channel is defined by the data file that is read. This is done using square brackets, for example xDamperFL["mm"]. A list of all available dimensions and units can be found in the units documentation.

Function Referenceâ

This section lists all functions that are available to be used in math expressions. Note that some functions return a vector and therefore cannot be used directly as KPI results, as the KPI results must be a scalar value. Functions that return scalar values and can be used as KPI results are highlighted in blue text.

Absâ

Abs(DoubleChannel)Returns a channel containing the absolute value for each point of the input.Abs(DoubleChannel[])Returns an array of channels containing the absolute value for each data point.Abs(double)Returns the absolute value of the input.
Abs(DoubleChannel vector)â

Returns a channel containing the absolute value for each point of the input.

Parameters

DoubleChannel vector A channel to take the absolute values of.

Returns

DoubleChannel A channel of positive decimals.

Examples

 Abs(Steering) = {0,0,0,15,17,20,12,0,0,0...}

Abs(DoubleChannel[] vectors)â

Returns an array of channels containing the absolute value for each data point.

Parameters

DoubleChannel[] vectors An array of channel to take the absolute values of.

Returns

DoubleChannel[] An array of channels containing only positive decimals.

Abs(double value)â

Returns the absolute value of the input.

Parameters

double value An array of positive decimals.

Returns

double A positive decimal.

Examples

Abs(-3) = 3

ACosâ

ACos(DoubleChannel)Returns a channel containing the arccosine of all the items in the original channel.ACos(DoubleChannel[])Returns an array of channels containing the arccosine of all the items in the original channels.ACos(double)Returns the angle whose cosine is the specified value.
ACos(DoubleChannel vector)â

Returns a channel containing the arccosine of all the items in the original channel.

Parameters

DoubleChannel vector A channel of numbers with values greater than or equal to -1, but less than or equal to 1.

Returns

DoubleChannel A channel of angles, measured in radians, such that each value Î¸ obeys 0 â¤ Î¸ â¤ Ï.

Examples

ACos(Steering)

ACos(DoubleChannel[] vectors)â

Returns an array of channels containing the arccosine of all the items in the original channels.

Parameters

DoubleChannel[] vectors An array of channels with values greater than or equal to -1, but less than or equal to 1.

Returns

DoubleChannel[] A list of channels containing values measured in radians, such that each value Î¸ obeys 0 â¤ Î¸ â¤ Ï.

ACos(double value)â

Returns the angle whose cosine is the specified value.

Parameters

double value A number representing a cosine, must be greater than or equal to -1, but less than or equal to 1.

Returns

double Returns the angle whose cosine is the specified number.

Examples

ACos(1)=0

ASinâ

ASin(DoubleChannel)Returns a channel containing the arcsine of all the items in the original channel.ASin(DoubleChannel[])Returns an array of channels containing the arcsine of all the items in the original channels.ASin(double)Returns the angle whose sine is the specified number.
ASin(DoubleChannel vector)â

Returns a channel containing the arcsine of all the items in the original channel.

Parameters

DoubleChannel vector A channel of numbers with values greater than or equal to -1, but less than or equal to 1.

Returns

DoubleChannel A channel of angles, measured in radians, such that each value Î¸ obeys -Ï/2 â¤ Î¸ â¤ Ï/2.

Examples

ASin(Steering)

ASin(DoubleChannel[] vectors)â

Returns an array of channels containing the arcsine of all the items in the original channels.

Parameters

DoubleChannel[] vectors An array of channels with values greater than or equal to -1, but less than or equal to 1.

Returns

DoubleChannel[] A list of channels containing values measured in radians, such that each value Î¸ obeys -Ï/2 â¤ Î¸ â¤ Ï/2.

ASin(double value)â

Returns the angle whose sine is the specified number.

Parameters

double value A number representing a sine, must be greater than or equal to -1, but less than or equal to 1.

Returns

double An angle, Î¸, measured in radians, such that -Ï/2 â¤ Î¸ â¤ Ï/2.

Examples

ASin(0)=0

ATanâ

ATan(DoubleChannel)Returns a channel containing the arctangent of all the items in the original channel.ATan(DoubleChannel[])Returns an array of channels containing the arctangent of all the items in the original channels.ATan(double)Returns the angle whose tangent is the specified number.
ATan(DoubleChannel vector)â

Returns a channel containing the arctangent of all the items in the original channel.

Parameters

DoubleChannel vector A channel of numbers.

Returns

DoubleChannel A channel of angles, measured in radians, such that each value Î¸ obeys -Ï/2 â¤ Î¸ â¤ Ï/2.

Examples

ATan(Steering)

ATan(DoubleChannel[] vectors)â

Returns an array of channels containing the arctangent of all the items in the original channels.

Parameters

DoubleChannel[] vectors An array of channels.

Returns

DoubleChannel[] A list of channels containing values measured in radians, such that each value Î¸ obeys -Ï/2 â¤ Î¸ â¤ Ï/2.

ATan(double value)â

Returns the angle whose tangent is the specified number.

Parameters

double value A number representing a tangent.

Returns

double An angle, Î¸, measured in radians, such that -Ï/2 â¤ Î¸ â¤ Ï/2.

Examples

ATan(0)=0

AverageAllâ

AverageAll(DoubleChannel)Returns a single value that is the average of all values in the channel.AverageAll(DoubleChannel[])Returns a single value that is the average of all values in all channels.AverageAll(double)Returns the value passed.AverageAll(double[])Returns a single value that is the average of all values given.
AverageAll(DoubleChannel vector)â

Returns a single value that is the average of all values in the channel.

Parameters

DoubleChannel vector A channel of numbers.

Returns

double A scalar decimal representing the average of all values in all channels passed.

Examples

AverageAll(vCornerMin)

AverageAll(DoubleChannel[] vectors)â

Returns a single value that is the average of all values in all channels.

Parameters

DoubleChannel[] vectors An array of one or more channels.

Returns

double An array of numbers

AverageAll(double value)â

Returns the value passed.

Parameters

double value A number

Returns

double A scalar decimal representing the average of all values passed.

AverageAll(double[] values)â

Returns a single value that is the average of all values given.

Parameters

double[] values An array of one or more numbers.

Returns

double An array of numbers

Examples

AverageAll({ 5, 6, 7, 8 }) = 6.5

Avgâ

Avg(DoubleChannel)Returns the mean value from the entire channel.Avg(DoubleChannel[])An array containing the average value of each channel given.Avg(DoubleChannel, DoubleChannel)Returns a channel containing the avg point by point of two channels.Avg(DoubleChannel[], DoubleChannel[])Returns an array of the same length as each input array of channels containing the element-wise average of the two arrays of channels zippedAvg(double, double)The average value of all values and arrays given.Avg(double[], double[])The average value of all values and arrays given.
Avg(DoubleChannel vector)â

Returns the mean value from the entire channel.

Parameters

DoubleChannel vector A double channel.

Returns

double The average value of the input channel.

Examples

Avg(FLWheelSpeed) = 175 // Mean value of the FLWheelSpeed over the lap

Avg(DoubleChannel[] vectors)â

An array containing the average value of each channel given.

Parameters

DoubleChannel[] vectors An array of channels.

Returns

double[] An array containing the average value of each channel given.

Examples

Avg({ FLWheelSpeed, FRWheelSpeed }) = { 175, 176 } // The mean value of each front wheel speed over the lap

Avg(DoubleChannel vector, DoubleChannel vector1)â

Returns a channel containing the avg point by point of two channels.

Parameters

DoubleChannel vector A double channel.

DoubleChannel vector1 A double channel.

Returns

DoubleChannel A channel of the element-wise average of the two input channels.

Examples

Avg(FLWheelSpeed, FRWheelSpeed) // Returns a channel with the average front wheel speed

Avg(DoubleChannel[] vectors, DoubleChannel[] vectors1)â

Returns an array of the same length as each input array of channels containing the element-wise average of the two arrays of channels zipped

Parameters

DoubleChannel[] vectors An array of channels.

DoubleChannel[] vectors1 An array of channels of the same length as the first parameter.

Returns

DoubleChannel[] An array of the same length as each input array of channels.

Examples

Avg({ FLWheelSpeed, RLWheelSpeed }, { FRWheelSpeed, RRWheelSpeed }) // Returns { AvgFrontWheelSpeed, AvgRearWheelSpeed }

Avg(double value, double value1)â

The average value of all values and arrays given.

Parameters

double value A number

double value1 A number

Returns

double The average value of all values and arrays given.

Examples

Avg(5,6) = 5.5

Avg(double[] values, double[] values1)â

The average value of all values and arrays given.

Parameters

double[] values An array of numbers

double[] values1 An array of numbers

Returns

double A number

AvgChannelâ

AvgChannel(DoubleChannel)Returns a channel populated with the average value from the channel.AvgChannel(DoubleChannel[])Returns an array of channels populated with the average values from the channels.AvgChannel(DoubleChannel, BooleanChannel)Returns a channel populated with the average value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed.AvgChannel(DoubleChannel[], BooleanChannel[])Returns an array of channels populated with the average values from the channels, the condition parameter allows a boolean channel to be used to control when the calculation is performed.AvgChannel(DoubleChannel, BooleanChannel, BooleanChannel)Returns a channel populated with the average value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed, and the reset parameter can be used to reset the calculation.AvgChannel(DoubleChannel[], BooleanChannel[], BooleanChannel[])Returns an array of channels populated with the average values from the channels, the condition parameter allows a boolean channel to be used to control when the calculation is performed, and the reset parameter can be used to reset the calculation.
AvgChannel(DoubleChannel input)â

Returns a channel populated with the average value from the channel.

Parameters

DoubleChannel input A double channel.

Returns

DoubleChannel A channel populated with the average value from the channel.

Examples

AvgChannel(vGps)

AvgChannel(DoubleChannel[] inputs)â

Returns an array of channels populated with the average values from the channels.

Parameters

DoubleChannel[] inputs An array of channels.

Returns

DoubleChannel[] An array of channels of the same length as input.

AvgChannel(DoubleChannel input, BooleanChannel condition)â

Returns a channel populated with the average value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed.

Parameters

DoubleChannel input A double channel.

BooleanChannel condition The channel that determines what values should be considered from input.

Returns

DoubleChannel A channel populated with the average value from the channel.

Examples

AvgChannel(vGps, HighSpeedCornerGate)

AvgChannel(DoubleChannel[] inputs, BooleanChannel[] conditions)â

Returns an array of channels populated with the average values from the channels, the condition parameter allows a boolean channel to be used to control when the calculation is performed.

Parameters

DoubleChannel[] inputs An array of channels.

BooleanChannel[] conditions An array of channels, of the same length as input that determines what values should be considered from input.

Returns

DoubleChannel[] An array of channels of the same length as input.

AvgChannel(DoubleChannel input, BooleanChannel condition, BooleanChannel reset)â

Returns a channel populated with the average value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed, and the reset parameter can be used to reset the calculation.

Parameters

DoubleChannel input A double channel.

BooleanChannel condition The channel that determines what values should be considered from input.

BooleanChannel reset A boolean channel that when a true value is encountered, resets the computation.

Returns

DoubleChannel A channel populated with the average value from the channel.

Examples

AvgChannel(vGps, HighSpeedCornerGate, StartEndHighSpeedCornerGate)

AvgChannel(DoubleChannel[] inputs, BooleanChannel[] conditions, BooleanChannel[] resets)â

Returns an array of channels populated with the average values from the channels, the condition parameter allows a boolean channel to be used to control when the calculation is performed, and the reset parameter can be used to reset the calculation.

Parameters

DoubleChannel[] inputs An array of channels.

BooleanChannel[] conditions An array of channels, of the same length as input that determines what values should be considered from input.

BooleanChannel[] resets An array of boolean channels that, when a true value is encountered, resets the computation.

Returns

DoubleChannel[] An array of channels of the same length as input.

BitDecodeâ

BitDecode(double, double)Extracts the value of the bit defined by the zero-based index
For example:
BitDecode(170, 3) = 1
index: 7 6 5 4 3 2 1 0
value: 1 0 1 0 1 0 1 0BitDecode(double, double, double)Extracts the value of the bits defined by the zero-based index and length
For example:
BitDecode(170, 3, 3) = 5 (binary 101)
index: 7 6 5 4 3 2 1 0
value: 1 0 1 0 1 0 1 0BitDecode(DoubleChannel, double)Extracts the value of the bit defined by the zero-based index from each value in the input channel and returns a new channel of bits.BitDecode(DoubleChannel[], double)Extracts the value of the bit defined by the zero-based index from each value in each input channel and returns an array of channels of the same length as the input.BitDecode(DoubleChannel, double, double)Extracts the value of the bits defined by the zero-based index and lengthBitDecode(DoubleChannel[], double, double)Extracts the value of the bits defined by the zero-based index and length
BitDecode(double value, double index)â

Extracts the value of the bit defined by the zero-based index
For example:
BitDecode(170, 3) = 1
index: 7 6 5 4 3 2 1 0
value: 1 0 1 0 1 0 1 0

Parameters

double value A double

double index The zero-based index of the bit to extract.

Returns

double The value of a specific bit defined by index

Examples

BitDecode(170, 2) = 0 // binary representation of 170 is 10101010 and the bit at index 2 (3rd bit from the right) is 0

BitDecode(double value, double index, double length)â

Extracts the value of the bits defined by the zero-based index and length
For example:
BitDecode(170, 3, 3) = 5 (binary 101)
index: 7 6 5 4 3 2 1 0
value: 1 0 1 0 1 0 1 0

Parameters

double value The number of bits to take, moving left from the indexed bit

double index The zero-indexed first bit to take.

double length The number of bits to take, starting at the indexed bit

Returns

double A decimal representation of the bits extracted from the input number.

Examples

BitDecode(170, 3, 3) = 5 // (binary representation of 170 is 10101010 and the bits at index 2 and 3 (3rd and 4th from the right) are 1 and 0. Binary 10 equals decimal 2)

BitDecode(DoubleChannel vector, double index)â

Extracts the value of the bit defined by the zero-based index from each value in the input channel and returns a new channel of bits.

Parameters

DoubleChannel vector A channel

double index The zero-based index of the bit to extract.

Returns

DoubleChannel A channel consisting of values of 0 and 1.

Examples

BitDecode(SwitchPanelButtonStates, 2) -> extracts the bit at index 2 (3rd bit from the right) of the channel SwitchPanelButtonStates

BitDecode(DoubleChannel[] vectors, double index)â

Extracts the value of the bit defined by the zero-based index from each value in each input channel and returns an array of channels of the same length as the input.

Parameters

DoubleChannel[] vectors An array of channels

double index The zero-based index of the bit to extract.

Returns

DoubleChannel[] An array of channels consisting of values of 0 and 1.

BitDecode(DoubleChannel vector, double index, double length)â

Extracts the value of the bits defined by the zero-based index and length

Parameters

DoubleChannel vector The the channel to take from.

double index The zero-based index of the first bit to take

double length The number of bits to take, moving left from the indexed bit

Returns

DoubleChannel A channel of the selected bits from the input channel in decimal representation.

Examples

BitDecode(SwitchPanelButtonStates, 2, 2) -> extracts the value of bits at index 2 and 3 (3rd and 4th from the right) of the channel SwitchPanelButtonStates

BitDecode(DoubleChannel[] vectors, double index, double length)â

Extracts the value of the bits defined by the zero-based index and length

Parameters

DoubleChannel[] vectors An array of channels to take from.

double index The zero-based index of the first bit to take

double length The number of bits to take, moving left from the indexed bit

Returns

DoubleChannel[] An array of channels containing the selected bits from the input channels.

Ceilingâ

Ceiling(DoubleChannel)Returns a channel containing each value in the input mapped to the smallest integer value that is greater than or equal to it.Ceiling(DoubleChannel[])Returns an array of channels containing each value in the input mapped to the smallest integer value that is greater than or equal to it.Ceiling(double)Returns the smallest integer value that is greater than or equal to the specified double-precision floating-point number.
Ceiling(DoubleChannel vector)â

Returns a channel containing each value in the input mapped to the smallest integer value that is greater than or equal to it.

Parameters

DoubleChannel vector A channel

Returns

DoubleChannel A channel of integers.

Examples

Ceiling(rpm / 2) -> each value divided by 2 rounded up to the nearest integer in the rpm channel

Ceiling(DoubleChannel[] vectors)â

Returns an array of channels containing each value in the input mapped to the smallest integer value that is greater than or equal to it.

Parameters

DoubleChannel[] vectors An array of channels

Returns

DoubleChannel[] An array of integer channels.

Ceiling(double value)â

Returns the smallest integer value that is greater than or equal to the specified double-precision floating-point number.

Parameters

double value A double

Returns

double The largest integer value less than or equal to the specified number.

Examples

Ceiling(3 / 2) = 2

Changeâ

Change(DoubleChannel)Returns the difference between the last value of the channel and the start value of a channel.Change(DoubleChannel[])Returns the difference between the last value of the channel and the start value of a channel for each channel in the input.
Change(DoubleChannel vector)â

Returns the difference between the last value of the channel and the start value of a channel.

Parameters

DoubleChannel vector A channel.

Returns

double A channel of the same length as the input.

Examples

Change(FuelLevel)

Change(DoubleChannel[] vectors)â

Returns the difference between the last value of the channel and the start value of a channel for each channel in the input.

Parameters

DoubleChannel[] vectors An array of channels containing numerical data

Returns

double[] An array of channels of the same length as the input.

Examples

Change({ FuelLevel, OilTemp })

Chooseâ

Choose(bool, object, object)Returns a channel with trueResult if the condition is true, otherwise returns falseResult.
Choose(bool condition, object trueResult, object falseResult)â

Returns a channel with trueResult if the condition is true, otherwise returns falseResult.

Parameters

bool condition A boolean condition to evaluate.

object trueResult The value to return if condition evalutes to true.

object falseResult The value to return if condition evalutes to false.

Returns

object Either trueResult or falseResult.

Examples

Choose(BrakePressure > 5,BrakePressure, Invalid())

Cosâ

Cos(DoubleChannel)Returns a channel containing the cosine of all the items in the original channel.Cos(DoubleChannel[])Returns an array of channels containing the cosine of all the items in the original channels.Cos(double)Returns the cosine of the value.
Cos(DoubleChannel vector)â

Returns a channel containing the cosine of all the items in the original channel.

Parameters

DoubleChannel vector The channel to take the cosine of.

Returns

DoubleChannel A channel containing the cosine of each individual value.

Examples

Cos(Steering)

Cos(DoubleChannel[] vectors)â

Returns an array of channels containing the cosine of all the items in the original channels.

Parameters

DoubleChannel[] vectors An array of channels containing numerical data

Returns

DoubleChannel[] An array of channels of the same dimension as the input.

Cos(double value)â

Returns the cosine of the value.

Parameters

double value The number to take the cosine of.

Returns

double The cosine.

Examples

Cos(0)=1

Countâ

Count(DoubleChannel)Returns the number of points in the channel.Count(DoubleChannel[])Returns an array containing the number of points in each channel given.Count(BooleanChannel)Returns the number of points in the channel.Count(BooleanChannel[])Returns an array containing the number of points in each channel given.
Count(DoubleChannel vector)â

Returns the number of points in the channel.

Parameters

DoubleChannel vector A channel.

Returns

double A single integer.

Examples

Count(Choose(ThrottlePos>90,1,Invalid())) = 890

Count(DoubleChannel[] vectors)â

Returns an array containing the number of points in each channel given.

Parameters

DoubleChannel[] vectors An array of channels containing numerical data

Returns

double[] An array of integers of the same length as the input.

Examples

Count(ThrottlePos, BrakePressure)

Count(BooleanChannel vector)â

Returns the number of points in the channel.

Parameters

BooleanChannel vector A channel.

Returns

double A single integer.

Count(BooleanChannel[] vectors)â

Returns an array containing the number of points in each channel given.

Parameters

BooleanChannel[] vectors An array of channels containing boolean data

Returns

double[] An array of integers of the same length as the input.

CountAllâ

CountAll(DoubleChannel)Returns a single value that is the count of all elements.CountAll(DoubleChannel[])Returns a single value that is the count of all elements in all arrays and channels given.CountAll(double)Returns a single value that is the count of all elements.CountAll(double[])Returns a single value that is the count of all elements in all arrays and channels given.
CountAll(DoubleChannel vector)â

Returns a single value that is the count of all elements.

Parameters

DoubleChannel vector A channel

Returns

double An integer value of the total number elements in the channel given.

Examples

CountAll(vCornerMin)

CountAll(DoubleChannel[] vectors)â

Returns a single value that is the count of all elements in all arrays and channels given.

Parameters

DoubleChannel[] vectors An array of channels containing numerical data

Returns

double An integer value of the total number elements in the channels given.

CountAll(double value)â

Returns a single value that is the count of all elements.

Parameters

double value A single value.

Returns

double An integer

CountAll(double[] values)â

Returns a single value that is the count of all elements in all arrays and channels given.

Parameters

double[] values An array of values to count.

Returns

double An integer

Derivativeâ

Derivative(DoubleChannel)Returns a channel of the derivative for each point of the channel. A two-point forward method is used.Derivative(DoubleChannel[])Returns an array of channels containing the derivatives for each point of the inputs. A two-point forward method is used.
Derivative(DoubleChannel vector)â

Returns a channel of the derivative for each point of the channel. A two-point forward method is used.

Parameters

DoubleChannel vector The channel to take the derivative of.

Returns

DoubleChannel A channel

Examples

Derivative(Speed)

Derivative(DoubleChannel[] vectors)â

Returns an array of channels containing the derivatives for each point of the inputs. A two-point forward method is used.

Parameters

DoubleChannel[] vectors An array of channels to take the derivative of.

Returns

DoubleChannel[] An array of channels

DistanceFromGpsCoordinatesâ

DistanceFromGpsCoordinates(DoubleChannel, DoubleChannel, double, double)Returns a channel of distance (meters) from the vehicle GPS position to a target coordinate at each sample point. The input vectors are: Lat-Coordinates, Long-Coordinates. The input values are: Target-Lat, Target-Long.DistanceFromGpsCoordinates(DoubleChannel, DoubleChannel, double[], double[])Returns an array of distance channels (meters) from the vehicle GPS position to each target coordinate at every sample point.
DistanceFromGpsCoordinates(DoubleChannel gpsLatChannel, DoubleChannel gpsLongChannel, double gpsLatCoordinate, double gpsLongCoordinate)â

Returns a channel of distance (meters) from the vehicle GPS position to a target coordinate at each sample point. The input vectors are: Lat-Coordinates, Long-Coordinates. The input values are: Target-Lat, Target-Long.

Parameters

DoubleChannel gpsLatChannel A double channel of GPS latitude values.

DoubleChannel gpsLongChannel A double channel of GPS longitude values.

double gpsLatCoordinate Target latitude coordinate (degrees).

double gpsLongCoordinate Target longitude coordinate (degrees).

Returns

DoubleChannel A channel of distances in meters from the vehicle to the target coordinate.

Examples

DistanceFromGpsCoordinates(GPS Latitude, GPS Longitude, 52.0786, -1.0169)

DistanceFromGpsCoordinates(DoubleChannel gpsLatChannel, DoubleChannel gpsLongChannel, double[] gpsLatCoordinates, double[] gpsLongCoordinates)â

Returns an array of distance channels (meters) from the vehicle GPS position to each target coordinate at every sample point.

Parameters

DoubleChannel gpsLatChannel A double channel of GPS latitude values.

DoubleChannel gpsLongChannel A double channel of GPS longitude values.

double[] gpsLatCoordinates Array of target latitude coordinates (degrees).

double[] gpsLongCoordinates Array of target longitude coordinates (degrees).

Returns

DoubleChannel[] An array of distance channels in meters, one per target coordinate pair.

DistanceGateSectorâ

DistanceGateSector(DoubleChannel, double, double)Returns time spent between start- and end-distance. The input vector is: Distance. The input values are: Start Distance, End Distance. To start from the beginning of the lap, use null, 1/0, or Invalid() for Start Distance. To capture to the end of the lap, use null, 1/0, or Invalid() for End Distance. Returns null if a specified end-distance gate is not reached within the lap.DistanceGateSector(DoubleChannel, double[], double[])Returns an array of the time spent between each set of start- and end-distances.DistanceGateSector(DoubleChannel, DoubleChannel, double, double)Returns values of "OutputChannel (i.e. Vector2)" between start- and end-distance, otherwise returns null. The input vectors are: Distance and the Output channel. The input values are: Start Distance, End Distance. To start from the beginning of the lap, use null, 1/0, or Invalid() for Start Distance. To capture to the end of the lap, use null, 1/0, or Invalid() for End Distance.DistanceGateSector(DoubleChannel, DoubleChannel, double[], double[])Returns an array of the same length as the number of distance groupings, containing values of outputChannel between the start- and end-distances
DistanceGateSector(DoubleChannel distanceChannel, double startDistance, double endDistance)â

Returns time spent between start- and end-distance. The input vector is: Distance. The input values are: Start Distance, End Distance. To start from the beginning of the lap, use null, 1/0, or Invalid() for Start Distance. To capture to the end of the lap, use null, 1/0, or Invalid() for End Distance. Returns null if a specified end-distance gate is not reached within the lap.

Parameters

DoubleChannel distanceChannel A double channel containing distance values.

double startDistance A number, start distance in the distance channel's unit. Use null or 0 to start from the beginning of the lap.

double endDistance A number, end distance in the distance channel's unit. Use null to capture to the end of the lap.

Returns

double A double, time spent (seconds). Returns null if the end-distance gate is not reached.

Examples

DistanceGateSector(Lap Distance, 2000, 2500)
DistanceGateSector(Lap Distance, null, 2500) // from the beginning of the lap to 2500m
DistanceGateSector(Lap Distance, 2000, null) // from 2000m to the end of the lap

DistanceGateSector(DoubleChannel distanceChannel, double[] startDistances, double[] endDistances)â

Returns an array of the time spent between each set of start- and end-distances.

Parameters

DoubleChannel distanceChannel A double channel containing distance values.

double[] startDistances Array of numbers, start distances.

double[] endDistances Array of numbers, end distances.

Returns

double[] An array of doubles, time spent (seconds).

DistanceGateSector(DoubleChannel distanceChannel, DoubleChannel outputChannel, double startDistance, double endDistance)â

Returns values of "OutputChannel (i.e. Vector2)" between start- and end-distance, otherwise returns null. The input vectors are: Distance and the Output channel. The input values are: Start Distance, End Distance. To start from the beginning of the lap, use null, 1/0, or Invalid() for Start Distance. To capture to the end of the lap, use null, 1/0, or Invalid() for End Distance.

Parameters

DoubleChannel distanceChannel A double channel containing distance values.

DoubleChannel outputChannel A double channel.

double startDistance A number, start distance in the distance channel's unit. Use null or 0 to start from the beginning of the lap.

double endDistance A number, end distance in the distance channel's unit. Use null to capture to the end of the lap.

Returns

DoubleChannel Values of outputChannel between the start- and end-distances

Examples

DistanceGateSector(Lap Distance, aSteer, 2000, 2500)
DistanceGateSector(Lap Distance, aSteer, null, 2500) // from the beginning of the lap to 2500m
DistanceGateSector(Lap Distance, aSteer, 2000, null) // from 2000m to the end of the lap

DistanceGateSector(DoubleChannel distanceChannel, DoubleChannel outputChannel, double[] startDistances, double[] endDistances)â

Returns an array of the same length as the number of distance groupings, containing values of outputChannel between the start- and end-distances

Parameters

DoubleChannel distanceChannel A double channel containing distance values.

DoubleChannel outputChannel A double channel.

double[] startDistances Array of numbers, start distances.

double[] endDistances Array of numbers, end distances.

Returns

DoubleChannel[] An array of the same length as the number of distance groupings, containing values of outputChannel between the start- and end-distances

EdgeDelayFallâ

EdgeDelayFall(BooleanChannel, double)Offsets edges by timeEdgeDelayFall(BooleanChannel[], double)Offsets the edges of each given channel by the given time
EdgeDelayFall(BooleanChannel vector, double value)â

Offsets edges by time

Parameters

BooleanChannel vector Channel to delay.

double value Amount of time to delay by (seconds).

Returns

BooleanChannel A boolean channel with the falling edge delayed by the specified amount.

Examples

EdgeDelayFall(Throttle > 90, 1.0)

EdgeDelayFall(BooleanChannel[] vectors, double value)â

Offsets the edges of each given channel by the given time

Parameters

BooleanChannel[] vectors An array of channels to delay.

double value Amount of time to delay by (seconds).

Returns

BooleanChannel[] An array of boolean channels with the falling edge delayed by the specified amount.

EdgeDelayRiseâ

EdgeDelayRise(BooleanChannel, double)Offsets edges by timeEdgeDelayRise(BooleanChannel[], double)Offsets the edges of each given channel by the given time
EdgeDelayRise(BooleanChannel vector, double value)â

Offsets edges by time

Parameters

BooleanChannel vector Channel to delay.

double value Amount of time to delay by (seconds).

Returns

BooleanChannel A boolean channel with the rising edge delayed by the specified amount.

Examples

EdgeDelayRise(Throttle > 90, 1.0)

EdgeDelayRise(BooleanChannel[] vectors, double value)â

Offsets the edges of each given channel by the given time

Parameters

BooleanChannel[] vectors An array of channels to delay.

double value Amount of time to delay by (seconds).

Returns

BooleanChannel[] An array of boolean channels with the rising edge delayed by the specified amount.

Expâ

Exp(DoubleChannel)Returns a channel containing the EXP of all the items in the original channel, where EXP returns e raised to the nth power, where e = 2.71828183Exp(DoubleChannel[])Returns an array of channels containing the EXP of all the items in the original channels, where EXP returns e raised to the nth power, where e = 2.71828183Exp(double)EXP returns e raised to the nth power, where e = 2.71828183
Exp(DoubleChannel vector)â

Returns a channel containing the EXP of all the items in the original channel, where EXP returns e raised to the nth power, where e = 2.71828183

Parameters

DoubleChannel vector A channel

Returns

DoubleChannel A channel of the same size of the input.

Examples

Exp(Steering)

Exp(DoubleChannel[] vectors)â

Returns an array of channels containing the EXP of all the items in the original channels, where EXP returns e raised to the nth power, where e = 2.71828183

Parameters

DoubleChannel[] vectors An array of channels containing numerical data

Returns

DoubleChannel[] An array of channels of the same dimension of the input.

Exp(double n)â

EXP returns e raised to the nth power, where e = 2.71828183

Parameters

double n A double

Returns

double e raised to the nth power

Examples

Exp(4) = 54.59815

FallingEdgeâ

FallingEdge(DoubleChannel)Returns a channel of 1 and 0. 1 means that the previous item in the channel was larger than the current one.FallingEdge(DoubleChannel[])Returns an array of channels matching the dimension of the input array of channels containing values of either 1 or 0. 1 means that the previous item in the channel was larger than the current one.
FallingEdge(DoubleChannel vector)â

Returns a channel of 1 and 0. 1 means that the previous item in the channel was larger than the current one.

Parameters

DoubleChannel vector A channel

Returns

DoubleChannel A channel of the same length as the input with each value replaced with either an integer 0 or 1.

Examples

FallingEdge(BrakePresF)

FallingEdge(DoubleChannel[] vectors)â

Returns an array of channels matching the dimension of the input array of channels containing values of either 1 or 0. 1 means that the previous item in the channel was larger than the current one.

Parameters

DoubleChannel[] vectors An array of channels containing numerical data

Returns

DoubleChannel[] An array of channels of the same dimension as the input with each value replaced with either an integer 0 or 1.

Examples

FallingEdge({ BrakePresF, BrakePresR })

FilterLpâ

FilterLp(DoubleChannel, double)Applies a low pass (RC) filter to the input channel.FilterLp(DoubleChannel[], double)Applies a low pass (RC) filter to each input channel.
FilterLp(DoubleChannel vector, double value)â

Applies a low pass (RC) filter to the input channel.

Parameters

DoubleChannel vector A double channel.

double value The value to filter on.

Returns

DoubleChannel The filtered double channel.

Examples

FilterLp(rpm, 2)

FilterLp(DoubleChannel[] vectors, double value)â

Applies a low pass (RC) filter to each input channel.

Parameters

DoubleChannel[] vectors An array of channels.

double value The value to filter on.

Returns

DoubleChannel[] An array of filtered channels.

FlipFlopâ

FlipFlop(BooleanChannel, BooleanChannel)Result becomes true when vector changes to true and false when vector1 changes to falseFlipFlop(BooleanChannel[], BooleanChannel[])Returns an array of boolean channels based on the two input arrays zipped according to the non-array overload.
FlipFlop(BooleanChannel vector, BooleanChannel vector1)â

Result becomes true when vector changes to true and false when vector1 changes to false

Parameters

BooleanChannel vector A boolean channel.

BooleanChannel vector1 A boolean channel.

Returns

BooleanChannel A boolean channel.

Examples

FlipFlop(Throttle Position > 90, Throttle Position < 10)

FlipFlop(BooleanChannel[] vectors, BooleanChannel[] vectors1)â

Returns an array of boolean channels based on the two input arrays zipped according to the non-array overload.

Parameters

BooleanChannel[] vectors An array of channels containing boolean data

BooleanChannel[] vectors1 An array of channels containing boolean data

Returns

BooleanChannel[] An array of boolean channels.

Floorâ

Floor(DoubleChannel)Returns a channel containing each value in the input mapped to the largest integer value that is less than or equal to it.Floor(DoubleChannel[])Returns an array of channels containing each value in the input mapped to the largest integer value that is less than or equal to it.Floor(double)Returns the largest integer value that is less than or equal to the specified double-precision floating-point number.
Floor(DoubleChannel vector)â

Returns a channel containing each value in the input mapped to the largest integer value that is less than or equal to it.

Parameters

DoubleChannel vector A double channel.

Returns

DoubleChannel A channel of integers.

Examples

Floor(rpm / 2) -> each value divided by 2 rounded down to the nearest integer in the rpm channel

Floor(DoubleChannel[] vectors)â

Returns an array of channels containing each value in the input mapped to the largest integer value that is less than or equal to it.

Parameters

DoubleChannel[] vectors An array of channels containing numerical data

Returns

DoubleChannel[] An array of integer channels.

Floor(double value)â

Returns the largest integer value that is less than or equal to the specified double-precision floating-point number.

Parameters

double value A double.

Returns

double The largest integer value less than or equal to the specified number.

Examples

Floor(3 / 2) = 1

GpsGateSectorâ

GpsGateSector(DoubleChannel, DoubleChannel, double, double, double, double)Returns time spent between start- and end-coordinates. The input vectors are: Lat-Coordinates, Long-Coordinates. The input values are: Start-Lat, Start-Long, End-Lat, End-LongGpsGateSector(DoubleChannel, DoubleChannel, double[], double[], double[], double[])Returns an array of the time spent between each set of start- and end-coordinates.GpsGateSector(DoubleChannel, DoubleChannel, DoubleChannel, double, double, double, double)Returns values of "OutputChannel (i.e. Vector3)" between start- and end-coordinates, otherwise returns null. The input vectors are: Lat-Coordinates, Long-Coordinates and the Outputchannel. The input values are: Start-Lat, Start-Long, End-Lat, End-LongGpsGateSector(DoubleChannel, DoubleChannel, DoubleChannel, double[], double[], double[], double[])Returns an array of the same length as the number of coordinate groupings, containing values of outputChannel between the start- and end-coordinates
GpsGateSector(DoubleChannel gpsLatChannel, DoubleChannel gpsLongChannel, double startLat, double startLong, double endLat, double endLong)â

Returns time spent between start- and end-coordinates. The input vectors are: Lat-Coordinates, Long-Coordinates. The input values are: Start-Lat, Start-Long, End-Lat, End-Long

Parameters

DoubleChannel gpsLatChannel A double channel.

DoubleChannel gpsLongChannel A double channel.

double startLat A number, degrees of latitude

double startLong A number, degrees of longitude.

double endLat A number, degrees of latitude

double endLong A number, degrees of longitude.

Returns

double A double, time spent (seconds).

Examples

GpsGateSector(GPS Latitude, GPS Longitude, 50.4457268, 5.9636154, 50.4461757, 5.9640969)

GpsGateSector(DoubleChannel gpsLatChannel, DoubleChannel gpsLongChannel, double[] startLats, double[] startLongs, double[] endLats, double[] endLongs)â

Returns an array of the time spent between each set of start- and end-coordinates.

Parameters

DoubleChannel gpsLatChannel A double channel.

DoubleChannel gpsLongChannel A double channel.

double[] startLats Array of numbers, degrees of latitude.

double[] startLongs Array of numbers, degrees of longitude.

double[] endLats Array of numbers, degrees of latitude.

double[] endLongs Array of numbers, degrees of longitude.

Returns

double[] An array of doubles, time spent (seconds).

GpsGateSector(DoubleChannel gpsLatChannel, DoubleChannel gpsLongChannel, DoubleChannel outputChannel, double startLat, double startLong, double endLat, double endLong)â

Returns values of "OutputChannel (i.e. Vector3)" between start- and end-coordinates, otherwise returns null. The input vectors are: Lat-Coordinates, Long-Coordinates and the Outputchannel. The input values are: Start-Lat, Start-Long, End-Lat, End-Long

Parameters

DoubleChannel gpsLatChannel A double channel.

DoubleChannel gpsLongChannel A double channel.

DoubleChannel outputChannel A double channel.

double startLat A number, degrees of latitude

double startLong A number, degrees of longitude.

double endLat A number, degrees of longitude.

double endLong Degree of longitude, or list of degrees.

Returns

DoubleChannel Values of outputChannel between the start- and end-coordinates

Examples

GpsGateSector(GPS Latitude, GPS Longitude, aSteer, 50.4457268, 5.9636154, 50.4461757, 5.9640969)

GpsGateSector(DoubleChannel gpsLatChannel, DoubleChannel gpsLongChannel, DoubleChannel outputChannel, double[] startLats, double[] startLongs, double[] endLats, double[] endLongs)â

Returns an array of the same length as the number of coordinate groupings, containing values of outputChannel between the start- and end-coordinates

Parameters

DoubleChannel gpsLatChannel A double channel.

DoubleChannel gpsLongChannel A double channel.

DoubleChannel outputChannel A double channel.

double[] startLats Array of numbers, degrees of latitude.

double[] startLongs Array of numbers, degrees of longitude.

double[] endLats Array of numbers, degrees of latitude.

double[] endLongs Array of numbers, degrees of longitude.

Returns

DoubleChannel[] An array of the same length as the number of coordinate groupings, containing values of outputChannel between the start- and end-coordinates

Integrateâ

Integrate(DoubleChannel)Returns a channel of the cumulative integral from the beginning of the channel.Integrate(DoubleChannel[])Returns an array of channels populated with the average values from the channels.Integrate(DoubleChannel, BooleanChannel)Returns a channel of the cumulative integral from the beginning of the channel when the condition is trueIntegrate(DoubleChannel[], BooleanChannel[])Returns an array of channels populated with the average values from the channels, condition allows a boolean channel to be used to control when the calculation is performed.Integrate(DoubleChannel, BooleanChannel, BooleanChannel)Returns a channel of the cumulative integral from the beginning of the channel when condition is true and resets whenever reset contains a true value.Integrate(DoubleChannel[], BooleanChannel[], BooleanChannel[])Returns an array of channels populated with the average values from the channels, condition allows a boolean channel to be used to control when the calculation is performed, and reset can be used to reset the calculation.
Integrate(DoubleChannel input)â

Returns a channel of the cumulative integral from the beginning of the channel.

Parameters

DoubleChannel input A double channel.

Returns

DoubleChannel A channel of the cumulative integral from the beginning of the channel.

Examples

Integrate(Abs(LateralG))

Integrate(DoubleChannel[] inputs)â

Returns an array of channels populated with the average values from the channels.

Parameters

DoubleChannel[] inputs An array of channels containing numerical data

Returns

DoubleChannel[] An array of channels of the same length as input.

Integrate(DoubleChannel input, BooleanChannel condition)â

Returns a channel of the cumulative integral from the beginning of the channel when the condition is true

Parameters

DoubleChannel input A double channel.

BooleanChannel condition The channel that determines when the values in input should be considered.

Returns

DoubleChannel A channel of the cumulative integral from the beginning of the channel when condition is true.

Examples

Integrate(Abs(LateralG), LateralG > 0)

Integrate(DoubleChannel[] inputs, BooleanChannel[] conditions)â

Returns an array of channels populated with the average values from the channels, condition allows a boolean channel to be used to control when the calculation is performed.

Parameters

DoubleChannel[] inputs An array of channels containing numerical data

BooleanChannel[] conditions An array of channels, of the same length as input that determines what values should be considered from input.

Returns

DoubleChannel[] An array of channels of the same length as input.

Integrate(DoubleChannel input, BooleanChannel condition, BooleanChannel reset)â

Returns a channel of the cumulative integral from the beginning of the channel when condition is true and resets whenever reset contains a true value.

Parameters

DoubleChannel input A double channel.

BooleanChannel condition The channel that determines when the values in input should be considered.

BooleanChannel reset A boolean channel that when a true value is encountered, resets the computation.

Returns

DoubleChannel A channel of the cumulative integral from the beginning of the channel when condition is true. Resets when a true value is encountered in reset.

Integrate(DoubleChannel[] inputs, BooleanChannel[] conditions, BooleanChannel[] resets)â

Returns an array of channels populated with the average values from the channels, condition allows a boolean channel to be used to control when the calculation is performed, and reset can be used to reset the calculation.

Parameters

DoubleChannel[] inputs An array of channels containing numerical data

BooleanChannel[] conditions An array of channels, of the same length as input that determines what values should be considered from input.

BooleanChannel[] resets An array of boolean channels that, when a true value is encountered, resets the computation.

Returns

DoubleChannel[] An array of channels of the same length as input.

Invalidâ

Invalid()Returns a null value.
Invalid()â

Returns a null value.

Returns

object A null value.

Examples

Invalid() = null

IsNullâ

IsNull(DoubleChannel)Returns a channel of the same size as the input with each value replaced with true if the value is null and false if not.IsNull(DoubleChannel[])Returns an array of channels of the same size as the input with each value of each channel replaced with true if the value is null and false if not.IsNull(BooleanChannel)Returns a channel of the same size as the input with each value replaced with true if the value is null and false if not.IsNull(BooleanChannel[])Returns an array of channels of the same size as the input with each value of each channel replaced with true if the value is null and false if not.IsNull(double)Returns true if the value is null and false if not.IsNull(double[])Returns an array matching the length of the input with each value replaced with true if it is null and false if it is not.IsNull(bool)Returns true if the value is null and false if not.IsNull(bool[])Returns an array matching the length of the input with each value replaced with true if it is null and false if it is not.
IsNull(DoubleChannel vector)â

Returns a channel of the same size as the input with each value replaced with true if the value is null and false if not.

Parameters

DoubleChannel vector A channel

Returns

BooleanChannel A channel booleans matching the size of the input channel.

Examples

IsNull(FuelAdded)

IsNull(DoubleChannel[] vectors)â

Returns an array of channels of the same size as the input with each value of each channel replaced with true if the value is null and false if not.

Parameters

DoubleChannel[] vectors An array of channels

Returns

BooleanChannel[] An array of channels matching the length of the input array of channels.

IsNull(BooleanChannel vector)â

Returns a channel of the same size as the input with each value replaced with true if the value is null and false if not.

Parameters

BooleanChannel vector A boolean channel

Returns

BooleanChannel A channel booleans matching the size of the input channel.

Examples

IsNull(GPS_Speed)

IsNull(BooleanChannel[] vectors)â

Returns an array of channels of the same size as the input with each value of each channel replaced with true if the value is null and false if not.

Parameters

BooleanChannel[] vectors An array of boolean channels

Returns

BooleanChannel[] An array of channels matching the length of the input array of channels.

IsNull(double value)â

Returns true if the value is null and false if not.

Parameters

double value A nullable number

Returns

bool A boolean

Examples

IsNull(12) = false

IsNull(double[] values)â

Returns an array matching the length of the input with each value replaced with true if it is null and false if it is not.

Parameters

double[] values An array of nullable numbers

Returns

bool[] An array of booleans of the same length as the input.

Examples

IsNull({ 12, 0, 3 }) = { false, false, false }

IsNull(bool value)â

Returns true if the value is null and false if not.

Parameters

bool value A nullable boolean

Returns

bool A boolean

Examples

IsNull(Invalid()) = true

IsNull(bool[] values)â

Returns an array matching the length of the input with each value replaced with true if it is null and false if it is not.

Parameters

bool[] values An array of nullable booleans

Returns

bool[] An array of booleans of the same length as the input.

Examples

IsNull({ 1, 0 }) = { false, false }

Last â

Last(DoubleChannel)Returns the last value of the channel.Last(DoubleChannel[])Returns the last value of the channel.Last(BooleanChannel)Returns the last value of the boolean channel.Last(BooleanChannel[])Returns the last value of the boolean channel.
Last(DoubleChannel vector)â

Returns the last value of the channel.

Parameters

DoubleChannel vector A double channel.

Returns

double A number, the last value in the channel.

Examples

Last(Integrate(Abs(LateralG)))

Last(DoubleChannel[] vectors)â

Returns the last value of the channel.

Parameters

DoubleChannel[] vectors An array of channels containing numerical data

Returns

double[] An array of numbers, the last value of each channel given.

Last(BooleanChannel vector)â

Returns the last value of the boolean channel.

Parameters

BooleanChannel vector A boolean channel.

Returns

bool A boolean, the last value in the channel.

Last(BooleanChannel[] vectors)â

Returns the last value of the boolean channel.

Parameters

BooleanChannel[] vectors An array of channels containing boolean data

Returns

bool[] An array of booleans, the last value of each channel given.

LastChannelâ

LastChannel(DoubleChannel)Returns a channel populated with the last value from the channel.LastChannel(DoubleChannel[])Returns a channel populated with the last value from the channel.LastChannel(DoubleChannel, BooleanChannel)Returns a channel populated with the last value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed.LastChannel(DoubleChannel[], BooleanChannel[])Returns a channel populated with the last value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed.LastChannel(DoubleChannel, BooleanChannel, BooleanChannel)Returns a channel populated with the last value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed, and the reset parameter can be used to reset the calculation.LastChannel(DoubleChannel[], BooleanChannel[], BooleanChannel[])Returns a channel populated with the last value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed, and the reset parameter can be used to reset the calculation.
LastChannel(DoubleChannel input)â

Returns a channel populated with the last value from the channel.

Parameters

DoubleChannel input A double channel.

Returns

DoubleChannel A channel populated with the last value from the input channel.

Examples

LastChannel(vGps)

LastChannel(DoubleChannel[] inputs)â

Returns a channel populated with the last value from the channel.

Parameters

DoubleChannel[] inputs An array of channels containing numerical data

Returns

DoubleChannel[] An array containing the last value from each channel given.

LastChannel(DoubleChannel input, BooleanChannel condition)â

Returns a channel populated with the last value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed.

Parameters

DoubleChannel input A double channel.

BooleanChannel condition The channel that determines when the value should be taken from input.

Returns

DoubleChannel A double channel containing the value from input when the last true value in condition is encountered.

Examples

LastChannel(vGps, HighSpeedCornerGate)

LastChannel(DoubleChannel[] inputs, BooleanChannel[] conditions)â

Returns a channel populated with the last value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed.

Parameters

DoubleChannel[] inputs An array of channels containing numerical data

BooleanChannel[] conditions An array of channels, of the same length as input that determines what values should be considered from input.

Returns

DoubleChannel[] An array containing the last value from each channel given.

LastChannel(DoubleChannel input, BooleanChannel condition, BooleanChannel reset)â

Returns a channel populated with the last value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed, and the reset parameter can be used to reset the calculation.

Parameters

DoubleChannel input A double channel.

BooleanChannel condition The channel that determines when the value should be taken from input.

BooleanChannel reset A boolean channel that when a true value is encountered, resets the computation.

Returns

DoubleChannel A double channel containing the value from input when the last true value in condition is encountered. Resets when a true value is encountered in reset.

Examples

LastChannel(vGps, HighSpeedCornerGate, StartEndHighSpeedCornerGate)

LastChannel(DoubleChannel[] inputs, BooleanChannel[] conditions, BooleanChannel[] resets)â

Returns a channel populated with the last value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed, and the reset parameter can be used to reset the calculation.

Parameters

DoubleChannel[] inputs An array of channels containing numerical data

BooleanChannel[] conditions An array of channels, of the same length as input that determines what values should be considered from input.

BooleanChannel[] resets An array of boolean channels that, when a true value is encountered, resets the computation.

Returns

DoubleChannel[] An array containing the last value from each channel given.

LinCorrelâ

LinCorrel(DoubleChannel, DoubleChannel)Returns the linear correlation between the two input channels using the Pearson correlation coefficient.LinCorrel(DoubleChannel[], DoubleChannel[])Returns the linear correlation of each pair of channels in the given two arrays using the Pearson correlation coefficient.
LinCorrel(DoubleChannel vector, DoubleChannel vector1)â

Returns the linear correlation between the two input channels using the Pearson correlation coefficient.

Parameters

DoubleChannel vector A channel

DoubleChannel vector1 A channel

Returns

double The linear correlation.

Examples

LinCorrel(Lambda1,ThottlePos) = 1.12

LinCorrel(DoubleChannel[] vectors, DoubleChannel[] vectors1)â

Returns the linear correlation of each pair of channels in the given two arrays using the Pearson correlation coefficient.

Parameters

DoubleChannel[] vectors An array of channels containing numerical data

DoubleChannel[] vectors1 An array of channels containing numerical data

Returns

double[] An array of numbers, the linear correlation of each pair of channels in the given two arrays.

LinFitâ

LinFit(DoubleChannel, DoubleChannel)Returns the slope between the two input channels using the least-squares regression method.LinFit(DoubleChannel[], DoubleChannel[])Returns the slope between each pair of channels in the given two arrays using the least-squares regression method.LinFit(DoubleChannel, DoubleChannel, double)Returns a specific coefficient of the linear fit between the two input channels. Use coeffIndex 0 for slope and 1 for intercept.LinFit(DoubleChannel[], DoubleChannel[], double)Returns a specific coefficient of the linear fit for each pair of channels in the given two arrays.
LinFit(DoubleChannel vector, DoubleChannel vector1)â

Returns the slope between the two input channels using the least-squares regression method.

Parameters

DoubleChannel vector A channel

DoubleChannel vector1 A channel

Returns

double A number, the slope.

Examples

LinFit(LateralForce,RollAngle) = 0.58

LinFit(DoubleChannel[] vectors, DoubleChannel[] vectors1)â

Returns the slope between each pair of channels in the given two arrays using the least-squares regression method.

Parameters

DoubleChannel[] vectors An array of channels containing numerical data

DoubleChannel[] vectors1 An array of channels containing numerical data

Returns

double[] An array of numbers of the same length as the inputs, the slope between each pair of channels.

LinFit(DoubleChannel vector, DoubleChannel vector1, double coeffIndex)â

Returns a specific coefficient of the linear fit between the two input channels. Use coeffIndex 0 for slope and 1 for intercept.

Parameters

DoubleChannel vector A channel

DoubleChannel vector1 A channel

double coeffIndex 0 for slope, 1 for intercept

Returns

double A number, the selected coefficient (slope if 0, intercept if 1).

Examples

LinFit(LateralForce,RollAngle,1) = 0.12

LinFit(DoubleChannel[] vectors, DoubleChannel[] vectors1, double coeffIndex)â

Returns a specific coefficient of the linear fit for each pair of channels in the given two arrays.

Parameters

DoubleChannel[] vectors An array of channels containing numerical data

DoubleChannel[] vectors1 An array of channels containing numerical data

double coeffIndex 0 for slope, 1 for intercept

Returns

double[] An array of numbers, the selected coefficient for each pair of channels.

Maxâ

Max(params DoubleChannel[])Returns the largest value of the given channel.Max(params DoubleChannel[][])Returns an array of the largest values in all the given channels at each index of the input arrays.Max(params double[])Returns the largest value of all numbers given.Max(params double[][])Returns an array of the largest values at each index of the input arrays.
Max(params DoubleChannel[] vector)â

Returns the largest value of the given channel.

Parameters

params DoubleChannel[] vector The channels to evaluate.

Returns

double A decimal

Examples

Max(FLWheelSpeed, FRWheelSpeed) = 289 // Largest value of FLWheelSpeed and FRWheelSpeed over the lap

Max(params DoubleChannel[][] vectors)â

Returns an array of the largest values in all the given channels at each index of the input arrays.

Parameters

params DoubleChannel[][] vectors One or more arrays of one or more channels to compare.

Returns

double[] An array of decimals of equal length to the input array.

Examples

Max({FLWheelSpeed, RLWheelSpeed}, {FRWheelSpeed, RRWheelSpeed}) = {289, 295} // The highest speed either front wheel reached over the lap and the highest speed either rear wheel reached over the lap

Max(params double[] value)â

Returns the largest value of all numbers given.

Parameters

params double[] value The values to evaluate.

Returns

double The largest value.

Examples

Max(5,6,2) = 6

Max(params double[][] values)â

Returns an array of the largest values at each index of the input arrays.

Parameters

params double[][] values One or more arrays of numbers to compare.

Returns

double[] An array of decimals equal to the length of the longest input array.

Examples

Max({3,1}, {0,2}) = { 3, 2 }

MaxChannelâ

MaxChannel(DoubleChannel)Returns a channel populated with the maximum value from the channel.MaxChannel(DoubleChannel[])Returns an array containing the maximum value from each channel given.MaxChannel(DoubleChannel, BooleanChannel)Returns a channel populated with the maximum value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed.MaxChannel(DoubleChannel[], BooleanChannel[])An array containing the maximum value from each channel given while respecting the matching condition channel for each.MaxChannel(DoubleChannel, BooleanChannel, BooleanChannel)Returns a channel populated with the maximum value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed, and the reset parameter can be used to reset the calculation.MaxChannel(DoubleChannel[], BooleanChannel[], BooleanChannel[])An array containing the maximum value from each channel given while respecting the matching condition and reset channels for each.
MaxChannel(DoubleChannel input)â

Returns a channel populated with the maximum value from the channel.

Parameters

DoubleChannel input A double channel.

Returns

DoubleChannel A double channel containing the maximum value from input.

Examples

MaxChannel(vGps)

MaxChannel(DoubleChannel[] inputs)â

Returns an array containing the maximum value from each channel given.

Parameters

DoubleChannel[] inputs An array of channels containing numerical data

Returns

DoubleChannel[] An array containing the maximum value from each channel given.

MaxChannel(DoubleChannel input, BooleanChannel condition)â

Returns a channel populated with the maximum value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed.

Parameters

DoubleChannel input A double channel.

BooleanChannel condition The channel that determines what values should be considered from input.

Returns

DoubleChannel A double channel containing the maximum value from input.

Examples

MaxChannel(vGps, HighSpeedCornerGate)

MaxChannel(DoubleChannel[] inputs, BooleanChannel[] conditions)â

An array containing the maximum value from each channel given while respecting the matching condition channel for each.

Parameters

DoubleChannel[] inputs An array of channels containing numerical data

BooleanChannel[] conditions An array of channels, of the same length as input that determines what values should be considered from input.

Returns

DoubleChannel[] An array containing the maximum value from each channel given.

MaxChannel(DoubleChannel input, BooleanChannel condition, BooleanChannel reset)â

Returns a channel populated with the maximum value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed, and the reset parameter can be used to reset the calculation.

Parameters

DoubleChannel input A double channel.

BooleanChannel condition The channel that determines what values should be considered from input.

BooleanChannel reset A boolean channel that determines when the computation should be reset.

Returns

DoubleChannel A double channel containing the maximum value from input.

Examples

MaxChannel(vGps, HighSpeedCornerGate, StartEndHighSpeedCornerGate)

MaxChannel(DoubleChannel[] inputs, BooleanChannel[] conditions, BooleanChannel[] resets)â

An array containing the maximum value from each channel given while respecting the matching condition and reset channels for each.

Parameters

DoubleChannel[] inputs An array of channels containing numerical data

BooleanChannel[] conditions An array of channels, of the same length as input that determines what values should be considered from input.

BooleanChannel[] resets An array of boolean channels that, when a true value is encountered, resets the computation.

Returns

DoubleChannel[] An array containing the maximum value from each channel given.

Medianâ

Median(params DoubleChannel[])Returns the median value of the given channel.Median(params DoubleChannel[][])Returns an array of the median values in all the given channels at each index of the input arrays.Median(params double[])Returns the median value of all numbers given.Median(params double[][])Returns an array of the median values at each index of the input arrays.
Median(params DoubleChannel[] vector)â

Returns the median value of the given channel.

Parameters

params DoubleChannel[] vector The channels to evaluate.

Returns

double A decimal

Examples

Median(TyreTempFL) = 100

Median(params DoubleChannel[][] vectors)â

Returns an array of the median values in all the given channels at each index of the input arrays.

Parameters

params DoubleChannel[][] vectors One or more arrays of one or more channels to compare.

Returns

double[] An array of decimals of equal length to the input array.

Examples

Median({TyreTempFL, TyreTempRL}, {TyreTempFR, TyreTempRR}) = {100, 105} // The median temperature of both front wheels over the lap and the median temperature of both rear wheel over the lap

Median(params double[] value)â

Returns the median value of all numbers given.

Parameters

params double[] value The values to evaluate.

Returns

double A number representing the median of the input.

Examples

Median(5,6,2) = 5

Median(params double[][] values)â

Returns an array of the median values at each index of the input arrays.

Parameters

params double[][] values One or more arrays of numbers to compare.

Returns

double[] An array of numbers

Examples

Median({5, 1},{6, 4},{2, 5}) = {5, 4}

Minâ

Min(params DoubleChannel[])Returns the smallest value out the given channel.Min(params DoubleChannel[][])Returns an array of the smallest values in all the given channels at each index of the input arrays.Min(params double[])Returns the smallest value of all numbers given.Min(params double[][])Returns an array of the smallest values at each index of the input arrays.
Min(params DoubleChannel[] vector)â

Returns the smallest value out the given channel.

Parameters

params DoubleChannel[] vector The channels to evaluate.

Returns

double A decimal

Examples

Min(FLWheelSpeed, FRWheelSpeed) = 45 // Smallest value of FLWheelSpeed and FRWheelSpeed over the lap

Min(params DoubleChannel[][] vectors)â

Returns an array of the smallest values in all the given channels at each index of the input arrays.

Parameters

params DoubleChannel[][] vectors One or more arrays of one or more channels to compare.

Returns

double[] An array of decimals of equal length to the input array.

Examples

Min({FLWheelSpeed, RLWheelSpeed}, {FRWheelSpeed, RRWheelSpeed}) = {45, 49} // The smallest speed either front wheel reached over the lap and the smallest speed either rear wheel reached over the lap

Min(params double[] value)â

Returns the smallest value of all numbers given.

Parameters

params double[] value The values to evaluate.

Returns

double The smallest value.

Examples

Min(5,6,2) = 2

Min(params double[][] values)â

Returns an array of the smallest values at each index of the input arrays.

Parameters

params double[][] values One or more arrays of numbers to compare.

Returns

double[] An array of decimals equal to the length of the longest input array.

Examples

Min({3,1}, {0,2}) = { 0, 1 }

MinChannelâ

MinChannel(DoubleChannel)Returns a channel populated with the minimum value from the channel.MinChannel(DoubleChannel[])Returns an array containing the minimum value from each channel given.MinChannel(DoubleChannel, BooleanChannel)Returns a channel populated with the minimum value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed.MinChannel(DoubleChannel[], BooleanChannel[])An array containing the minimum value from each channel given while respecting the matching condition channel for each.MinChannel(DoubleChannel, BooleanChannel, BooleanChannel)Returns a channel populated with the minimum value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed, and the reset parameter can be used to reset the calculation.MinChannel(DoubleChannel[], BooleanChannel[], BooleanChannel[])An array containing the minimum value from each channel given while respecting the matching condition and reset channels for each.
MinChannel(DoubleChannel input)â

Returns a channel populated with the minimum value from the channel.

Parameters

DoubleChannel input A double channel.

Returns

DoubleChannel A channel populated with the minimum value from the input channel.

Examples

MinChannel(vGps,)

MinChannel(DoubleChannel[] inputs)â

Returns an array containing the minimum value from each channel given.

Parameters

DoubleChannel[] inputs An array of channels containing numerical data

Returns

DoubleChannel[] An array of channels containing the minimum value from each channel given.

MinChannel(DoubleChannel input, BooleanChannel condition)â

Returns a channel populated with the minimum value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed.

Parameters

DoubleChannel input A double channel.

BooleanChannel condition The channel that determines what values should be considered from input.

Returns

DoubleChannel A double channel containing the minimum value from input.

Examples

MinChannel(vGps, HighSpeedCornerGate)

MinChannel(DoubleChannel[] inputs, BooleanChannel[] conditions)â

An array containing the minimum value from each channel given while respecting the matching condition channel for each.

Parameters

DoubleChannel[] inputs An array of channels containing numerical data

BooleanChannel[] conditions An array of channels, of the same length as input that determines what values should be considered from input.

Returns

DoubleChannel[] An array of channels containing the minimum value from each channel given.

MinChannel(DoubleChannel input, BooleanChannel condition, BooleanChannel reset)â

Returns a channel populated with the minimum value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed, and the reset parameter can be used to reset the calculation.

Parameters

DoubleChannel input A double channel.

BooleanChannel condition A boolean channel that determines what values should be considered from input.

BooleanChannel reset A boolean channel that determines when the computation should be reset.

Returns

DoubleChannel A double channel containing the minimum value from input.

Examples

MinChannel(vGps, HighSpeedCornerGate, StartEndHighSpeedCornerGate)

MinChannel(DoubleChannel[] inputs, BooleanChannel[] conditions, BooleanChannel[] resets)â

An array containing the minimum value from each channel given while respecting the matching condition and reset channels for each.

Parameters

DoubleChannel[] inputs An array of channels containing numerical data

BooleanChannel[] conditions An array of channels, of the same length as input that determines what values should be considered from input.

BooleanChannel[] resets An array of boolean channels that, when a true value is encountered, resets the computation.

Returns

DoubleChannel[] An array of channels containing the minimum value from each channel given.

Modâ

Mod(DoubleChannel, double)Returns a channel of the same size as the input representing the remainders of an element-wise division.Mod(DoubleChannel[], double)Returns an array of channels of the same size as the input representing the remainders of an element-wise division.Mod(double, double)Returns the remainder resulting from dividing two specified values.
Mod(DoubleChannel dividend, double divisor)â

Returns a channel of the same size as the input representing the remainders of an element-wise division.

Parameters

DoubleChannel dividend A double channel

double divisor A double.

Returns

DoubleChannel A channel of the same size as the input representing the remainders of an element-wise division.

Examples

Mod(rpm, 3)

Mod(DoubleChannel[] dividends, double divisor)â

Returns an array of channels of the same size as the input representing the remainders of an element-wise division.

Parameters

DoubleChannel[] dividends An array of channels containing numerical data

double divisor A double.

Returns

DoubleChannel[] An array of channels of the same size as the input representing the remainders of an element-wise division.

Mod(double dividend, double divisor)â

Returns the remainder resulting from dividing two specified values.

Parameters

double dividend A double

double divisor A double

Returns

double An integer, the remainder.

Examples

Mod(3, 2) = 1

Percentileâ

Percentile(DoubleChannel, double)Returns the k-th percentile of values in a range. You can use this function to establish a threshold of acceptance.Percentile(DoubleChannel[], double)Returns an array of numbers, the k-th percentile of each given channel.
Percentile(DoubleChannel vector, double k)â

Returns the k-th percentile of values in a range. You can use this function to establish a threshold of acceptance.

Parameters

DoubleChannel vector A channel

double k A number, the percentile to take.

Returns

double The k-th percentile of a given channel.

Examples

Percentile(Speed, 0.3)

Percentile(DoubleChannel[] vectors, double k)â

Returns an array of numbers, the k-th percentile of each given channel.

Parameters

DoubleChannel[] vectors An array of channels containing numerical data

double k A number, the percentile to take.

Returns

double[] An array of numbers, the k-th percentile of each given channel.

Powâ

Pow(DoubleChannel, double)Returns a channel where all the items in the original channel are powered to the scalar value defined.Pow(DoubleChannel[], double)Returns an array of channels where all the items in the original channels are powered to the scalar value defined.Pow(double, double)Returns the base powered to the exponent.
Pow(DoubleChannel bases, double exponent)â

Returns a channel where all the items in the original channel are powered to the scalar value defined.

Parameters

DoubleChannel bases A channel

double exponent A double.

Returns

DoubleChannel A channel of the same size as the input, with each value raised to the specified exponent.

Examples

Pow(Speed,2) returns a vector of the speed squared

Pow(DoubleChannel[] bases, double exponent)â

Returns an array of channels where all the items in the original channels are powered to the scalar value defined.

Parameters

DoubleChannel[] bases An array of channels containing numerical data

double exponent A double.

Returns

DoubleChannel[] An array of channels of the same size as the input, with each value raised to the specified exponent.

Pow(double base, double exponent)â

Returns the base powered to the exponent.

Parameters

double base The base.

double exponent The exponent.

Returns

double A double.

Examples

Pow(2,3) = 8

ReSampleâ

ReSample(DoubleChannel, double)Resamples a channel to the defined frequency, with optional interpolate and extrapolate flags.ReSample(DoubleChannel[], double)Resamples an array of channels to the defined frequency.ReSample(DoubleChannel, double, bool, bool)Resamples a channel to the defined frequency, with optional interpolate and extrapolate flags.ReSample(DoubleChannel[], double, bool, bool)Resamples an array of channels to the defined frequency.
ReSample(DoubleChannel channel, double frequency)â

Resamples a channel to the defined frequency, with optional interpolate and extrapolate flags.

warningThis is a legacy function retained for backwards compatibility and complex use cases. Prefer using math channel frequency and data channel resampling mode in the data analysis profile instead of the ReSample function.

Parameters

DoubleChannel channel The channel to resample.

double frequency The frequency to resample to (Hz).

Returns

DoubleChannel A resampled channel

Examples

ReSample(vGPS, 200)

ReSample(DoubleChannel[] channels, double frequency)â

Resamples an array of channels to the defined frequency.

warningThis is a legacy function retained for backwards compatibility and complex use cases. Prefer using math channel frequency and data channel resampling mode in the data analysis profile instead of the ReSample function.

Parameters

DoubleChannel[] channels An array of channels to resample.

double frequency The frequency to resample to (Hz).

Returns

DoubleChannel[] An array of resampled channels.

Examples

ReSample({ vWheelFL, vWheelFR, vWheelRL, vWheelRR }, 200)

ReSample(DoubleChannel channel, double frequency, bool interpolate, bool extrapolate)â

Resamples a channel to the defined frequency, with optional interpolate and extrapolate flags.

warningThis is a legacy function retained for backwards compatibility and complex use cases. Prefer using math channel frequency and data channel resampling mode in the data analysis profile instead of the ReSample function.

Parameters

DoubleChannel channel The channel to resample.

double frequency The frequency to resample to (Hz).

bool interpolate When true, uses linear interpolation between data samples. When false, holds the last value.

bool extrapolate When true, uses linear extrapolation beyond the ends of the channel data. When false, holds the first or last value. (If set to true, then interpolate must also be true)

Returns

DoubleChannel A resampled channel

Examples

ReSample(vGPS, 200, true, false)

ReSample(DoubleChannel[] channels, double frequency, bool interpolate, bool extrapolate)â

Resamples an array of channels to the defined frequency.

warningThis is a legacy function retained for backwards compatibility and complex use cases. Prefer using math channel frequency and data channel resampling mode in the data analysis profile instead of the ReSample function.

Parameters

DoubleChannel[] channels An array of channels to resample.

double frequency The frequency to resample to (Hz).

bool interpolate When true, uses linear interpolation between data samples. When false, holds the last value.

bool extrapolate When true, uses linear extrapolation beyond the ends of the channel data. When false, holds the first or last value. (If set to true, then interpolate must also be true)

Returns

DoubleChannel[] An array of resampled channels.

Examples

ReSample({ vWheelFL, vWheelFR, vWheelRL, vWheelRR }, 200, true, true)

RisingEdgeâ

RisingEdge(DoubleChannel)Returns a channel consisting of integers 1 and 0. 1 means that the previous sample in the channel was smaller than the current one.RisingEdge(DoubleChannel[])Returns an array of channels consisting of integers 1 and 0. 1 means that the previous sample in the channel was smaller than the current one.
RisingEdge(DoubleChannel vector)â

Returns a channel consisting of integers 1 and 0. 1 means that the previous sample in the channel was smaller than the current one.

Parameters

DoubleChannel vector A channel.

Returns

DoubleChannel A channel of the same size as the input with each value replaced by either an integer 0 or 1.

Examples

RisingEdge(TPS)

RisingEdge(DoubleChannel[] vectors)â

Returns an array of channels consisting of integers 1 and 0. 1 means that the previous sample in the channel was smaller than the current one.

Parameters

DoubleChannel[] vectors An array of channels containing numerical data

Returns

DoubleChannel[] An array of channels of the same size as the inputs with each value replaced by either an integer 0 or 1.

Roundâ

Round(DoubleChannel, double)Returns a channel with each value rounded to the specified number of fractional digits.Round(DoubleChannel[], double)Returns an array of channels with each value rounded to the specified number of fractional digits.Round(double, double)Rounds a value to the specified number of fractional digits.Round(DoubleChannel)Returns a channel with each value rounded to the nearest integer.Round(DoubleChannel[])Returns an array of channels with each value rounded to the nearest integer.Round(double)Rounds a value to the nearest integer.
Round(DoubleChannel vector, double value)â

Returns a channel with each value rounded to the specified number of fractional digits.

Parameters

DoubleChannel vector The channel to round.

double value The number of fractional digits to round to.

Returns

DoubleChannel A channel with each value rounded to the specified number of fractional digits.

Examples

Round(GForce_Lat, 1)

Round(DoubleChannel[] vectors, double value)â

Returns an array of channels with each value rounded to the specified number of fractional digits.

Parameters

DoubleChannel[] vectors An array of channels to round.

double value The number of fractional digits to round to.

Returns

DoubleChannel[] An array of channels with each value rounded to the specified number of fractional digits.

Round(double value, double value1)â

Rounds a value to the specified number of fractional digits.

Parameters

double value The value to round.

double value1 The number of fractional digits to round to.

Returns

double The rounded value.

Examples

Round(3 / 2, 1) = 1.5

Round(DoubleChannel vector)â

Returns a channel with each value rounded to the nearest integer.

Parameters

DoubleChannel vector The channel to round.

Returns

DoubleChannel A channel with each value rounded to the nearest integer.

Examples

Round(GForce_Lat)

Round(DoubleChannel[] vectors)â

Returns an array of channels with each value rounded to the nearest integer.

Parameters

DoubleChannel[] vectors An array of channels to round.

Returns

DoubleChannel[] An array of channels with each value rounded to the nearest integer.

Round(double value)â

Rounds a value to the nearest integer.

Parameters

double value A double value.

Returns

double An integer.

Examples

Round(3 / 2) = 2

Signâ

Sign(DoubleChannel)A channel containing integers representing the arithmetic sign of each individual value of the input channel (1, -1, or 0).Sign(DoubleChannel[])An array of channels containing integers representing the arithmetic sign of each individual value of the input channels (1, -1, or 0).Sign(double)Returns the arithmetic sign (1, -1 or 0) of a supplied number.
Sign(DoubleChannel vector)â

A channel containing integers representing the arithmetic sign of each individual value of the input channel (1, -1, or 0).

Parameters

DoubleChannel vector A channel.

Returns

DoubleChannel A channel containing values representing the arithmetic sign of each individual value of the input channel.

Examples

Sign(GForceLat)

Sign(DoubleChannel[] vectors)â

An array of channels containing integers representing the arithmetic sign of each individual value of the input channels (1, -1, or 0).

Parameters

DoubleChannel[] vectors An array of channels containing numerical data

Returns

DoubleChannel[] An array of channels containing values representing the arithmetic sign of each individual value of the input channels.

Examples

Sign({ GForceLat, GForceLon })

Sign(double value)â

Returns the arithmetic sign (1, -1 or 0) of a supplied number.

Parameters

double value The numerical value to determine the sign of.

Returns

double A value representing an arithmetic sign (1, -1 or 0).

Examples

Sign(-3) = -1

Sinâ

Sin(DoubleChannel)Returns a channel containing the sine of all the items in the original channel.Sin(DoubleChannel[])Returns an array of channels containing the sine of all the items in the original channels.Sin(double)Returns the sine of the value.
Sin(DoubleChannel vector)â

Returns a channel containing the sine of all the items in the original channel.

Parameters

DoubleChannel vector The channel to take the sine of.

Returns

DoubleChannel A channel of the same size as the input containing the sine of each individual value.

Examples

Sin(Steering)

Sin(DoubleChannel[] vectors)â

Returns an array of channels containing the sine of all the items in the original channels.

Parameters

DoubleChannel[] vectors An array of channels to take the sine of.

Returns

DoubleChannel[] An array of channels of the same size as the input containing the sine of each individual value.

Sin(double value)â

Returns the sine of the value.

Parameters

double value The value to take the sine of.

Returns

double The sine.

Examples

Sin(0)=0

Smoothâ

Smooth(DoubleChannel)Smooths the input channel by averaging over a time interval of 1 second.Smooth(DoubleChannel[])Smooths each input channel individually by averaging over a time interval of 1 second.Smooth(DoubleChannel, double)Smooths the input channel by averaging over a time interval defined by windowSize.Smooth(DoubleChannel[], double)Smooths each input channel individually by averaging over a time interval defined by windowSize.
Smooth(DoubleChannel vector)â

Smooths the input channel by averaging over a time interval of 1 second.

Parameters

DoubleChannel vector The channel to smooth.

Returns

DoubleChannel The smoothed channel using a window size of 1 second.

Examples

Smooth(Steering) // Moving average of the Steering channel using a window size of 1 sec.

Smooth(DoubleChannel[] vectors)â

Smooths each input channel individually by averaging over a time interval of 1 second.

Parameters

DoubleChannel[] vectors An array of channels to smooth.

Returns

DoubleChannel[] An array of smoothed channels using a window size of 1 second.

Smooth(DoubleChannel vector, double windowSize)â

Smooths the input channel by averaging over a time interval defined by windowSize.

Parameters

DoubleChannel vector The channel to smooth.

double windowSize The window size to use (seconds).

Returns

DoubleChannel A smoothed channel.

Examples

Smooth(Steering, 0.1) // Moving average of the Steering channel using a window size of 0.1 sec.

Smooth(DoubleChannel[] vectors, double windowSize)â

Smooths each input channel individually by averaging over a time interval defined by windowSize.

Parameters

DoubleChannel[] vectors An array of channels to smooth.

double windowSize The window size to use (seconds).

Returns

DoubleChannel[] An array of smoothed channels.

Sqrtâ

Sqrt(DoubleChannel)Returns a channel containing the square root of each sample in the original channel.Sqrt(DoubleChannel[])Returns an array of channels containing the square root of each sample in the original channels.Sqrt(double)Returns the square root of a specified number.
Sqrt(DoubleChannel vector)â

Returns a channel containing the square root of each sample in the original channel.

Parameters

DoubleChannel vector The channel to take the square root of.

Returns

DoubleChannel A channel of the same length as the input.

Examples

Sqrt(Speed)

Sqrt(DoubleChannel[] vectors)â

Returns an array of channels containing the square root of each sample in the original channels.

Parameters

DoubleChannel[] vectors An array of channels to take the square root of.

Returns

DoubleChannel[] An array of channels of the same size as the input.

Sqrt(double value)â

Returns the square root of a specified number.

Parameters

double value The number whose square root is to be found.

Returns

double The positive square root.

Examples

Sqrt(4)=2

Startâ

Start(DoubleChannel)Returns the first valid value in the given double channel.Start(DoubleChannel[])Returns the first valid values of each of the given double channels.Start(BooleanChannel)Returns the first valid value in the given boolean channel.Start(BooleanChannel[])Returns the first valid values of each of the given boolean channels.
Start(DoubleChannel vector)â

Returns the first valid value in the given double channel.

Parameters

DoubleChannel vector The channel to take the first value of.

Returns

double A double, the first valid value in the channel.

Examples

Start(FuelLevel)

Start(DoubleChannel[] vectors)â

Returns the first valid values of each of the given double channels.

Parameters

DoubleChannel[] vectors An array of channels to take the first values of.

Returns

double[] An array of doubles, the first valid values of each given channel.

Examples

Start({ FuelLevel, vGPS })

Start(BooleanChannel vector)â

Returns the first valid value in the given boolean channel.

Parameters

BooleanChannel vector The channel to take the first value of.

Returns

bool A boolean, the first valid value in the channel.

Start(BooleanChannel[] vectors)â

Returns the first valid values of each of the given boolean channels.

Parameters

BooleanChannel[] vectors An array of channels to take the first values of.

Returns

bool[] An array of booleans, the first valid values of each given channel.

StartChannelâ

StartChannel(DoubleChannel)Returns a channel populated with the first value from the channel.StartChannel(DoubleChannel[])Returns an array of channels, each populated with the first value from each of the input channels.StartChannel(DoubleChannel, BooleanChannel)Returns a channel populated with the first value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed.StartChannel(DoubleChannel[], BooleanChannel[])Returns an array of channels, each populated with the value from input when the first true value in condition is encountered.StartChannel(DoubleChannel, BooleanChannel, BooleanChannel)Returns a channel populated with the first value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed, and the reset parameter can be used to reset the calculation.StartChannel(DoubleChannel[], BooleanChannel[], BooleanChannel[])Returns an array of channels, each populated with the value from input when the first true value in condition is encountered. Resets when a true value is encountered in reset.
StartChannel(DoubleChannel input)â

Returns a channel populated with the first value from the channel.

Parameters

DoubleChannel input A double channel.

Returns

DoubleChannel A channel populated with the first value from the input channel.

Examples

StartChannel(vGps)

StartChannel(DoubleChannel[] inputs)â

Returns an array of channels, each populated with the first value from each of the input channels.

Parameters

DoubleChannel[] inputs An array of double channels.

Returns

DoubleChannel[] An array of channels, each populated with the first value from each of the input channels.

StartChannel(DoubleChannel input, BooleanChannel condition)â

Returns a channel populated with the first value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed.

Parameters

DoubleChannel input The double channel to copy the value from.

BooleanChannel condition The channel that determines when the value should be taken from input.

Returns

DoubleChannel A double channel containing the value from input when the first true value in condition is encountered.

Examples

StartChannel(vGps, HighSpeedCornerGate)

StartChannel(DoubleChannel[] inputs, BooleanChannel[] conditions)â

Returns an array of channels, each populated with the value from input when the first true value in condition is encountered.

Parameters

DoubleChannel[] inputs An array of channels containing numerical data

BooleanChannel[] conditions An array of channels, of the same length as input that determines what values should be considered from input.

Returns

DoubleChannel[] An array of channels, each populated with the value from input when the first true value in condition is encountered.

StartChannel(DoubleChannel input, BooleanChannel condition, BooleanChannel reset)â

Returns a channel populated with the first value from the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed, and the reset parameter can be used to reset the calculation.

Parameters

DoubleChannel input The double channel to copy the value from.

BooleanChannel condition The channel that determines when the value should be taken from input.

BooleanChannel reset A boolean channel that when a true value is encountered, resets the computation.

Returns

DoubleChannel A double channel containing the value from input when the first true value in condition is encountered. Resets when a true value is encountered in reset.

Examples

StartChannel(vGps, HighSpeedCornerGate, StartEndHighSpeedCornerGate)

StartChannel(DoubleChannel[] inputs, BooleanChannel[] conditions, BooleanChannel[] resets)â

Returns an array of channels, each populated with the value from input when the first true value in condition is encountered. Resets when a true value is encountered in reset.

Parameters

DoubleChannel[] inputs An array of channels containing numerical data

BooleanChannel[] conditions An array of channels, of the same length as input that determines what values should be considered from input.

BooleanChannel[] resets An array of boolean channels that, when a true value is encountered, resets the computation.

Returns

DoubleChannel[] An array of channels, each populated with the value from input when the first true value in condition is encountered. Resets when a true value is encountered in reset.

StdDevâ

StdDev(params DoubleChannel[])Returns the standard deviation value from the entire channel. If multiple channels are given, then the standard deviation of all channels combined is returned.StdDev(params DoubleChannel[][])Returns an array of the standard deviation of the values in all the given channels at each index of the input arrays.StdDev(params double[])Returns the standard deviation value between all arguments.StdDev(params double[][])Returns the standard deviation value between all arguments.
StdDev(params DoubleChannel[] vector)â

Returns the standard deviation value from the entire channel. If multiple channels are given, then the standard deviation of all channels combined is returned.

Parameters

params DoubleChannel[] vector The channels to take the standard deviation of.

Returns

double The standard deviation of the given channels.

Examples

StdDev(TyreTempFL) = 5.6

StdDev(params DoubleChannel[][] vectors)â

Returns an array of the standard deviation of the values in all the given channels at each index of the input arrays.

Parameters

params DoubleChannel[][] vectors One or more arrays of one or more channels to take the standard deviation of.

Returns

double[] An array of numbers containing the standard deviation of each respective channel given.

Examples

StdDev({TyreTempFL) = 5.6

StdDev(params double[] value)â

Returns the standard deviation value between all arguments.

Parameters

params double[] value The values to take the standard deviation of.

Returns

double The standard deviation.

Examples

StdDev(2,4,4,4,5,5,7,9) = 2

StdDev(params double[][] values)â

Returns the standard deviation value between all arguments.

Parameters

params double[][] values One or more arrays of one or more values to take the standard deviation of.

Returns

double[] An array of decimals equal to the length of the longest input array.

StdDevChannelâ

StdDevChannel(DoubleChannel)Returns a channel populated with the standard deviation of the channel.StdDevChannel(DoubleChannel[])Returns an array of channels, each populated with the standard deviation from each of the input channels.StdDevChannel(DoubleChannel, BooleanChannel)Returns a channel populated with the standard deviation of the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed.StdDevChannel(DoubleChannel[], BooleanChannel[])Returns an array of channels populated with the standard deviation of each of the input channels, the condition parameter allows a boolean channel to be used to control when the calculation is performed.StdDevChannel(DoubleChannel, BooleanChannel, BooleanChannel)Returns a channel populated with the standard deviation of the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed, and the reset parameter can be used to reset the calculation.StdDevChannel(DoubleChannel[], BooleanChannel[], BooleanChannel[])Returns an array of channels populated with the standard deviation of each of the input channels, the condition parameter allows a boolean channel to be used to control when the calculation is performed, and the reset parameter can be used to reset the calculation.
StdDevChannel(DoubleChannel input)â

Returns a channel populated with the standard deviation of the channel.

Parameters

DoubleChannel input The channel to take the standard deviation of.

Returns

DoubleChannel A channel populated with the standard deviation of the input channel.

Examples

StdDevChannel(vGps)

StdDevChannel(DoubleChannel[] inputs)â

Returns an array of channels, each populated with the standard deviation from each of the input channels.

Parameters

DoubleChannel[] inputs The array of channels to take the standard deviation of.

Returns

DoubleChannel[] An array of channels containing the standard deviation of each respective channel given.

StdDevChannel(DoubleChannel input, BooleanChannel condition)â

Returns a channel populated with the standard deviation of the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed.

Parameters

DoubleChannel input The channel to take the standard deviation of.

BooleanChannel condition The channel that determines when the value should be taken from input.

Returns

DoubleChannel A channel populated with the standard deviation of the input channel.

Examples

StdDevChannel(vGps, HighSpeedCornerGate)

StdDevChannel(DoubleChannel[] inputs, BooleanChannel[] conditions)â

Returns an array of channels populated with the standard deviation of each of the input channels, the condition parameter allows a boolean channel to be used to control when the calculation is performed.

Parameters

DoubleChannel[] inputs The array of channels to take the standard deviation of.

BooleanChannel[] conditions An array of channels, of the same length as input that determines what values should be considered from input.

Returns

DoubleChannel[] An array of channels containing the standard deviation of each respective channel given.

StdDevChannel(DoubleChannel input, BooleanChannel condition, BooleanChannel reset)â

Returns a channel populated with the standard deviation of the channel, the condition parameter allows a boolean channel to be used to control when the calculation is performed, and the reset parameter can be used to reset the calculation.

Parameters

DoubleChannel input The channel to take the standard deviation of.

BooleanChannel condition The channel that determines when the value should be taken from input.

BooleanChannel reset A boolean channel that when a true value is encountered, resets the computation.

Returns

DoubleChannel A channel populated with the standard deviation of the input channel.

Examples

StdDevChannel(vGps, HighSpeedCornerGate, StartEndHighSpeedCornerGate)

StdDevChannel(DoubleChannel[] inputs, BooleanChannel[] conditions, BooleanChannel[] resets)â

Returns an array of channels populated with the standard deviation of each of the input channels, the condition parameter allows a boolean channel to be used to control when the calculation is performed, and the reset parameter can be used to reset the calculation.

Parameters

DoubleChannel[] inputs The array of channels to take the standard deviation of.

BooleanChannel[] conditions An array of channels, of the same length as input that determines what values should be considered from input.

BooleanChannel[] resets An array of boolean channels that, when a true value is encountered, resets the computation.

Returns

DoubleChannel[] An array of channels containing the standard deviation of each respective channel given.

Sumâ

Sum(params DoubleChannel[])Returns the sum of the values of a given channel.Sum(params DoubleChannel[][])Returns an array of the sum of the values in all the given channels at each index of the input arrays.Sum(params double[])Returns the sum of all values given.Sum(params double[][])Returns an array of the sum of the values at each index of the input arrays.
Sum(params DoubleChannel[] vector)â

Returns the sum of the values of a given channel.

Parameters

params DoubleChannel[] vector The channels to sum.

Returns

double The sum of the channel given.

Examples

Sum(Steering) = 5800

Sum(params DoubleChannel[][] vectors)â

Returns an array of the sum of the values in all the given channels at each index of the input arrays.

Parameters

params DoubleChannel[][] vectors One or more arrays of one or more channels to sum.

Returns

double[] An array of numbers containing the sum of each respective channel given.

Examples

Sum({pBrakeF, pBrakeR}) = {8200, 6900} // An array of the total front brake pressure and total rear brake pressure over the lap.

Sum(params double[] value)â

Returns the sum of all values given.

Parameters

params double[] value The values to sum.

Returns

double The sum.

Examples

Sum(2,4,8) = 14

Sum(params double[][] values)â

Returns an array of the sum of the values at each index of the input arrays.

Parameters

params double[][] values One or more arrays of numbers to sum.

Returns

double[] An array of decimals equal to the length of the longest input array.

Examples

Sum({3,1}, {0,2}, {5, 9}) = { 8, 12 } // { 3 + 0 + 5, 1 + 2 + 9 }

SumAllâ

SumAll(DoubleChannel)Returns the sum of all samples in the channel given.SumAll(DoubleChannel[])Returns a single value that is the sum of all samples in all channels given.SumAll(double)Returns the sum of all values given.SumAll(double[])Returns the sum of all values given.
SumAll(DoubleChannel vector)â

Returns the sum of all samples in the channel given.

Parameters

DoubleChannel vector The channel to sum.

Returns

double The sum

Examples

SumAll(vCornerMin)

SumAll(DoubleChannel[] vectors)â

Returns a single value that is the sum of all samples in all channels given.

Parameters

DoubleChannel[] vectors An array of channels to sum.

Returns

double The cumulative sum of each channel given.

SumAll(double value)â

Returns the sum of all values given.

Parameters

double value The number to sum.

Returns

double The number

SumAll(double[] values)â

Returns the sum of all values given.

Parameters

double[] values An array of numbers to sum

Returns

double The sum

Tanâ

Tan(DoubleChannel)Returns a channel containing the tangents of all values in the original channel.Tan(DoubleChannel[])Returns an array of channels containing the tangents of all values in each of the original channels.Tan(double)Returns the tangent of the specified number.
Tan(DoubleChannel vector)â

Returns a channel containing the tangents of all values in the original channel.

Parameters

DoubleChannel vector A channel.

Returns

DoubleChannel A channel containing the tangent of each value.

Examples

Tan(Steering)

Tan(DoubleChannel[] vectors)â

Returns an array of channels containing the tangents of all values in each of the original channels.

Parameters

DoubleChannel[] vectors An array of channels.

Returns

DoubleChannel[] An array of channels containing the tangents of each value from the channels given.

Tan(double value)â

Returns the tangent of the specified number.

Parameters

double value The value to take the tangent of.

Returns

double The tangent.

Examples

Tan(0) = 0

TimeShiftâ

TimeShift(DoubleChannel, double)Offsets a double channel by offset seconds. A positive offset means the values are getting shifted to the right, and a negative offset means they are getting shifted to the left.TimeShift(DoubleChannel[], double)Returns a copy of each given channel offset by offset seconds. A positive offset means the values are getting shifted to the right, and a negative offset means they are getting shifted to the left.TimeShift(BooleanChannel, double)Offsets a boolean channel by offset seconds. A positive offset means the values are getting shifted to the right, and a negative offset means they are getting shifted to the left.TimeShift(BooleanChannel[], double)Returns a copy of each given channel offset by offset seconds. A positive offset means the values are getting shifted to the right, and a negative offset means they are getting shifted to the left.
TimeShift(DoubleChannel vector, double offset)â

Offsets a double channel by offset seconds. A positive offset means the values are getting shifted to the right, and a negative offset means they are getting shifted to the left.

Parameters

DoubleChannel vector The double channel to shift.

double offset A decimal representing the number of seconds to shift by. A positive value shifts right, a negative value shifts left.

Returns

DoubleChannel The shifted double channel.

Examples

TimeShift(Throttle Pos, 1.5) // shifts the channel 'Throttle Position' by 1.5 seconds to the right

TimeShift(DoubleChannel[] vectors, double offset)â

Returns a copy of each given channel offset by offset seconds. A positive offset means the values are getting shifted to the right, and a negative offset means they are getting shifted to the left.

Parameters

DoubleChannel[] vectors An array of double channels to shift.

double offset A decimal representing the number of seconds to shift by. A positive value shifts right, a negative value shifts left.

Returns

DoubleChannel[] An array of shifted double channels.

TimeShift(BooleanChannel vector, double offset)â

Offsets a boolean channel by offset seconds. A positive offset means the values are getting shifted to the right, and a negative offset means they are getting shifted to the left.

Parameters

BooleanChannel vector The boolean channel to shift.

double offset A decimal representing the number of seconds to shift by. A positive value shifts right, a negative value shifts left.

Returns

BooleanChannel The shifted boolean channel

Examples

TimeShift(Throttle Pos > 90, 1.5) // shifts the expression 'Throttle Position > 90' by 1.5 seconds to the right

TimeShift(BooleanChannel[] vectors, double offset)â

Returns a copy of each given channel offset by offset seconds. A positive offset means the values are getting shifted to the right, and a negative offset means they are getting shifted to the left.

Parameters

BooleanChannel[] vectors An array of boolean channels to shift.

double offset A decimal representing the number of seconds to shift by. A positive value shifts right, a negative value shifts left.

Returns

BooleanChannel[] An array of shifted boolean channels.

TimeShiftSamplesâ

TimeShiftSamples(DoubleChannel, double)Offsets a channel of doubles by offset samples. A positive offset means the values are getting shifted to the right, and a negative offset means they are getting shifted to the left.TimeShiftSamples(DoubleChannel[], double)Returns a copy of each given channel offset by offset samples. A positive offset means the values are getting shifted to the right, and a negative offset means they are getting shifted to the left.TimeShiftSamples(BooleanChannel, double)Offsets a channel of booleans by offset samples. A positive offset means the values are getting shifted to the right, and a negative offset means they are getting shifted to the left.TimeShiftSamples(BooleanChannel[], double)Returns a copy of each given channel offset by offset samples. A positive offset means the values are getting shifted to the right, and a negative offset means they are getting shifted to the left.
TimeShiftSamples(DoubleChannel vector, double offset)â

Offsets a channel of doubles by offset samples. A positive offset means the values are getting shifted to the right, and a negative offset means they are getting shifted to the left.

Parameters

DoubleChannel vector The double channel to shift.

double offset The number of samples to shift by. A positive value shifts right, a negative value shifts left.

Returns

DoubleChannel The shifted double channel.

Examples

TimeShift(Throttle Pos, 2) -> shifts the channel 'Throttle Position' by 2 samples to the right

TimeShiftSamples(DoubleChannel[] vectors, double offset)â

Returns a copy of each given channel offset by offset samples. A positive offset means the values are getting shifted to the right, and a negative offset means they are getting shifted to the left.

Parameters

DoubleChannel[] vectors An array of double channels to shift.

double offset The number of samples to shift by. A positive value shifts right, a negative value shifts left.

Returns

DoubleChannel[] An array of shifted double channels.

TimeShiftSamples(BooleanChannel vector, double offset)â

Offsets a channel of booleans by offset samples. A positive offset means the values are getting shifted to the right, and a negative offset means they are getting shifted to the left.

Parameters

BooleanChannel vector The boolean channel to shift.

double offset The number of samples to shift by. A positive value shifts right, a negative value shifts left.

Returns

BooleanChannel The shifted boolean channel.

Examples

TimeShift(Throttle Pos > 90, 2) -> shifts the expression 'Throttle Position > 90' by 2 samples to the right

TimeShiftSamples(BooleanChannel[] vectors, double offset)â

Returns a copy of each given channel offset by offset samples. A positive offset means the values are getting shifted to the right, and a negative offset means they are getting shifted to the left.

Parameters

BooleanChannel[] vectors An array of boolean channels to shift.

double offset The number of samples to shift by. A positive value shifts right, a negative value shifts left.

Returns

BooleanChannel[] An array of shifted boolean channels.

UpSampleâ

UpSample(DoubleChannel, double)Upsamples a channel to the defined frequency, with optional interpolate and extrapolate flags.UpSample(DoubleChannel[], double)Upsamples an array of channels to the defined frequency.UpSample(DoubleChannel, double, bool, bool)Upsamples a channel to the defined frequency, with optional interpolate and extrapolate flags.UpSample(DoubleChannel[], double, bool, bool)Upsamples an array of channels to the defined frequency.
UpSample(DoubleChannel channel, double frequency)â

Upsamples a channel to the defined frequency, with optional interpolate and extrapolate flags.

infoThis function will return an error if the up sample frequency is less than the channel frequency or if the up sample frequency is not an integer multiple of the channel frequency. Use the ReSample function for such cases.

warningThis is a legacy function retained for backwards compatibility and complex use cases. Prefer using math channel frequency and data channel resampling mode in the data analysis profile instead of the UpSample function.

Parameters

DoubleChannel channel The channel to upsample.

double frequency The frequency to upsample to (Hz).

Returns

DoubleChannel An upsampled channel

Examples

UpSample(vGPS, 200)

UpSample(DoubleChannel[] channels, double frequency)â

Upsamples an array of channels to the defined frequency.

infoThis function will return an error if the up sample frequency is less than the channel frequency or if the up sample frequency is not an integer multiple of the channel frequency. Use the ReSample function for such cases.

warningThis is a legacy function retained for backwards compatibility and complex use cases. Prefer using math channel frequency and data channel resampling mode in the data analysis profile instead of the UpSample function.

Parameters

DoubleChannel[] channels An array of channels to upsample.

double frequency The frequency to upsample to (Hz).

Returns

DoubleChannel[] An array of upsampled channels.

Examples

UpSample({ vWheelFL, vWheelFR, vWheelRL, vWheelRR }, 200)

UpSample(DoubleChannel channel, double frequency, bool interpolate, bool extrapolate)â

Upsamples a channel to the defined frequency, with optional interpolate and extrapolate flags.

infoThis function will return an error if the up sample frequency is less than the channel frequency or if the up sample frequency is not an integer multiple of the channel frequency. Use the ReSample function for such cases.

warningThis is a legacy function retained for backwards compatibility and complex use cases. Prefer using math channel frequency and data channel resampling mode in the data analysis profile instead of the UpSample function.

Parameters

DoubleChannel channel The channel to upsample.

double frequency The frequency to upsample to (Hz).

bool interpolate When true, uses linear interpolation between data samples. When false, holds the last value.

bool extrapolate When true, uses linear extrapolation beyond the ends of the channel data. When false, holds the first or last value. (If set to true, then interpolate must also be true)

Returns

DoubleChannel An upsampled channel

Examples

UpSample(vGPS, 200, true, true)

UpSample(DoubleChannel[] channels, double frequency, bool interpolate, bool extrapolate)â

Upsamples an array of channels to the defined frequency.

infoThis function will return an error if the up sample frequency is less than the channel frequency or if the up sample frequency is not an integer multiple of the channel frequency. Use the ReSample function for such cases.

warningThis is a legacy function retained for backwards compatibility and complex use cases. Prefer using math channel frequency and data channel resampling mode in the data analysis profile instead of the UpSample function.

Parameters

DoubleChannel[] channels An array of channels to upsample.

double frequency The frequency to upsample to (Hz).

bool interpolate When true, uses linear interpolation between data samples. When false, holds the last value.

bool extrapolate When true, uses linear extrapolation beyond the ends of the channel data. When false, holds the first or last value. (If set to true, then interpolate must also be true)

Returns

DoubleChannel[] An array of upsampled channels.

Examples

UpSample({ vWheelFL, vWheelFR, vWheelRL, vWheelRR }, 200, false, false)

ValidForâ

ValidFor(BooleanChannel, double)Returns a channel of boolean values. The result is true when the input data is valid for the time specified in the duration argument.ValidFor(BooleanChannel[], double)Returns an array of boolean channels. The result is true when the input data is valid for the time specified in the duration argument.
ValidFor(BooleanChannel vector, double duration)â

Returns a channel of boolean values. The result is true when the input data is valid for the time specified in the duration argument.

Parameters

BooleanChannel vector The boolean channel to test the validity of.

double duration The duration to check.

Returns

BooleanChannel A channel of boolean values.

Examples

ValidFor(vGPS > 100, 5)

ValidFor(BooleanChannel[] vectors, double duration)â

Returns an array of boolean channels. The result is true when the input data is valid for the time specified in the duration argument.

Parameters

BooleanChannel[] vectors An array of boolean channels to test the validity of.

double duration The duration to check.

Returns

BooleanChannel[] An array of boolean channels of the same size as the input.
