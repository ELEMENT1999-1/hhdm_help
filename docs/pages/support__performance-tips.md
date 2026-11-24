---
url: https://help.hh-dm.com/support/performance-tips/
---

On this pageHH Data Management Performance tips

If the HH Data Management software is running slow, or, just to ensure the software is running as optimally as possible, here are some best practices to improve performance and some things to monitor for optimum performance.

Optimizing the cacheâ

Cache Selection and Checking the Cache Statusâ

The amount of data cached can have an impact on overall performance, so be sure to check that there are not unnecessary caches getting loaded into the software. There may also be a few caches in particular that are slower to load than others, and, when possible, disabling those (when not necessary) can improve the software's performance. Disabling loading for entire accounts in the management cache can quickly cut down on the size and burden of the local cache. Cache Selection and Cache Status is covered in the workbook layout section of the documentation here.

Display Cache Statusâ

To see which caches are currently loaded and requested, enable the cache status display.

If HH Data Management takes a long time to load when opened, it often has to do with loading a particular layout with something such as a main graph or data export loading a large number of cars or events. If a large number of caches are being requested and loaded, check the Cache Status where the views referencing the cache will be noted. The size of the cache and the time to load, will also be noted here.

Logging Math Channel Errorsâ

Logging math channel errors can help identify issues in math channels, but comes at a performance cost. If HH Data Management performance is poor, double-check to see if math channel error logging is enabled. If so, disable math channel logging.

Open the file section in HH Data Management

In Options, under the Main section, uncheck the box for "Log math channel errors":

Math Expression Efficiencyâ

While HH Data Management does have some performance optimizations built in that try to help overall math expression performance, it is still important to be conscious of the need to write math expressions that will be efficient.

The first thing to consider when writing a math expression is where it should be written, and to always try to write it at the highest level possible. For example, rather than writing an expression on a setup that calculates a value based on some EventCarData parameters with no input from the setup, write this expression on the EventCarData and reference it from the setup if needed. This way, the math expression does not have to be created and updated for each setup, but instead is only evaluated once for the EventCarData object which reduces the total number of expression objects created.

Consider if a math parameter is really needed. On a setup if you have something like If(Event.Track.Name == ââ¦â, â¦, â¦): maybe it is better to just define a parameter on the track to avoid the complexity of adding a math parameter.

Prefer using an index accessor as opposed to Lookup when possible.
E.g. instead of writing:

Lookup(SomeCollection, "Order", 1).CollectionProperty

Write:

SomeCollection[1].CollectionProperty

Prefer booleans over string comparisons.
E.g. instead of writing:

Driver.Categorization.Name == "Bronze"

Create a boolean math expression IsBronze and then write:

Driver.IsBronze

Try to reuse logic blocks.
E.g. instead of writing:

X = A + B
Y = A + B + C

Write:

X = A + B
Y = X + C

Computer Settingsâ

Computer Power Settings and Power Saving Modeâ

Many laptop computers feature configurable power settings and most feature a "power saving mode". The conditions under which power saving mode will be enabled are usually configurable. Quite often, some form of power saving mode will be enabled when the laptop is disconnected from the charger. Power settings and power saving modes can have a dramatic effect on overall computer performance. The location of these settings can vary from computer to computer and even between different versions of the Windows operating system. The following are some examples of power settings on Windows 11, but note that they could be located in the laptop manufactures settings tool, or in a different area of the laptop settings all together.

Power modeâ

Power modes will change the performance of a computer to meet target energy consumption. For laptops, this is a direct correlation to battery life, and for desktop computers, this is a tool to manage energy use typically with regards to cost of energy. The trade off between performance and energy consumption is ultimately up to you, but consider using an option like "best performance", or at least consider selecting a more performant option when doing work in HH Data Management.

General battery settings are available in the control panel on Windows 11:â

tipQuite often, the power modes (mentioned above) are directly changing these settings, but it can be useful to check.

Click "Change plan settings":

Click "Change advanced power settings" to view or change the details:

Double check the section on processor power management. Some computers may default to less than 100% maximum processor state on battery. (While higher maximum processor state may drain the battery faster, it will also enable the computer to be more performant.)

Battery Saver:â

The options for the battery saving mode can be found in the System section of Windows Settings (at least on windows 11). The default settings may enable the battery saver at a higher battery percentage than necessary. Double check that the remaining battery percentage configured for the battery saver is a reasonable amount.

Sufficient Memoryâ

First and foremost, confirm that the computer in use meets the specifications defined in the system requirements section of the documentation. It is possible that the computer still does not have enough memory to support your specific workload, or there are other processes running on the computer that are consuming memory and are impacting the performance of HH Data Management. The easiest way to check is using the keyboard shortcut 'CTRL + ALT + DELETE' and opening Task Manager.

In this example, 67% of the system memory is in use, but HH Data Management only accounts for 622 MB of the total memory usage:

Closing other applications that are consuming a lot of memory, or noting a high memory utilization by HH Data Management can help identify whether your computer has enough memory, or if performing some or all of the other previous tips mentioned in this article will be required to improve HH Data Management's performance.

Graphics Hardware Accelerationâ

When equipped, computers with dedicated graphics cards can take advatage of the hardware acceleration that is built-in to HH Data Management. The configuration settings to enable this feature are extremely broad and will vary from computer to computer, but ensuring that this feature is enabled will help HH Data Management perform at its best. Below is an example of the most basic setting for this feature on Windows 11:
