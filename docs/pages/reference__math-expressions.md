---
url: https://help.hh-dm.com/reference/math-expressions/
---

On this pageMath Expressions

This section explains the syntax, and available functions and scopes for the math expressions. Math expressions are used in various places in the software:

math parameters

exports

CID cell formatting

When writing a math expression there will be an auto complete functionality that can help to find parameter and function names.

There is an icon beside each item in the list that indicates the type that it represents, and the icons at the bottom of the list can be selected to filter the list.

IconDescriptionFunctionParameterPart parameterAssembly parameterMath parameterCollection parameterReference (a referential relationship defined as part of HH Data Management (e.g. accessing an Event from a Setup))Reference Collection (a collection defined as part of HH Data Management (e.g. the list of Laps that belong to a Run Sheet))Flat model property (i.e. property defined in the HH Data Management code or a plugin)
Syntaxâ

When writing a math expression, parameters from the current definition or other related definitions can be accessed and functions can be called to perform operations. Basic numerical, text and boolean operators are available.

Accessing a parameterâ

Parameters can be accessed by their names. Note that part item parameters are accessed using the name of the part parameter with PartItem added to the end of the name.

Accessing items in a listâ

Items in a list can be accessed using their zero-based position in the list surrounded by square brackets [].

For example:

Event.TestEventCollection[0]

Returns the first item in the "TestEventCollection" collection.

Operatorsâ

The following numerical operators are available:

+ addition

- subtraction

* multiplication

/ division

The following boolean operators are available:

< less than

<= less than or equal

> greater than

>= greater than or equal

&& and

|| or

== equal

!= not equal

Operators with listsâ

Numerical operators also work when one or both operands are list parameters (e.g. a collection parameter that returns a List<double> or List<DateTime>):

Left typeOperatorRight typeResult typeNotesList<double>+ - * /List<double>List<double>Element-wise operation. The result contains as many elements as the shorter of the two lists.List<double>+ - * /doubleList<double>The scalar value on the right is applied to every element of the list.List<DateTime>-List<DateTime>List<double>Returns a list of durations in seconds (one per pair). Limited to the shorter list.List<DateTime>+ -List<double>List<DateTime>Adds or subtracts the number of seconds in each right-hand element from the corresponding date time. Limited to the shorter list.List<DateTime>+ -doubleList<DateTime>Adds or subtracts the scalar number of seconds from every date time in the list.
DateTime operatorsâ

Left typeOperatorRight typeResult typeNotesDateTime+doubleDateTimeNew date time offset forwards by the right-hand number of seconds.DateTime-doubleDateTimeNew date time offset backwards by the right-hand number of seconds.DateTime-DateTimedoubleElapsed seconds between the two date times.
String concatenationâ

If the return types of the LHS and RHS of the + operator do not match then operator will return a string containing the concatenation of the two values. For example 1 + "test" will return "1test".

Constant valuesâ

Constant values can be defined in an expression:

numerical: type a number, e.g. 1.23

string: type some text surrounded by double-quotes, e.g. "test"

boolean: type either true or false

Control-character literals (math expressions only)â

LiteralExpands toUse-caseCRLF\r\nWindows line breakLF\nUnix/Linux line breakCR\rLegacy Mac line breakTAB\tHorizontal tab
Control-character literals available in math expressions and cannot be used as identifiers.

Example:

"First line" + CRLF + "Second line"

produces

"First line 
Second line"

Keywordsâ

The following keywords are available

null: mainly used in a boolean comparison to check if a parameter is set, e.g. FrontSpring != null

this: represents the current scope

Scopesâ

The scope is an important concept to be aware of when writing a math expression. The scope defines what entity the math expression is referencing. If you are writing a math expression in a math parameter in a setup definition, then that setup definition is the current scope. You can access any parameters on that setup directly by typing the parameter name. To change scope and access a parameter from a different entity the dot-notation is used. Again using the setup as an example, to reference a parameter from the related event you would type Event. and then a list of parameters defined in the event definition will be available in the auto complete

You can join as many scope changes together, for example writing Event.Championship.Name would let you access the championship name from a setup. The auto complete normally lets you find the correct scope for anything you need, but the data model documentation provides a full overview of the software.

Unit Managementâ

Whenever a numerical parameter with a dimension and unit defined is accessed, a unit conversion can be performed to change the returned unit. This is done using square brackets, for example mCornerFL["kg"]. A list of all available dimensions and units can be found in the units documentation.

Time Zonesâ

For time-related operations, time zones can be specified using IANA time zone identifiers. More information about supported time zones can be found in the time zones documentation.

Function Referenceâ

This section lists all functions that are available to be used in math expressions.

Numerical Functionsâ

Absâ

Abs(double)Returns the absolute value of the supplied number.
Abs(double value)â

Returns the absolute value of the supplied number.

Parameters

double value A number that is greater than or equal to Decimal.MinValue, but less than or equal to Decimal.MaxValue.

Returns

double A decimal number, x, such that 0 â¤ x â¤ Decimal.MaxValue.

Examples

Abs(-2.3) // Returns 2.3

ACosâ

ACos(double)Returns the angle whose cosine is the specified number.
ACos(double value)â

Returns the angle whose cosine is the specified number.

Parameters

double value A number representing a cosine, where value must be greater than or equal to -1, but less than or equal to 1.

Returns

double An angle, Î¸, measured in radians, such that 0 â¤ Î¸ â¤ Ï.

Examples

ACos(1) // Returns 0
ACos(0) // Returns Math.PI/2

ASinâ

ASin(double)Returns the angle whose sine is the specified number.
ASin(double value)â

Returns the angle whose sine is the specified number.

Parameters

double value A number representing a sine, where value must be greater than or equal to -1, but less than or equal to 1.

Returns

double An angle, Î¸, measured in radians, such that -Ï/2 â¤ Î¸ â¤ Ï/2.

Examples

ASin(0) // Returns 0
ASin(1) // Returns Math.PI/2

ATanâ

ATan(double)Returns the angle whose tangent is the specified number.
ATan(double value)â

Returns the angle whose tangent is the specified number.

Parameters

double value A number representing a tangent.

Returns

double An angle, Î¸, measured in radians, such that -Ï/2 â¤ Î¸ â¤ Ï/2.

Examples

ATan(0) // Returns 0
ATan(1) // Returns Math.PI/4

Averageâ

Average(params double[])Produces the average value of the entered values.
Average(params double[] values)â

Produces the average value of the entered values.

Parameters

params double[] values The list of values to average.

Returns

double The average value.

Examples

Average(2) // Returns 2
Average(2,3,4,5,6,7,8) // Returns 5

BestXâ

BestX(List<FlatModel>, double, string, bool, bool)Calculates the best X quantity of a specified parameter from a collection.BestX(List<FlatModel>, double, string, bool, bool, string)Calculates the best X quantity of a specified parameter from a collection, with the ability to filter the items included in the calculation.
BestX(List<FlatModel> items, double quantity, string propertyName, bool sortAscending, bool calculateAverage)â

Calculates the best X quantity of a specified parameter from a collection.

Parameters

List<FlatModel> items The items from which the average will be calculated.

double quantity The quantity to use for the X.

string propertyName The name of the property that contains the value to be averaged.

bool sortAscending If true, then the values are sorted in ascending order before the best X quantity values are taken. If false, then the values are sorted in descending order.

bool calculateAverage Defines whether the function will return the Xth best value from a collection or the average of the best x quantity of items.

Returns

double The best Xth value or the best X quantity average.

Examples

BestX(SessionLaps, 10, "LapTime", true, true)
BestX(SessionLaps, 10, "vMax", false, true)

BestX(List<FlatModel> items, double quantity, string propertyName, bool sortAscending, bool calculateAverage, string conditionPropertyName)â

Calculates the best X quantity of a specified parameter from a collection, with the ability to filter the items included in the calculation.

Parameters

List<FlatModel> items The items from which the average will be calculated.

double quantity The quantity to use for the X.

string propertyName The name of the property that contains the value to be averaged.

bool sortAscending If true, then the values are sorted in ascending order before the best X quantity values are taken. If false, then the values are sorted in descending order.

bool calculateAverage Defines whether the function will return the Xth best value from a collection or the average of the best x quantity of items.

string conditionPropertyName The name of the property that returns a boolean specifying if the item should be included in the calculation. If true, the value is included.

Returns

double The best Xth value or the best X quantity average.

Examples

BestX(SessionLaps, 10, "LapTime", true, true "IncludeInCalculation")

BestXPercentâ

BestXPercent(List<FlatModel>, double, string, bool, bool)Calculates the best X% of a specified parameter from a collection.BestXPercent(List<FlatModel>, double, string, bool, bool, string)Calculates the best X% of a specified parameter from a collection, with the ability to filter the items included in the calculation.
BestXPercent(List<FlatModel> items, double percent, string propertyName, bool sortAscending, bool calculateAverage)â

Calculates the best X% of a specified parameter from a collection.

Parameters

List<FlatModel> items The items from which the average will be calculated.

double percent The percent to use for the X.

string propertyName The name of the property that contains the value to be averaged.

bool sortAscending If true, then the values are sorted in ascending order before the best X% values are taken. If false, then the values are sorted in descending order.

bool calculateAverage Defines whether the function will return the X% best value from a collection or the average of the best x% quantity of items.

Returns

double The best X% value or the best X% average.

Examples

BestXPercent(SessionLaps, 0.2, "LapTime", true, true)
BestXPercent(SessionLaps, 0.2, "vMax", false, true)

BestXPercent(List<FlatModel> items, double percent, string propertyName, bool sortAscending, bool calculateAverage, string conditionPropertyName)â

Calculates the best X% of a specified parameter from a collection, with the ability to filter the items included in the calculation.

Parameters

List<FlatModel> items The items from which the average will be calculated.

double percent The percent to use for the X.

string propertyName The name of the property that contains the value to be averaged.

bool sortAscending If true, then the values are sorted in ascending order before the best X% values are taken. If false, then the values are sorted in descending order.

bool calculateAverage Defines whether the function will return the X% best value from a collection or the average of the best x% quantity of items.

string conditionPropertyName The name of the property that returns a boolean specifying if the item should be included in the calculation. If true, the value is included.

Returns

double The best X% value or the best X% average.

Examples

BestXPercent(SessionLaps, 0.2, "LapTime", true, true, "IncludeInCalculation")

Cosâ

Cos(double)Returns the cosine of the specified number.
Cos(double value)â

Returns the cosine of the specified number.

Parameters

double value The number to take the cosine of.

Returns

double The cosine.

Examples

Cos(0) // Returns 1
Cos(3.1415926535897931) // Returns -1

Countâ

Count(List<FlatModel> | List<double> | List<string> | List<bool> | List<DateTime>)Counts the items from a list of values.
Count(List<FlatModel> | List<double> | List<string> | List<bool> | List<DateTime> values)â

Counts the items from a list of values.

Parameters

List<FlatModel> | List<double> | List<string> | List<bool> | List<DateTime> values The list to count.

Returns

double The number of items in the list.

Examples

Count(SampleCollection1) // Returns the number of items in the collection.

Degreesâ

Degrees(double)Converts a number in radians to degrees.
Degrees(double value)â

Converts a number in radians to degrees.

Parameters

double value The value to convert.

Returns

double The value in degrees.

Examples

Degrees(3.1415926535897931) // Returns 180

DoubleToStringâ

DoubleToString(double)Converts a double to a string.DoubleToString(double, string)Converts a double to a string using a format specifier.
DoubleToString(double value)â

Converts a double to a string.

Parameters

double value The double to convert.

Returns

string The double as a string.

Examples

DoubleToString(2) // Returns "2"
DoubleToString(2.4) // Returns "2.4"

DoubleToString(double value, string format)â

Converts a double to a string using a format specifier.

Parameters

double value The double to convert.

string format The .NET numeric format string to use, applied with the current culture. Supports both standard (e.g. F2, N0, E2, P, G, R) and custom (e.g. 0.00, #.##, 0,0, 0.0E+00) numeric format strings.

Returns

string The formatted double as a string.

Examples

DoubleToString(2.4, "F2") // Returns "2.40"
DoubleToString(1, "F3") // Returns "1.000"
DoubleToString(2.4, "0.00") // Returns "2.40"

FirstQuartilâ

FirstQuartil(List<FlatModel>, string)Calculates the first quartil of a specified parameter from a collection.FirstQuartil(List<FlatModel>, string, string)Calculates the first quartil of a specified parameter from a collection, with the ability to filter the items included in the calculation.
FirstQuartil(List<FlatModel> items, string propertyName)â

Calculates the first quartil of a specified parameter from a collection.

Parameters

List<FlatModel> items The items from which the first quartil will be calculated.

string propertyName The name of the property that contains the value to be calculated.

Returns

double The first quartil.

FirstQuartil(List<FlatModel> items, string propertyName, string conditionPropertyName)â

Calculates the first quartil of a specified parameter from a collection, with the ability to filter the items included in the calculation.

Parameters

List<FlatModel> items The items from which the first quartil will be calculated.

string propertyName The name of the property that contains the value to be calculated.

string conditionPropertyName The name of the property that returns a boolean specifying if the item should be included in the calculation. If true, the value is included.

Returns

double The first quartil

Interpolateâ

Interpolate(List<FlatModel>, string, string, double, bool)Interpolates a collection of values with a 1D linear interpolation algorithm.Interpolate(List<FlatModel>, string, string, string, double, double, bool)Interpolates a collection of values with a 2D linear interpolation algorithm.Interpolate(List<FlatModel>, List<string>, string, List<double>, bool)Interpolates a collection of values with an n-dimensional linear interpolation algorithm.
Interpolate(List<FlatModel> models, string xParameterName, string valueParameterName, double xValue, bool extrapolate)â

Interpolates a collection of values with a 1D linear interpolation algorithm.

Parameters

List<FlatModel> models A list of flat models to build the values to interpolate with.

string xParameterName The name of the parameter on the flat model to use to build the x variables for interpolation.

string valueParameterName The name of the parameter on the flat model to interpolate.

double xValue The x value to interpolate for.

bool extrapolate Whether to extrapolate or not (in which case it would take the min or max value of valueParameterName).

Returns

double The interpolated value.

Examples

Interpolate(Engine.BoostCollection, "rpm", "pBoost", 6300, true)

Interpolate(List<FlatModel> models, string xParameterName, string yParameterName, string valueParameterName, double xValue, double yValue, bool extrapolate)â

Interpolates a collection of values with a 2D linear interpolation algorithm.

Parameters

List<FlatModel> models A list of flat models to build the values to interpolate with.

string xParameterName The name of the parameter on the flat model to use to build the x variables for interpolation.

string yParameterName The name of the parameter on the flat model to use to build the y variables for interpolation.

string valueParameterName The name of the parameter on the flat model to interpolate.

double xValue The x value to interpolate for.

double yValue The y value to interpolate for.

bool extrapolate Whether to extrapolate or not.

Returns

double The interpolated value.

Examples

 Interpolate(RearWing.AeroBalanceCollection, "frh", "rrh", "ab", RideHeightFront, RideHeightRear, true)

Interpolate(List<FlatModel> models, List<string> parameterNames, string valueParameterName, List<double> parameterValues, bool extrapolate)â

Interpolates a collection of values with an n-dimensional linear interpolation algorithm.

Parameters

List<FlatModel> models A list of flat models to build the values to interpolate with.

List<string> parameterNames The names of the parameters on the flat model to use to build the interpolation.

string valueParameterName The name of the parameter on the flat model to interpolate.

List<double> parameterValues The value of each parameter to interpolate for.

bool extrapolate Whether to extrapolate or not.

Returns

double The interpolated value.

Examples

Interpolate(RearWing.AeroBalanceCollection, {"frh", "rrh", "roll", "yaw"}, "aeromap", {RideHeightFront, RideHeightRear, Roll, Yaw}, true)

LinFitâ

LinFit(List<double>, List<double>)Performs linear regression (y = m*x + b) on two equal-length numeric sequences: xValues independent, yValues dependent, any pair where either value is null or non-numeric will be skippedLinFit(List<FlatModel>, string, string)Performs linear regression (y = m*x + b) across a collection of FlatModels, using the numeric property named xValuesName as the independent variable and the property named yValuesName as the dependent variable. Both properties must contain the same number of values, any pair where either value is null or non-numeric will be skipped.LinFit(List<double>, List<double>, double)Performs linear regression and returns either the slope (coeffIndex=0) or intercept (coeffIndex=1)LinFit(List<FlatModel>, string, string, double)Performs linear regression across a collection of FlatModels and returns either the slope (coeffIndex=0) or intercept (coeffIndex=1)
LinFit(List<double> xValues, List<double> yValues)â

Performs linear regression (y = m*x + b) on two equal-length numeric sequences: xValues independent, yValues dependent, any pair where either value is null or non-numeric will be skipped

Parameters

List<double> xValues Collection of numeric values that form the independent-variable (x) data set. Units are accepted but stripped to their raw numeric values.

List<double> yValues Collection of numeric values that form the dependent-variable (y) data set. Must contain the same number of elements as xValues; units are stripped to raw numeric values.

Returns

List<double> Returns a List where index 0 is the slope (m) and index 1 is the intercept (b), both unitless.

LinFit(List<FlatModel> collection, string xValuesName, string yValuesName)â

Performs linear regression (y = m*x + b) across a collection of FlatModels, using the numeric property named xValuesName as the independent variable and the property named yValuesName as the dependent variable. Both properties must contain the same number of values, any pair where either value is null or non-numeric will be skipped.

Parameters

List<FlatModel> collection Collection of flat-model items that provide the observations. Every item must contain numeric display quantities whose names match xValuesName and yValuesName arguments.

string xValuesName Name of the numeric field in each model that supplies the X (independent) value

string yValuesName Name of the numeric field in each model that supplies the Y (dependent) value

Returns

List<double> Returns a List where index 0 is the slope (m) and index 1 is the intercept (b), both unitless.

LinFit(List<double> xValues, List<double> yValues, double coeffIndex)â

Performs linear regression and returns either the slope (coeffIndex=0) or intercept (coeffIndex=1)

Parameters

List<double> xValues Collection of numeric values that form the independent-variable (x) data set. Units are accepted but stripped to their raw numeric values.

List<double> yValues Collection of numeric values that form the dependent-variable (y) data set. Must contain the same number of elements as xValues; units are stripped to raw numeric values.

double coeffIndex Index of the coefficient to return: 0 for the slope (m), 1 for the intercept (b/constant). Matches the array indices returned by the overload without coeffIndex.

Returns

double Returns the slope (m) when coeffIndex=0, or the intercept (b) when coeffIndex=1, as a unitless double.

LinFit(List<FlatModel> collection, string xValuesName, string yValuesName, double coeffIndex)â

Performs linear regression across a collection of FlatModels and returns either the slope (coeffIndex=0) or intercept (coeffIndex=1)

Parameters

List<FlatModel> collection Collection of flat-model items that provide the observations. Every item must contain numeric display quantities whose names match xValuesName and yValuesName arguments.

string xValuesName Name of the numeric field in each model that supplies the X (independent) value

string yValuesName Name of the numeric field in each model that supplies the Y (dependent) value

double coeffIndex Index of the coefficient to return: 0 for the slope (m), 1 for the intercept (b/constant). Matches the array indices returned by the overload without coeffIndex.

Returns

double Returns the slope (m) when coeffIndex=0, or the intercept (b) when coeffIndex=1, as a unitless double.

LowerWhiskerâ

LowerWhisker(List<FlatModel>, string)Calculates the lower whisker of a specified parameter from a collection.LowerWhisker(List<FlatModel>, string, string)Calculates the lower whisker of a specified parameter from a collection, with the ability to filter the items included in the calculation.
LowerWhisker(List<FlatModel> items, string propertyName)â

Calculates the lower whisker of a specified parameter from a collection.

Parameters

List<FlatModel> items The items from which the lower whisker will be calculated.

string propertyName The name of the property that contains the value to be calculated.

Returns

double The lower whisker.

LowerWhisker(List<FlatModel> items, string propertyName, string conditionPropertyName)â

Calculates the lower whisker of a specified parameter from a collection, with the ability to filter the items included in the calculation.

Parameters

List<FlatModel> items The items from which the lower whisker will be calculated.

string propertyName The name of the property that contains the value to be calculated.

string conditionPropertyName The name of the property that returns a boolean specifying if the item should be included in the calculation. If true, the value is included.

Returns

double The lower whisker.

Maxâ

Max(params double[])Returns the largest of the specified numbers.
Max(params double[] values)â

Returns the largest of the specified numbers.

Parameters

params double[] values The numbers to compare.

Returns

double The specified number with the largest value.

Examples

Max(-3) // Returns -3
Max(2,3,4,2,-3,-12) // Returns 4

Medianâ

Median(List<FlatModel>, string)Calculates the median of a specified parameter from a collection.Median(List<FlatModel>, string, string)Calculates the median of a specified parameter from a collection, with the ability to filter the items included in the calculation.
Median(List<FlatModel> items, string propertyName)â

Calculates the median of a specified parameter from a collection.

Parameters

List<FlatModel> items The items from which the median will be calculated.

string propertyName The name of the property that contains the value to be calculated.

Returns

double The median.

Median(List<FlatModel> items, string propertyName, string conditionPropertyName)â

Calculates the median of a specified parameter from a collection, with the ability to filter the items included in the calculation.

Parameters

List<FlatModel> items The items from which the median will be calculated.

string propertyName The name of the property that contains the value to be calculated.

string conditionPropertyName The name of the property that returns a boolean specifying if the item should be included in the calculation. If true, the value is included.

Returns

double The median.

Minâ

Min(params double[])Returns the smallest of the specified numbers.
Min(params double[] values)â

Returns the smallest of the specified numbers.

Parameters

params double[] values The numbers to compare.

Returns

double The specified number with the smallest value.

Examples

Min(-2,3,5,-9) // Returns -9

Outliersâ

Outliers(List<FlatModel>, string)Calculates the outliers of a specified parameter from a collection.Outliers(List<FlatModel>, string, string)Calculates the outliers of a specified parameter from a collection, with the ability to filter the items included in the calculation.
Outliers(List<FlatModel> items, string propertyName)â

Calculates the outliers of a specified parameter from a collection.

Parameters

List<FlatModel> items

string propertyName The name of the property that contains the value to be calculated.

Returns

List<double> The outliers.

Outliers(List<FlatModel> items, string propertyName, string conditionPropertyName)â

Calculates the outliers of a specified parameter from a collection, with the ability to filter the items included in the calculation.

Parameters

List<FlatModel> items

string propertyName The name of the property that contains the value to be calculated.

string conditionPropertyName The name of the property that returns a boolean specifying if the item should be included in the calculation. If true, the value is included.

Returns

List<double> The outliers.

Piâ

Pi()Returns the constant value of Ï
Pi()â

Returns the constant value of Ï

Returns

double The constant value of Ï

PolyFitâ

PolyFit(List<double>, List<double>, double)Performs polynomial regression (y = c0 + c1x + c2x^2 + ... + cn*x^n) on two equal-length numeric sequencesPolyFit(List<FlatModel>, string, string, double)Performs polynomial regression across a collection of FlatModels, using the numeric property named xValuesName as the independent variable and the property named yValuesName as the dependent variablePolyFit(List<double>, List<double>, double, double)Performs polynomial regression and returns the coefficient at the specified indexPolyFit(List<FlatModel>, string, string, double, double)Performs polynomial regression across a collection of FlatModels and returns the coefficient at the specified index
PolyFit(List<double> xValues, List<double> yValues, double degree)â

Performs polynomial regression (y = c0 + c1x + c2x^2 + ... + cn*x^n) on two equal-length numeric sequences

Parameters

List<double> xValues Collection of numeric values that form the independent-variable (x) data set. Units are accepted but stripped to their raw numeric values.

List<double> yValues Collection of numeric values that form the dependent-variable (y) data set. Must contain the same number of elements as xValues; units are stripped to raw numeric values.

double degree The degree of the polynomial to fit (e.g., 2 for quadratic, 3 for cubic). Must be an integer between 1 and 100 inclusive, and the data set must contain at least degree+1 points.

Returns

List<double> Returns a List of coefficients where index i corresponds to the coefficient of x^i (index 0 is the constant term, index 1 is the linear coefficient, etc.), all unitless.

Examples

PolyFit(Select(Laps,"Speed"), Select(Laps,"Downforce"), 2) // Returns a list of coefficients [c0, c1, c2] for the quadratic fit

PolyFit(List<FlatModel> collection, string xValuesName, string yValuesName, double degree)â

Performs polynomial regression across a collection of FlatModels, using the numeric property named xValuesName as the independent variable and the property named yValuesName as the dependent variable

Parameters

List<FlatModel> collection Collection of flat-model items that provide the observations. Every item must contain numeric display quantities whose names match xValuesName and yValuesName arguments.

string xValuesName Name of the numeric field in each model that supplies the X (independent) value

string yValuesName Name of the numeric field in each model that supplies the Y (dependent) value

double degree The degree of the polynomial to fit (e.g., 2 for quadratic, 3 for cubic). Must be an integer between 1 and 100 inclusive, and the data set must contain at least degree+1 points.

Returns

List<double> Returns a List of coefficients where index i corresponds to the coefficient of x^i (index 0 is the constant term, index 1 is the linear coefficient, etc.), all unitless.

Examples

PolyFit(Laps, "Speed", "Downforce", 2) // Returns a list of coefficients [c0, c1, c2] for the quadratic fit

PolyFit(List<double> xValues, List<double> yValues, double degree, double coeffIndex)â

Performs polynomial regression and returns the coefficient at the specified index

Parameters

List<double> xValues Collection of numeric values that form the independent-variable (x) data set. Units are accepted but stripped to their raw numeric values.

List<double> yValues Collection of numeric values that form the dependent-variable (y) data set. Must contain the same number of elements as xValues; units are stripped to raw numeric values.

double degree The degree of the polynomial to fit (e.g., 2 for quadratic, 3 for cubic). Must be an integer between 1 and 100 inclusive, and the data set must contain at least degree+1 points.

double coeffIndex Index of the coefficient to return (0 for constant term, 1 for linear coefficient, 2 for quadratic coefficient, etc.). Must be between 0 and degree inclusive.

Returns

double Returns the coefficient at the specified index as a unitless double (coeffIndex=0 for constant, coeffIndex=1 for linear, etc.).

Examples

PolyFit(Select(Laps,"Speed"), Select(Laps,"Downforce"), 2, 0) // Returns the constant term (c0) of the quadratic fit

PolyFit(List<FlatModel> collection, string xValuesName, string yValuesName, double degree, double coeffIndex)â

Performs polynomial regression across a collection of FlatModels and returns the coefficient at the specified index

Parameters

List<FlatModel> collection Collection of flat-model items that provide the observations. Every item must contain numeric display quantities whose names match xValuesName and yValuesName arguments.

string xValuesName Name of the numeric field in each model that supplies the X (independent) value

string yValuesName Name of the numeric field in each model that supplies the Y (dependent) value

double degree The degree of the polynomial to fit (e.g., 2 for quadratic, 3 for cubic). Must be an integer between 1 and 100 inclusive, and the data set must contain at least degree+1 points.

double coeffIndex Index of the coefficient to return (0 for constant term, 1 for linear coefficient, 2 for quadratic coefficient, etc.). Must be between 0 and degree inclusive.

Returns

double Returns the coefficient at the specified index as a unitless double (coeffIndex=0 for constant, coeffIndex=1 for linear, etc.).

Examples

PolyFit(Laps, "Speed", "Downforce", 2, 1) // Returns the linear coefficient (c1) of the quadratic fit

Powerâ

Power(double, double)Computes a given number to a given power.
Power(double value, double power)â

Computes a given number to a given power.

Parameters

double value The base.

double power The power.

Returns

double The computed double value.

Examples

Power(2,2) // Returns 4
Power(4,0.5) // Returns 2
Power(2,-1) // Returns 0.5
Power(-2,2) // Returns 4

Radiansâ

Radians(double)Converts degrees into radians.
Radians(double value)â

Converts degrees into radians.

Parameters

double value A number in degrees.

Returns

double A number in radians.

Examples

Radians(180) // Returns Math.PI

Roundâ

Round(double, double)Rounds a value to the nearest integer or to the specified number of fractional digits.
Round(double value, double decimals)â

Rounds a value to the nearest integer or to the specified number of fractional digits.

Parameters

double value A number to be rounded.

double decimals The number of fractional digits in the return value.

Returns

double The rounded number. If value has fewer decimal places than decimals, it is returned unchanged.

Examples

Round(2.5,2) // Returns 2.5
Round(2.4563,2) // Returns 2.46
Round(-3.454364,0) // Returns -3

Signâ

Sign(double)Returns the arithmetic sign (+1, -1 or 0) of a supplied number.
Sign(double value)â

Returns the arithmetic sign (+1, -1 or 0) of a supplied number.

Parameters

double value The numerical value to determine the sign of.

Returns

double A value representing an arithmetic sign (1, -1 or 0).

Examples

Sign(1) // Returns 1
Sign(-2) // Returns -1
Sign(0) // Returns 0

Sinâ

Sin(double)Returns the sine of the specified number.
Sin(double value)â

Returns the sine of the specified number.

Parameters

double value The value to take the sine of.

Returns

double The sine.

Examples

Sin(0) // Returns 0
Sin(1.5707963267949) // Returns 1

Sqrtâ

Sqrt(double)Returns the square root of a specified number.
Sqrt(double value)â

Returns the square root of a specified number.

Parameters

double value The number whose square root is to be found.

Returns

double The positive square root.

Examples

Sqrt(4) // Returns 2

StdDevâ

StdDev(params double[])Calculates the population standard deviation (STDEV.P). Formula: sqrt(sum((x - mean)^2) / N), dividing by N.
StdDev(params double[] values)â

Calculates the population standard deviation (STDEV.P). Formula: sqrt(sum((x - mean)^2) / N), dividing by N.

Parameters

params double[] values The list of values from which to calculate the standard deviation.

Returns

double The population standard deviation (STDEV.P).

Examples

StdDev(5) // Returns 0
StdDev(2,4,4,4,5,5,7,9) // Returns 2

Sumâ

Sum(List<double>)Returns the sum of the items in a list.
Sum(List<double> values)â

Returns the sum of the items in a list.

Parameters

List<double> values The list to sum.

Returns

double The sum of all items supplied.

Tanâ

Tan(double)Returns the tangent of the specified number.
Tan(double value)â

Returns the tangent of the specified number.

Parameters

double value The value to take the tangent of.

Returns

double The tangent.

Examples

Tan(0) // Returns 0

ThirdQuartilâ

ThirdQuartil(List<FlatModel>, string)Calculates the thirdquartil of a specified parameter from a collection.ThirdQuartil(List<FlatModel>, string, string)Calculates the thirdquartil of a specified parameter from a collection, with the ability to filter the items included in the calculation.
ThirdQuartil(List<FlatModel> items, string propertyName)â

Calculates the thirdquartil of a specified parameter from a collection.

Parameters

List<FlatModel> items The items from which the third quartil will be calculated.

string propertyName The name of the property that contains the value to be calculated.

Returns

double The third quartil

ThirdQuartil(List<FlatModel> items, string propertyName, string conditionPropertyName)â

Calculates the thirdquartil of a specified parameter from a collection, with the ability to filter the items included in the calculation.

Parameters

List<FlatModel> items The items from which the third quartil will be calculated.

string propertyName The name of the property that contains the value to be calculated.

string conditionPropertyName The name of the property that returns a boolean specifying if the item should be included in the calculation. If true, the value is included.

Returns

double The third quartil.

Truncateâ

Truncate(double, double)Truncates a number to the specified number of decimals.Truncate(double)Truncates a number to 0 decimal places.
Truncate(double value, double count)â

Truncates a number to the specified number of decimals.

Parameters

double value The value to truncate.

double count The number of decimals to truncate to.

Returns

double A number with less than or equal to count decimals.

Examples

Truncate(-53.456677,2) // Returns -53.45
Truncate(-53.454677) // Returns -53

Truncate(double value)â

Truncates a number to 0 decimal places.

Parameters

double value The value to truncate.

Returns

double A number with no decimal places.

UpperWhiskerâ

UpperWhisker(List<FlatModel>, string)Calculates the upper whisker of a specified parameter from a collection.UpperWhisker(List<FlatModel>, string, string)Calculates the upper whisker of a specified parameter from a collection, with the ability to filter the items included in the calculation.
UpperWhisker(List<FlatModel> items, string propertyName)â

Calculates the upper whisker of a specified parameter from a collection.

Parameters

List<FlatModel> items The items from which the upper whisker will be calculated.

string propertyName The name of the property that contains the value to be calculated.

Returns

double The upper whisker.

UpperWhisker(List<FlatModel> items, string propertyName, string conditionPropertyName)â

Calculates the upper whisker of a specified parameter from a collection, with the ability to filter the items included in the calculation.

Parameters

List<FlatModel> items The items from which the upper whisker will be calculated.

string propertyName The name of the property that contains the value to be calculated.

string conditionPropertyName The name of the property that returns a boolean specifying if the item should be included in the calculation. If true, the value is included.

Returns

double The upper whisker.

String Manipulation Functionsâ

Concatenateâ

Concatenate(double | string | bool, params double[] | string[] | bool[])Join two or more values into one string.
Concatenate(double | string | bool value1, params double[] | string[] | bool[] value2)â

Join two or more values into one string.

Parameters

double | string | bool value1 The first string.

params double[] | string[] | bool[] value2 The second string.

Returns

string The joined string.

Examples

Concatenate("test1","-","test2") // Returns "test1-test2"
Concatenate("tes","t") // Returns "test"
Concatenate(null,"-","test2") // Returns "-test2"
Concatenate("test1","-",3) // Returns "test1-3"

Containsâ

Contains(string, string)Evaluates whether the first string contains the second string using case-sensitive checkContains(string, string, bool)Evaluates whether the first string contains the second string
Contains(string input, string value)â

Evaluates whether the first string contains the second string using case-sensitive check

Parameters

string input The input string to search within.

string value The substring to search for.

Returns

bool A boolean value indicating whether "value" is found within "input"

Contains(string input, string value, bool ignoreCase)â

Evaluates whether the first string contains the second string

Parameters

string input The input string to search within.

string value The substring to search for.

bool ignoreCase If true, performs a case-insensitive comparison.

Returns

bool A boolean value indicating whether "value" is found within "input"

GetCurrentUserPropertyâ

GetCurrentUserProperty(string)Returns the current username.
GetCurrentUserProperty(string parameter)â

Returns the current username.

Parameters

string parameter The property to retrieve from the user. Either "Username" or "DisplayName".

Returns

string The current username.

Examples

GetCurrentUserProperty("Username") // Returns "test@hh-dev.com"

GetThemeNameâ

GetThemeName()Returns the name of the current theme of the software on the users' computer.
GetThemeName()â

Returns the name of the current theme of the software on the users' computer.

Returns

string A string value of either "Light" or "Dark"

Leftâ

Left(string, double)Returns the first count characters of a string.
Left(string text, double count)â

Returns the first count characters of a string.

Parameters

string text The string to return characters from.

double count The number of characters to return. Must be a non-negative integer, and if a value is specified that is greater than the number of characters in the string, the entire string will be returned.

Returns

string A string of the specified characters.

Examples

Left("test",3) // Returns "tes"

Lengthâ

Length(string)Returns the length of a supplied string.
Length(string text)â

Returns the length of a supplied string.

Parameters

string text The string to compute the length of.

Returns

double A non-negative integer representing the length of the string.

Examples

Length("test") // Returns 4
Length("test")*2 // Returns 8

Lowerâ

Lower(string)Returns a copy of a string converted to lowercase.
Lower(string text)â

Returns a copy of a string converted to lowercase.

Parameters

string text The string to operate on.

Returns

string A lowercase string

Examples

Lower("TesT1") // Returns "test1"
Lower("1234") // Returns "1234"

Midâ

Mid(string, double, double)Returns a specified number of characters from the middle of a supplied string.
Mid(string text, double start, double count)â

Returns a specified number of characters from the middle of a supplied string.

Parameters

string text The string to copy from.

double start The 0-based index of the first character to copy.

double count The number of characters to copy.

Returns

string A substring copied from the supplied string.

Examples

Mid("test1",2,2) // Returns "st"

Properâ

Proper(string)Converts all characters in a supplied string to proper case.
Proper(string text)â

Converts all characters in a supplied string to proper case.

Parameters

string text The string to format.

Returns

string A string in proper case.

Examples

Proper("tesT1") // Returns "Test1"

Replaceâ

Replace(string, double, double, string)Copies a string and replaces part of it with a new substring.
Replace(string text, double start, double count, string replacement)â

Copies a string and replaces part of it with a new substring.

Parameters

string text The string to operate on.

double start The zero-based index of where to start the substitution in the base string.

double count The number of characters to replace in the base string. If 0, replacement will be inserted immediately before the index specified by start.

string replacement The substring to replace with.

Returns

string The new string with the substitution.

Examples

Replace("test",0,2,"yy") // Returns "yyst"
Replace("01234567",2,5,"Hello") // Returns "01Hello7"
Replace("0123456789",4,0,"Hello") // Returns "0123Hello456789"

Rightâ

Right(string, double)Returns a specified number of characters from the end of a string.
Right(string text, double count)â

Returns a specified number of characters from the end of a string.

Parameters

string text The string to copy from.

double count The number of characters to return.

Returns

string The specified substring.

Examples

Right("test",3) // Returns "est"

Splitâ

Split(string, string, bool, bool, bool)Split a string using the provided delimiter.Split(string, List<string>, bool, bool, bool)Split a string using the provided delimiter.
Split(string value, string delimiter, bool removeEmptyEntries, bool trimEntries, bool parseStringToDouble)â

Split a string using the provided delimiter.

Parameters

string value The string to split.

string delimiter The separator used to split the string value.

bool removeEmptyEntries Whether to omit elements that contain an empty string from the result.

bool trimEntries Whether to trim white-space characters from each substring in the result.

bool parseStringToDouble Whether to attempt to parse each substring to a double. If a single substring cannot be parsed into a double, the function will fail.

Returns

List<double> | List<string> The list of component substrings or parsed doubles.

Examples

Split("1,2,3,4,5,,", ",", true, false, true) // Returns new double[] {1,2,3,4,5}
Split("test\nhello\n world \n \n", "\n", true, true, false) // Returns new string[] {"test", "hello", "world"}

Split(string value, List<string> delimiters, bool removeEmptyEntries, bool trimEntries, bool parseStringToDouble)â

Split a string using the provided delimiter.

Parameters

string value The string to split.

List<string> delimiters A list of separators to split the string on.

bool removeEmptyEntries Whether to omit elements that contain an empty string from the result.

bool trimEntries Whether to trim white-space characters from each substring in the result.

bool parseStringToDouble Whether to attempt to parse each substring to a double. If a single substring cannot be parsed into a double, the function will fail.

Returns

List<double> | List<string> The list of component substrings or parsed doubles.

Examples

Split("1;2,3,4;5,,", {";", ","}, true, false, true) // Returns new double[] {1,2,3,4,5}
Split("test\nhello; world \n \n", {";", "\n"}, true, true, false) // Returns new string[] {"test", "hello", "world"}

StringToDateTimeâ

StringToDateTime(string, string, string)Returns a DateTime from the input string.
StringToDateTime(string dateTime, string timeZone, string pattern)â

Returns a DateTime from the input string.

Parameters

string dateTime The string to parse.

string timeZone The timezone to return. See time zones documentation for supported values.

string pattern The pattern datetime is expressed in.

Returns

DateTime The parsed DateTime.

Examples

StringToDateTime("2020-01-24 13:41", "America/Argentina/Buenos_Aires", "yyyy-MM-dd HH:mm")

StringToDoubleâ

StringToDouble(string)Parses a double from a string.
StringToDouble(string text)â

Parses a double from a string.

Parameters

string text The string to parse. Commas and dots both work as decimal separators. There may not be any other separators (e.g. "10,000" is parsed as 10, not 10000).

Returns

double The parsed double.

Examples

StringToDouble("3.5") // Returns 3.5
StringToDouble("3,5") // Returns 3.5

StripLettersâ

StripLetters(string)Removes all letters, special characters, and whitespaces from a string.StripLetters(string, string)Removes all non-numeric characters from a string based on the specific strip mode set as text.StripLetters(string, double)Removes all non-numeric characters from a string based on the specific strip mode set as double.
StripLetters(string text)â

Removes all letters, special characters, and whitespaces from a string.

Parameters

string text Value to strip from

Returns

string The stripped string.

Examples

StripLetters("Run 1") // Returns "1"

StripLetters(string text, string mode)â

Removes all non-numeric characters from a string based on the specific strip mode set as text.

Parameters

string text Value to strip from

string mode Strip Modes: âallâ: all non-numeric characters, âspecialâ: special characters only (any character that is not a letter, digit, or whitespace), âlettersâ: letters and whitespaces.

Returns

string The stripped string.

Examples

StripLetters("Run 1", "letters") // Returns "1"
StripLetters("$Run 1!", "special") // Returns "Run 1"
StripLetters("$Run 1!", "all") // Returns "1"

StripLetters(string text, double mode)â

Removes all non-numeric characters from a string based on the specific strip mode set as double.

Parameters

string text Value to strip from

double mode Strip Modes: 1: all non-numeric characters, 2: special characters only (any character that is not a letter, digit, or whitespace), 3: letters and whitespaces.

Returns

string The stripped string.

Examples

StripLetters("$Run 1!", 1) // Returns "1"
StripLetters("$Run 1!", 2) // Returns "Run 1"
StripLetters("Run 1", 3) // Returns "1"

Substituteâ

Substitute(string, string, string)Finds and substitues text in a string.
Substitute(string text, string old_Text, string new_Text)â

Finds and substitues text in a string.

Parameters

string text The base string to search.

string old_Text The substring to replace in text.

string new_Text The string to replace old_text with.

Returns

string The new string.

Examples

Substitute("test1","1","2") // Returns "test2"
Substitute("test1\r\ntest2",CRLF,"-") // Returns "test1-test2"

TextJoinâ

TextJoin(string, bool, params double[] | string[] | bool[] | DateTime[] | List<double>[] | List<string>[] | List<bool>[] | List<DateTime>[])Joins scalars and/or collections into one string with a delimiter
TextJoin(string delimiter, bool ignore_Empty, params double[] | string[] | bool[] | DateTime[] | List<double>[] | List<string>[] | List<bool>[] | List<DateTime>[] items)â

Joins scalars and/or collections into one string with a delimiter

Parameters

string delimiter Text to insert between joined items (e.g., ",", CRLF, " - ").

bool ignore_Empty If true, any item whose text representation is empty ("" or null) is skipped, preventing consecutive delimiters.

params double[] | string[] | bool[] | DateTime[] | List<double>[] | List<string>[] | List<bool>[] | List<DateTime>[] items One or more values or collections to join. Collections are expanded one level and each element is converted to text. At least one item is required.

Returns

string The concatenated text string

Examples

TextJoin("-",false,"Test1","Test2") // Returns "Test1-Test2"
TextJoin("-",true,"Test1","Test2","","Test3") // Returns "Test1-Test2-Test3"
TextJoin("-",false, Select(SetupCollection1,"CollectionText3")) // Returns "c-cc--cccc"
TextJoin("-",true, Select(SetupCollection1,"CollectionBoolean1")) // Returns "True-False-True-True"

ToSafeFileNameâ

ToSafeFileName(string)Converts a potentially unsafe string into a valid Windows file name.
ToSafeFileName(string input)â

Converts a potentially unsafe string into a valid Windows file name.

Parameters

string input Original string (e.g., from championship, event, or session name)

Returns

string A sanitized string safe to use as a file name.

Examples

ToSafeFileName("IMSA: Laguna Seca/24H*Setup_4*W") // Returns "IMSA_ Laguna Seca_24H_Setup_4_W"

ToStringâ

ToString(double | string | bool | JsonElement)Converts the input to a string.ToString(double, string)Formats a double using the supplied numeric format string.
ToString(double | string | bool | JsonElement value)â

Converts the input to a string.

Parameters

double | string | bool | JsonElement value The value to convert to a string.

Returns

string The converted string.

Examples

ToString(3) // Returns "3"
ToString(true) // Returns "True"

ToString(double value, string format)â

Formats a double using the supplied numeric format string.

Parameters

double value The double to convert.

string format The .NET numeric format string to use, applied with the current culture. Supports both standard (e.g. F2, N0, E2, P, G, R) and custom (e.g. 0.00, #.##, 0,0, 0.0E+00) numeric format strings.

Returns

string The formatted double as a string.

Examples

ToString(2.4, "F2") // Returns "2.40"
ToString(1, "F3") // Returns "1.000"

Upperâ

Upper(string)Returns a copy of this string converted to uppercase.
Upper(string text)â

Returns a copy of this string converted to uppercase.

Parameters

string text The string to convert to uppercase.

Returns

string The uppercase equivalent of the current string.

Examples

Upper("test1") // Returns "TEST1"

Logical Functionsâ

FirstNotNullâ

FirstNotNull(params double[] | string[] | bool[] | DateTime[] | FlatModel[] | List<FlatModel>[] | List<double>[] | List<string>[] | JsonElement[] | List<bool>[] | List<DateTime>[])Returns the first parameter that is not null from a list of parameters.
FirstNotNull(params double[] | string[] | bool[] | DateTime[] | FlatModel[] | List<FlatModel>[] | List<double>[] | List<string>[] | JsonElement[] | List<bool>[] | List<DateTime>[] values)â

Returns the first parameter that is not null from a list of parameters.

Parameters

params double[] | string[] | bool[] | DateTime[] | FlatModel[] | List<FlatModel>[] | List<double>[] | List<string>[] | JsonElement[] | List<bool>[] | List<DateTime>[] values The parameters to search.

Returns

double The first parameter that is not null.

Examples

FirstNotNull(2.5, 2.3) // Returns 2.5
FirstNotNull(Car.Color, "#FF0000") // Returns Car.Color if it is defined, otherwise "#FF0000" will be returned

GetPropertyValueâ

GetPropertyValue(Part, string, Type)Returns a PartProperty from a Part. Allows for dynamic part property access.
GetPropertyValue(Part part, string parameter, Type type)â

Returns a PartProperty from a Part. Allows for dynamic part property access.

Parameters

Part part The part to access.

string parameter The name of the property on the part.

Type type The type the specified property will return.

Returns

double The found PartProperty of the specified type.

Examples

GetPropertyValue(SpringFL,"Rate","double") // Returns the double value of the property "SpringFL.Rate"
GetPropertyValue(ARBFront,Concatenate("kArb_",PosFL.Name,"_",ARBPosFR.Name),"double") // Returns ARBFront.kArb_1_1 if ARBPosFL & FR are equal to "1".

Ifâ

If(bool, double | string | bool | DateTime | FlatModel | List<FlatModel> | List<double> | List<string> | JsonElement | List<bool> | List<DateTime>, double | string | bool | DateTime | FlatModel | List<FlatModel> | List<double> | List<string> | JsonElement | List<bool> | List<DateTime>)Returns the second parameter if the first is true, and the third if the first parameter is false.
If(bool condition, double | string | bool | DateTime | FlatModel | List<FlatModel> | List<double> | List<string> | JsonElement | List<bool> | List<DateTime> trueValue, double | string | bool | DateTime | FlatModel | List<FlatModel> | List<double> | List<string> | JsonElement | List<bool> | List<DateTime> falseValue)â

Returns the second parameter if the first is true, and the third if the first parameter is false.

Parameters

bool condition Condition determining which parameter is returned

double | string | bool | DateTime | FlatModel | List<FlatModel> | List<double> | List<string> | JsonElement | List<bool> | List<DateTime> trueValue Parameter to return if the first is true

double | string | bool | DateTime | FlatModel | List<FlatModel> | List<double> | List<string> | JsonElement | List<bool> | List<DateTime> falseValue Parameter to return if the first is false.

Returns

double The second parameter if the first is true, and the third if the first parameter is false.

Examples

If(1>0,"Correct","Incorrect") // Returns "Correct"

IsNullâ

IsNull(double | string | bool | DateTime | FlatModel | JsonElement)Returns true if the input value is null and false otherwise.
IsNull(double | string | bool | DateTime | FlatModel | JsonElement value)â

Returns true if the input value is null and false otherwise.

Parameters

double | string | bool | DateTime | FlatModel | JsonElement value The value to validate.

Returns

bool A boolean value indicating if the input is null or not.

Examples

IsNull("") // Returns true
IsNull(2) // Returns false
IsNull(2+5) // Returns false

Date Time Functionsâ

DateTimeToStringâ

DateTimeToString(DateTime, string)Formats a DateTime as a string using the provided format.DateTimeToString(DateTime, string, string)Formats a DateTime as a string using the specified format in the specified time zone
DateTimeToString(DateTime dateTime, string format)â

Formats a DateTime as a string using the provided format.

Parameters

DateTime dateTime The DateTime to format.

string format The string to format with.

Returns

string The formatted string.

Examples

DateTimeToString(SetupDateTime3,"yyyy") // Returns "2025"
DateTimeToString(SetupDateTime3,"ddd, MMM dd, yyyy HH:mm") // Returns "Wed, May 21, 2025 03:00"

DateTimeToString(DateTime dateTime, string format, string timezone)â

Formats a DateTime as a string using the specified format in the specified time zone

Parameters

DateTime dateTime The DateTime to format.

string format The string to format with.

string timezone The timezone for conversion. See time zones documentation for supported values.

Returns

string

Examples

DateTimeToString(SetupDateTime3,"ddd, MMM dd, yyyy HH:mm", "UTC") // Returns "Wed, May 21, 2025 03:00"
DateTimeToString(SetupDateTime3,"ddd, MMM dd, yyyy HH:mm", "America/Los_Angeles") // Returns "Tue, May 20, 2025 20:00"

Nowâ

Now()Returns an Instant representing the exact time the function is called in UTC.Now(string)Returns an Instant representing the exact time the function is called in the specified timezone.
Now()â

Returns an Instant representing the exact time the function is called in UTC.

Returns

DateTime The Instant representing the exact time the function is called.

Now(string timeZone)â

Returns an Instant representing the exact time the function is called in the specified timezone.

Parameters

string timeZone The timezone the returned Instant is expressed in. See time zones documentation for supported values.

Returns

DateTime The Instant representing the exact time the function is called.

Flat Model Functionsâ

CalculateChangesâ

CalculateChanges(FlatModel, FlatModel)Returns a string that lists the differences between two flat models. The output of this function is impacted by any applicable Change Formatter that is defined.CalculateChanges(FlatModel, FlatModel, string)Returns a string that lists the differences between two flat models, formatted using the specified Change Formatter profile.
CalculateChanges(FlatModel initial, FlatModel current)â

Returns a string that lists the differences between two flat models. The output of this function is impacted by any applicable Change Formatter that is defined.

Parameters

FlatModel initial The first flat model.

FlatModel current The second flat model.

Returns

string The string listing the differences.

Examples

CalculateChanges(Previous,this) // Returns "Setup Double 1: 1.1 to 1\r\nSetup Double 2: 2.2 to 2\r\nSetup Double 3: 3.3 to <not set>"

CalculateChanges(FlatModel initial, FlatModel current, string changeFormatterName)â

Returns a string that lists the differences between two flat models, formatted using the specified Change Formatter profile.

Parameters

FlatModel initial The first flat model.

FlatModel current The second flat model.

string changeFormatterName The name of the Change Formatter profile to apply to the result.

Returns

string The string listing the differences.

Examples

CalculateChanges(Previous, this, "My Formatter") // Returns "Setup Double 1: 1.1 to 1\r\nSetup Double 2: 2.2 to 2\r\nSetup Double 3: 3.3 to <not set>"

GetCurrentUserâ

GetCurrentUser()Returns the current user.
GetCurrentUser()â

Returns the current user.

Returns

FlatModel Returns the current user.

Examples

GetCurrentUser().Username // Returns "test@hh-dev.com"

GetMeasurementâ

GetMeasurement(List<FlatModel>, DateTime)Returns the last measurement before the passed in datetimeGetMeasurement(List<FlatModel>, string)Returns the last measurement before the passed in datetime
GetMeasurement(List<FlatModel> measurements, DateTime dateTime)â

Returns the last measurement before the passed in datetime

Parameters

List<FlatModel> measurements The assembly iteration or part item measurements

DateTime dateTime Datetime that is used to search for the last measurement for that value

Returns

FlatModel An assembly iteration or part item measurement

Examples

GetMeasurement(SpringFLPartItem.PartItemMeasurements, Event.StartDate).Stiffness // Returns The value of the Stiffness parameter of the last part item measurement, before the start of the event

GetMeasurement(List<FlatModel> measurements, string dateTimeText)â

Returns the last measurement before the passed in datetime

Parameters

List<FlatModel> measurements The assembly iteration or part item measurements

string dateTimeText Datetime that is used to search for the last measurement for that value

Returns

FlatModel An assembly iteration or part item measurement

Examples

GetMeasurement(SpringFLPartItem.PartItemMeasurements, "2024-01-24 13:41").Stiffness // Returns The value of the Stiffness parameter of the last part item measurement, before "2024-01-24 13:41"

GetMileageâ

GetMileage(FlatModel, FlatModel)Get the mileage a part item or assembly iteration accumulated for a given setup. If the associated event is ongoing, the mileage is calculated on-device, otherwise the values from the last server calculation are used. If mileage has not been calculated for the setup or item yet, no value is returned.
GetMileage(FlatModel trackingEntity, FlatModel item)â

Get the mileage a part item or assembly iteration accumulated for a given setup. If the associated event is ongoing, the mileage is calculated on-device, otherwise the values from the last server calculation are used. If mileage has not been calculated for the setup or item yet, no value is returned.

Parameters

FlatModel trackingEntity The mileage tracking entity to which part items and/or assembly iterations are assigned. Currently this must be a setup.

FlatModel item Either a part item or assembly iteration.

Returns

FlatModel The calculated mileage, or no value when mileage has not been calculated for the setup or item yet.

Lookupâ

Lookup(List<FlatModel>, string, double | string | bool)Finds the first flat model in a collection where the target property matches a specified value.Lookup(List<FlatModel>, string, double | string | bool, bool)Finds a flat model in a collection whose target property matches a specified value, allowing the user to choose whether to return the first or the last matching entry.
Lookup(List<FlatModel> collection, string targetPropertyName, double | string | bool targetValue)â

Finds the first flat model in a collection where the target property matches a specified value.

Parameters

List<FlatModel> collection The collection to search.

string targetPropertyName The target property name.

double | string | bool targetValue The target property value to look for.

Returns

FlatModel The flat model, if found.

Examples

Lookup(Event.Championship.Account.BrakeSets, "Id", NBrakeSetFrontID) // Returns The first brake set found with an "Id" equivalent to the value stored in "NBrakeSetFrontID"

Lookup(List<FlatModel> collection, string targetPropertyName, double | string | bool targetValue, bool searchLast)â

Finds a flat model in a collection whose target property matches a specified value, allowing the user to choose whether to return the first or the last matching entry.

Parameters

List<FlatModel> collection The collection to search.

string targetPropertyName The target property name.

double | string | bool targetValue The target property value to look for.

bool searchLast Controls whether the last result from the collection should be returned

Returns

FlatModel The flat model, if found.

LookupClosestâ

LookupClosest(List<FlatModel>, string, double | DateTime)Finds the flat model in a collection where the target property is closest to a specified value.
LookupClosest(List<FlatModel> closest, string targetPropertyName, double | DateTime targetValue)â

Finds the flat model in a collection where the target property is closest to a specified value.

Parameters

List<FlatModel> closest The collection to search.

string targetPropertyName The target property name.

double | DateTime targetValue The target property value to look for.

Returns

FlatModel The flat model, if found.

Selectâ

Select(List<FlatModel>, string)Return a list of property values from a collection of flat models.
Select(List<FlatModel> collection, string targetPropertyName)â

Return a list of property values from a collection of flat models.

Parameters

List<FlatModel> collection The collection to iterate over.

string targetPropertyName The property name to return from each flat model.

Returns

List<double> A list with the same number of items as collection containing the property values found on each respective item.

Whereâ

Where(List<FlatModel>, string)Return a collection filtered by the designated property name where it is equal to true.
Where(List<FlatModel> collection, string targetBooleanPropertyName)â

Return a collection filtered by the designated property name where it is equal to true.

Parameters

List<FlatModel> collection The collection to filter.

string targetBooleanPropertyName The property name to evaluate for true to filter the input collection.

Returns

List<FlatModel> A list of the collection items where the defined property is equal to true.

Examples

Where(SessionLaps, "IncludeInCalculations")

JSON Functionsâ

AddJsonObjectâ

AddJsonObject(JsonElement, string, string)Adds a new, empty JSON object to the JSON element provided.
AddJsonObject(JsonElement json, string path, string name)â

Adds a new, empty JSON object to the JSON element provided.

Parameters

JsonElement json The JSON object to add to.

string path The path to add the new object to.

string name The name of the new, empty JSON object.

Returns

JsonElement The resultant JSON object.

AddJsonValueâ

AddJsonValue(JsonElement, string, string, double | string | bool | DateTime)Adds a value to a JSON object.
AddJsonValue(JsonElement json, string path, string name, double | string | bool | DateTime value)â

Adds a value to a JSON object.

Parameters

JsonElement json JSON object to add to.

string path Path to add the new object to.

string name The name of the new value.

double | string | bool | DateTime value The new value to add.

Returns

JsonElement The resultant JSON object.

FindJsonObjectFromJsonObjectArrayâ

FindJsonObjectFromJsonObjectArray(JsonElement, string, string, string)Searches for and returns the first JSON object within a JSON array that matches a specified search criteria.
FindJsonObjectFromJsonObjectArray(JsonElement jsonElement, string path, string pathToSearch, string valueToFind)â

Searches for and returns the first JSON object within a JSON array that matches a specified search criteria.

Parameters

JsonElement jsonElement The JSON object to search.

string path The path to the JSON array.

string pathToSearch The path to the value to check against.

string valueToFind The value to match.

Returns

JsonElement The found JSON object.

GetBooleanFromJsonElementâ

GetBooleanFromJsonElement(JsonElement, string)Extracts a boolean value from an input JSON object, based on the input path.
GetBooleanFromJsonElement(JsonElement json, string path)â

Extracts a boolean value from an input JSON object, based on the input path.

Parameters

JsonElement json The JSON object to search in.

string path The path to the boolean value. Supports indices if an item from array is to be retrieved.

Returns

bool The found boolean value.

Examples

GetStringFromJsonElement(jsonObject, "Car.FlSuspension.Points.2.IsInboard") // Returns boolean value (e.g. "False")

GetDoubleFromJsonElementâ

GetDoubleFromJsonElement(JsonElement, string)Extracts a double value from an input JSON object, based on the input path.
GetDoubleFromJsonElement(JsonElement json, string path)â

Extracts a double value from an input JSON object, based on the input path.

Parameters

JsonElement json The JSON object to search in.

string path The path to the double value. Supports indices if an item from array is to be retrieved.

Returns

double The found double value.

Examples

GetDoubleFromJsonElement(jsonObject, "Car.FlSuspension.Points.2.Coordinates.X") // Returns double value (e.g. "2.5")

GetJsonFromOtherProfileâ

GetJsonFromOtherProfile(string, FlatModel)Returns the JSON from another profile.
GetJsonFromOtherProfile(string profileName, FlatModel exportScope) â

Returns the JSON from another profile.

Parameters

string profileName Profile name to retrieve from.

FlatModel exportScope The scope for the export.

Returns

JsonElement The JSON in the other profile.

GetJsonObjectFromJsonElementâ

GetJsonObjectFromJsonElement(JsonElement, string)Extracts one JSON object from another JSON object, based on an input path.
GetJsonObjectFromJsonElement(JsonElement jsonElement, string path)â

Extracts one JSON object from another JSON object, based on an input path.

Parameters

JsonElement jsonElement The parent JSON object.

string path The path at which the child JSON object is located. The path supports indices if an item from an array is to be retrieved.

Returns

string The found child JSON object.

Examples

GetJsonObjectFromJsonElement(jsonObject, "Car.FlSuspension.Points.2.Coordinates") // Returns a JSON object (e.g. { "X": 2.5, "Y": 1 })

GetStringFromJsonElementâ

GetStringFromJsonElement(JsonElement, string)Extracts a string value from an input JSON object, based on the input path.
GetStringFromJsonElement(JsonElement json, string path)â

Extracts a string value from an input JSON object, based on the input path.

Parameters

JsonElement json The JSON object to search in.

string path The path to the string value. Supports indices if an item from array is to be retrieved.

Returns

string The found string value.

Examples

GetStringFromJsonElement(jsonObject, "Car.FlSuspension.Points.2.Coordinates.Comments) // Returns the found "Comments" property.

IsJsonPathValidâ

IsJsonPathValid(JsonElement, string)Checks if the provided path is valid in the provided JsonElement.
IsJsonPathValid(JsonElement json, string path)â

Checks if the provided path is valid in the provided JsonElement.

Parameters

JsonElement json The JSON object to validate against.

string path The path to validate.

Returns

bool A boolean indicating whether the path is valid or not.

ParseJsonâ

ParseJson(string)Parses the provided string and returns the parsed string as a JSON object.
ParseJson(string json)â

Parses the provided string and returns the parsed string as a JSON object.

Parameters

string json The string to parse to JSON.

Returns

JsonElement The parsed JSON object.

Examples

ParseJson(ReadAttachedFile(FrontSpring, "SpringData")) // Returns the parsed attached JSON file

SelectBooleanFromJsonObjectArrayâ

SelectBooleanFromJsonObjectArray(JsonElement, string, string)Extracts a list of boolean values from objects in an array within the input JSON object, based on an input path.
SelectBooleanFromJsonObjectArray(JsonElement json, string path, string propertyToSelect)â

Extracts a list of boolean values from objects in an array within the input JSON object, based on an input path.

Parameters

JsonElement json The base JSON object.

string path The path the list can be found at in the json object.

string propertyToSelect The property name to return from each item in the list at path.

Returns

List<bool> A list of booleans of the same length as the list found at path containing the values of PropertyToSelect.

Examples

SelectBooleanFromJsonObjectArray(jsonObject, "Car.FlSuspension.Points", "IsValid") // Returns A list containing the values of the "IsValid" property on each item in the "Car.FlSuspension.Points" list in the base JSON object.

SelectDoubleFromJsonObjectArrayâ

SelectDoubleFromJsonObjectArray(JsonElement, string, string)Extracts a list of boolean values from objects in an array within the input JSON object, based on an input path.
SelectDoubleFromJsonObjectArray(JsonElement json, string path, string propertyToSelect)â

Extracts a list of boolean values from objects in an array within the input JSON object, based on an input path.

Parameters

JsonElement json The base JSON object.

string path The path the list can be found at in the json object.

string propertyToSelect The property name to return from each item in the list at path.

Returns

List<double> A list of doubles of the same length as the list found at path containing the values of PropertyToSelect.

Examples

SelectDoubleFromJsonObjectArray(jsonObject, "Car.FlSuspension.Points", "Distance") // Returns A list containing the values of the "Distance" property on each item in the "Car.FlSuspension.Points" list in the base JSON object.

SelectStringFromJsonObjectArrayâ

SelectStringFromJsonObjectArray(JsonElement, string, string)Extracts a list of string values from objects in an array within the input JSON object, based on an input path.
SelectStringFromJsonObjectArray(JsonElement json, string path, string propertyToSelect)â

Extracts a list of string values from objects in an array within the input JSON object, based on an input path.

Parameters

JsonElement json The base JSON object.

string path The path the list can be found at in the json object.

string propertyToSelect The property name to return from each item in the list at path.

Returns

List<string> A list of strings of the same length as the list found at path containing the values of PropertyToSelect.

Examples

SelectStringFromJsonObjectArray(jsonObject, "Car.FlSuspension.Points", "Name") // Returns A list containing the values of the "Name" property on each item in the "Car.FlSuspension.Points" list in the base JSON object.

SubstituteJsonValueâ

SubstituteJsonValue(JsonElement, string, double | string | bool | JsonElement, bool)Replace a specified item in a JSON object.SubstituteJsonValue(JsonElement, string, double, bool, string)Replace a specified item in a JSON object with formatting applied.
SubstituteJsonValue(JsonElement json, string path, double | string | bool | JsonElement newValue, bool ignoreNull)â

Replace a specified item in a JSON object.

Parameters

JsonElement json The base JSON object.

string path The path to the element to replace.

double | string | bool | JsonElement newValue The new value.

bool ignoreNull Whether to substitue newValue if it is null or not. If false, and newValue evaluates to null, nothing will be done.

Returns

JsonElement The resultant JSON object.

SubstituteJsonValue(JsonElement json, string path, double newValue, bool ignoreNull, string formatString)â

Replace a specified item in a JSON object with formatting applied.

Parameters

JsonElement json The base JSON object.

string path The path to the element to replace.

double newValue The new value.

bool ignoreNull Whether to substitue newValue if it is null or not. If false, and newValue evaluates to null, nothing will be done.

string formatString If newValue is a double, this format string will be applied to it before substituting.

Returns

JsonElement The resultant JSON object.

Attached File Functionsâ

AttachedFileExistsâ

AttachedFileExists(FlatModel, string)Searches for an attached file on a flat model, returns true if there is a file specified with the given name on the specified entity.
AttachedFileExists(FlatModel model, string attachedFileName)â

Searches for an attached file on a flat model, returns true if there is a file specified with the given name on the specified entity.

Parameters

FlatModel model The flat model the attached file property belongs to.

string attachedFileName The name of the attached file property to look for.

Returns

bool A boolean representing whether there is a file attached or not.

Examples

AttachedFileExists(FrontSpring, "SpringData") // Returns true if the file exists, false otherwise.

NumberOfAttachedFilesâ

NumberOfAttachedFiles(FlatModel, string)Returns the number of files in a group of attached files.
NumberOfAttachedFiles(FlatModel model, string attachedFileGroupName)â

Returns the number of files in a group of attached files.

Parameters

FlatModel model

string attachedFileGroupName The name of the attached file group.

Returns

double

Examples

NumberOfAttachedFiles(this, "AttachedFileGroup")

ReadAttachedFileâ

ReadAttachedFile(FlatModel, string)Reads the contents of an attached file on a flat model and returns the contents as a string. Cannot be used on an attached file property that allows multiple files.
ReadAttachedFile(FlatModel model, string attachedFileName)â

Reads the contents of an attached file on a flat model and returns the contents as a string. Cannot be used on an attached file property that allows multiple files.

Parameters

FlatModel model The flat model that contains the attached file property.

string attachedFileName The name of the attached file property.

Returns

string The read file as a string.

Examples

ReadAttachedFile(FrontSpring, "SpringData") // Returns the contents of the "SpringData" file, if any exists.
