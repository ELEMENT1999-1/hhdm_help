---
url: https://help.hh-dm.com/event-entities/tyre-wear/
---

On this pageTyre Wear

noteThis view can be customized using a CGD. If a CGD with the name 'Default'
exists in the Tyre Wear Definition, then the top section of the view is getting replaced with the
CGD and then the view may not match the examples shown in this page.

The tyre wear view can be accessed from the event tab of the ribbon bar:

Add a wear sheetâ

Press the add wear sheet button on the ribbon bar. A window will pop up:

Select the tyre set for which the wear sheet is being created. Select the last run in which this set was used before taking the measurement. The reference measurement mode can either be first or most recent. When a wear sheet is created there are fields to enter the initial measurements and the current measurements. The reference measurement mode controls which measurement is used as the reference. If the mode is first, then the first measurement will be used as the reference (i.e. from when the tyre was new). If the mode is most recent then the most recent measurement will be used as the reference.

Calculationsâ

Per-Corner Wear Percentageâ

For each tyre corner (FL, FR, RL, RR), the wear percentage is calculated as:

For each measurement point i:

usableTread[i] = initialValue[i] - minTreadDepth

wear[i] = initialValue[i] - currentValue[i]

wearPercent[i] = (wear[i] / usableTread[i]) * 100

XxWear(%) = Max(wearPercent[i]) where i is each measurement point on the tyre and i = 0 is the most inside hole

In other words: XxWear(%) = Max((initialDepth[i] - currentDepth[i]) / (initialDepth[i] - minTreadDepth) * 100) for all measurement points

In the HH Data Management math language the default FL Total Wear % can be calculated like:
Max((Select(FLInitialTyreWearMeasurement.TyreWearMeasurementItems,"Value") - Select(FLTyreWearMeasurement.TyreWearMeasurementItems,"Value"))/(Select(FLInitialTyreWearMeasurement.TyreWearMeasurementItems,"Value") - FirstNotNull(MinimumTreadDepth, FLTyre.Tyre.TyreSpecification.MinimumTreadDepth)))

Wear Balance Ratiosâ

totalWear = FlWear(%) + FrWear(%) + RlWear(%) + RrWear(%)

Front Balance = ((FlWear(%) + FrWear(%)) / totalWear) * 100

Rear Balance = ((RlWear(%) + RrWear(%)) / totalWear) * 100

Left Balance = ((FlWear(%) + RlWear(%)) / totalWear) * 100

Right Balance = ((FrWear(%) + RrWear(%)) / totalWear) * 100

Stint Projectionsâ

WearPerStint = XxWear(%) / (numberOfLapsCompleted / expectedStintLength)

TheoNumberOfStints = 100 / wearPerStint

Notesâ

All balance calculations return null if any corner wear percentage is null

If totalWear = 0, all balance ratios are set to null

Wear percentage calculation requires valid initial and current measurements with positive usable tread

Calculation Customizationsâ

The display of calculated values can get customized by math parameters. For every cell in the picture above, there is
a predefined math parameter name. If a math parameter with
that name exists in the Tyre Wear Sheet Definition, then the result of this math parameter
gets displayed in the cell, instead of the internally calculated value. It's important that the return type of the math parameter
is 'Double'. Note that it's not necessary to create all math parameters if only some calculations need to get customized. The names are listed below:

Total Wear %:

Math Parameter NameDefault Parameter NameFLWearPercentCustomizationFlWearPercentFRWearPercentCustomizationFrWearPercentRLWearPercentCustomizationRlWearPercentRRWearPercentCustomizationRrWearPercent
% Wear/Stint:

Math Parameter NameDefault Parameter NameFLWearPerStintCustomizationFlWearPerStintFRWearPerStintCustomizationFrWearPerStintRLWearPerStintCustomizationRlWearPerStintRRWearPerStintCustomizationRrWearPerStint
Theo # Stint:

Math Parameter NameDefault Parameter NameFLTheoNumberOfStintsCustomizationFlTheoNumberOfStintsFRTheoNumberOfStintsCustomizationFrTheoNumberOfStintsRLTheoNumberOfStintsCustomizationRlTheoNumberOfStintsRRTheoNumberOfStintsCustomizationRrTheoNumberOfStints
F/R Balance %:

Math Parameter NameDefault Parameter NameFrontWearRatioCustomizationFrontWearRatioRearWearRatioCustomizationRearWearRatio
L/R Balance %:

Math Parameter NameDefault Parameter NameLeftWearRatioCustomizationLeftWearRatioRightWearRatioCustomizationRightWearRatio
Add a picture to a wear sheetâ

Files can be attached to tyre wear sheets by clicking on the photos tab. The tab has four attached file views that allow photos (or other types of files) to be attached and linked to each tyre in the wear sheet.

View Tyre Wear as a deltaâ

Tyre wear can be viewed as a delta comparison that assumes the initial measurement as a zero'd baseline. This will more easily identify uneven wear characteristics on a tyre.

Tyre Wear Comparisonâ

The Tyre Wear Comparison view allows the user to compare wear between tyre sets and can be accessed from the event tab of the ribbon bar:
