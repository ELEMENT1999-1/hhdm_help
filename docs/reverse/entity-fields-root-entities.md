# Core.Entities 根实体字段摘要

> 来源：`entity-fields-full.csv`（REA `inspect_managed_members` fields）
> 排除：`*AttachedFile*`、`*CollectionItem*`、`*JsonConverter*`

## AccountInfo

- `HasAccess` : bool
- `Id` : string
- `Version` : string

## AccountOptions

- `AccountId` : string
- `AccountOptionsAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6120 (HHDev.DataManagement.Core.Entities.AccountOptionsAttachedFile)>
- `AccountOptionsCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:6124 (HHDev.DataManagement.Core.Entities.AccountOptionsCollectionItem)>
- `AssemblyIterationHistoryTypes` : class:213 (System.Collections.Generic.List`1)<class:6328 (HHDev.DataManagement.Core.Entities.AssemblyIterationHistoryType)>
- `AssemblyIterations` : class:213 (System.Collections.Generic.List`1)<class:6160 (HHDev.DataManagement.Core.Entities.AssemblyIteration)>
- `AssemblyTypes` : class:213 (System.Collections.Generic.List`1)<class:5840 (HHDev.DataManagement.Core.Entities.AssemblyType)>
- `BlockLoading` : bool
- `BrakeDiscs` : class:213 (System.Collections.Generic.List`1)<class:6420 (HHDev.DataManagement.Core.Entities.BrakeDisc)>
- `BrakeDiscSpecifications` : class:213 (System.Collections.Generic.List`1)<class:6552 (HHDev.DataManagement.Core.Entities.BrakeDiscSpecification)>
- `BrakePads` : class:213 (System.Collections.Generic.List`1)<class:6628 (HHDev.DataManagement.Core.Entities.BrakePad)>
- `BrakePadSpecifications` : class:213 (System.Collections.Generic.List`1)<class:6760 (HHDev.DataManagement.Core.Entities.BrakePadSpecification)>
- `BrakeSets` : class:213 (System.Collections.Generic.List`1)<class:6836 (HHDev.DataManagement.Core.Entities.BrakeSet)>
- `BrakeWearUnit` : string
- `CarManufacturers` : class:213 (System.Collections.Generic.List`1)<class:7104 (HHDev.DataManagement.Core.Entities.CarManufacturer)>
- `Cars` : class:213 (System.Collections.Generic.List`1)<class:5864 (HHDev.DataManagement.Core.Entities.Car)>
- `Categories` : class:213 (System.Collections.Generic.List`1)<class:7208 (HHDev.DataManagement.Core.Entities.Category)>
- `Championships` : class:213 (System.Collections.Generic.List`1)<class:7244 (HHDev.DataManagement.Core.Entities.Championship)>
- `ChangeFormatterProfiles` : class:213 (System.Collections.Generic.List`1)<class:7416 (HHDev.DataManagement.Core.Entities.ChangeFormatterProfile)>
- `ColumnItemDisplayDefinitions` : class:213 (System.Collections.Generic.List`1)<class:7432 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayDefinition)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CreateTyreTransactions` : bool
- `CustomGridDisplayDefinitions` : class:213 (System.Collections.Generic.List`1)<class:7448 (HHDev.DataManagement.Core.Entities.CustomGridDisplayDefinition)>
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `CustomViewDefinitions` : class:213 (System.Collections.Generic.List`1)<class:7476 (HHDev.DataManagement.Core.Entities.CustomViewDefinition)>
- `DataAnalysisProfiles` : class:213 (System.Collections.Generic.List`1)<class:7484 (HHDev.DataManagement.Core.Entities.DataAnalysisProfile)>
- `DefaultSectorsPerTrackConfiguration` : i4
- `DistanceUnit` : string
- `Drivers` : class:213 (System.Collections.Generic.List`1)<class:7496 (HHDev.DataManagement.Core.Entities.Driver)>
- `EngineerNotesCategories` : class:213 (System.Collections.Generic.List`1)<class:7532 (HHDev.DataManagement.Core.Entities.EngineerNotesCategory)>
- `ExcelExportProfiles` : class:213 (System.Collections.Generic.List`1)<class:8180 (HHDev.DataManagement.Core.Entities.ExcelExportProfile)>
- `FuelCountDirection` : valuetype:6044 (HHDev.DataManagement.Core.Entities.eFuelCountDirection)
- `Id` : string
- `IssueListCategories` : class:213 (System.Collections.Generic.List`1)<class:8204 (HHDev.DataManagement.Core.Entities.IssueListCategory)>
- `IssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8328 (HHDev.DataManagement.Core.Entities.IssueListIssue)>
- `IssueListIssueTypes` : class:213 (System.Collections.Generic.List`1)<class:8484 (HHDev.DataManagement.Core.Entities.IssueListIssueType)>
- `IssueLists` : class:213 (System.Collections.Generic.List`1)<class:8184 (HHDev.DataManagement.Core.Entities.IssueList)>
- `IssueListWorkflows` : class:213 (System.Collections.Generic.List`1)<class:8628 (HHDev.DataManagement.Core.Entities.IssueListWorkflow)>
- `JobListCategories` : class:213 (System.Collections.Generic.List`1)<class:8664 (HHDev.DataManagement.Core.Entities.JobListCategory)>
- `JobListTemplates` : class:213 (System.Collections.Generic.List`1)<class:8700 (HHDev.DataManagement.Core.Entities.JobListTemplate)>
- `JsonExportProfiles` : class:213 (System.Collections.Generic.List`1)<class:8780 (HHDev.DataManagement.Core.Entities.JsonExportProfile)>
- `JsonImportProfiles` : class:213 (System.Collections.Generic.List`1)<class:8796 (HHDev.DataManagement.Core.Entities.JsonImportProfile)>
- `LapMarkers` : class:213 (System.Collections.Generic.List`1)<class:8840 (HHDev.DataManagement.Core.Entities.LapMarker)>
- `LapTrackStatusMarkers` : class:213 (System.Collections.Generic.List`1)<class:9056 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarker)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `LastUsedIssueListId` : i4
- `MainGraphProfiles` : class:213 (System.Collections.Generic.List`1)<class:9272 (HHDev.DataManagement.Core.Entities.MainGraphProfile)>
- `Name` : string
- `NamedAssemblies` : class:213 (System.Collections.Generic.List`1)<class:9324 (HHDev.DataManagement.Core.Entities.NamedAssembly)>
- `NoteTypes` : class:213 (System.Collections.Generic.List`1)<class:9456 (HHDev.DataManagement.Core.Entities.NoteType)>
- `PartCategories` : class:213 (System.Collections.Generic.List`1)<class:9484 (HHDev.DataManagement.Core.Entities.PartCategory)>
- `PivotChartProfiles` : class:213 (System.Collections.Generic.List`1)<class:9648 (HHDev.DataManagement.Core.Entities.PivotChartProfile)>
- `RunPlanMode` : valuetype:5992 (HHDev.DataManagement.Core.Entities.eRunPlanMode)
- `ServiceReturnClaimConditions` : class:213 (System.Collections.Generic.List`1)<class:9832 (HHDev.DataManagement.Core.Entities.ServiceReturnClaimCondition)>
- `SessionTypes` : class:213 (System.Collections.Generic.List`1)<class:10140 (HHDev.DataManagement.Core.Entities.SessionType)>
- `Teams` : class:213 (System.Collections.Generic.List`1)<class:10212 (HHDev.DataManagement.Core.Entities.Team)>
- `Tracks` : class:213 (System.Collections.Generic.List`1)<class:10248 (HHDev.DataManagement.Core.Entities.Track)>
- `TreadDepthUnit` : string
- `Tyres` : class:213 (System.Collections.Generic.List`1)<class:10392 (HHDev.DataManagement.Core.Entities.Tyre)>
- `TyreSpecifications` : class:213 (System.Collections.Generic.List`1)<class:10596 (HHDev.DataManagement.Core.Entities.TyreSpecification)>
- `Users` : class:213 (System.Collections.Generic.List`1)<class:10708 (HHDev.DataManagement.Core.Entities.User)>
- `ViewCustomColumnProfiles` : class:213 (System.Collections.Generic.List`1)<class:10752 (HHDev.DataManagement.Core.Entities.ViewCustomColumnProfile)>
- `XmlExportProfiles` : class:213 (System.Collections.Generic.List`1)<class:10768 (HHDev.DataManagement.Core.Entities.XmlExportProfile)>

## AmbientMeasurement

- `AmbientMeasurementAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6140 (HHDev.DataManagement.Core.Entities.AmbientMeasurementAttachedFile)>
- `AmbientMeasurementCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:6144 (HHDev.DataManagement.Core.Entities.AmbientMeasurementCollectionItem)>
- `AmbientMeasurementDataSource` : valuetype:5836 (HHDev.DataManagement.Core.Entities.eAmbientMeasurementDataSource)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `RunSheetsAmbientMeasurement` : class:10796 (HHDev.DataManagement.Core.Entities.RunSheetsAmbientMeasurements)
- `User` : class:10708 (HHDev.DataManagement.Core.Entities.User)
- `UserId` : string

## AssemblyIteration

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `AssemblyIterationAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6192 (HHDev.DataManagement.Core.Entities.AssemblyIterationAttachedFile)>
- `AssemblyIterationCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:6276 (HHDev.DataManagement.Core.Entities.AssemblyIterationCollectionItem)>
- `AssemblyIterationHistories` : class:213 (System.Collections.Generic.List`1)<class:6292 (HHDev.DataManagement.Core.Entities.AssemblyIterationHistory)>
- `AssemblyIterationMeasurements` : class:213 (System.Collections.Generic.List`1)<class:6364 (HHDev.DataManagement.Core.Entities.AssemblyIterationMeasurement)>
- `AssemblyType` : class:5840 (HHDev.DataManagement.Core.Entities.AssemblyType)
- `AssemblyTypeId` : string
- `CarsAssemblyIterations` : class:213 (System.Collections.Generic.List`1)<class:6256 (HHDev.DataManagement.Core.Entities.CarAssemblyIteration)>
- `ChampionshipsAssemblyIterations` : class:213 (System.Collections.Generic.List`1)<class:6236 (HHDev.DataManagement.Core.Entities.ChampionshipAssemblyIteration)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EventsAssemblyIterations` : class:213 (System.Collections.Generic.List`1)<class:6196 (HHDev.DataManagement.Core.Entities.EventAssemblyIteration)>
- `EventsCarsAssemblyIterations` : class:213 (System.Collections.Generic.List`1)<class:6216 (HHDev.DataManagement.Core.Entities.EventCarAssemblyIteration)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `NamedAssembly` : class:9324 (HHDev.DataManagement.Core.Entities.NamedAssembly)
- `NamedAssemblyId` : string

## AssemblyIterationHistory

- `AssemblyIteration` : class:6160 (HHDev.DataManagement.Core.Entities.AssemblyIteration)
- `AssemblyIterationHistoryAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6308 (HHDev.DataManagement.Core.Entities.AssemblyIterationHistoryAttachedFile)>
- `AssemblyIterationHistoryCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:6312 (HHDev.DataManagement.Core.Entities.AssemblyIterationHistoryCollectionItem)>
- `AssemblyIterationId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `HistoryType` : class:6328 (HHDev.DataManagement.Core.Entities.AssemblyIterationHistoryType)
- `HistoryTypeId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## AssemblyIterationHistoryType

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `AssemblyIterationHistoryTypeAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6344 (HHDev.DataManagement.Core.Entities.AssemblyIterationHistoryTypeAttachedFile)>
- `AssemblyIterationHistoryTypeCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:6348 (HHDev.DataManagement.Core.Entities.AssemblyIterationHistoryTypeCollectionItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `HistoryTypeAssemblyIterationHistories` : class:213 (System.Collections.Generic.List`1)<class:6292 (HHDev.DataManagement.Core.Entities.AssemblyIterationHistory)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string

## AssemblyIterationMeasurement

- `AssemblyIteration` : class:6160 (HHDev.DataManagement.Core.Entities.AssemblyIteration)
- `AssemblyIterationId` : string
- `AssemblyIterationMeasurementAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6380 (HHDev.DataManagement.Core.Entities.AssemblyIterationMeasurementAttachedFile)>
- `AssemblyIterationMeasurementCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:6384 (HHDev.DataManagement.Core.Entities.AssemblyIterationMeasurementCollectionItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## AssemblyType

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `AssemblyIterationDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `AssemblyIterationDefinitionId` : string
- `AssemblyIterationHistoryDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `AssemblyIterationHistoryDefinitionId` : string
- `AssemblyIterationMeasurementDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `AssemblyIterationMeasurementDefinitionId` : string
- `AssemblyIterations` : class:213 (System.Collections.Generic.List`1)<class:6160 (HHDev.DataManagement.Core.Entities.AssemblyIteration)>
- `AssemblyTypeAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6400 (HHDev.DataManagement.Core.Entities.AssemblyTypeAttachedFile)>
- `AssemblyTypeCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:6404 (HHDev.DataManagement.Core.Entities.AssemblyTypeCollectionItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `NamedAssemblies` : class:213 (System.Collections.Generic.List`1)<class:9324 (HHDev.DataManagement.Core.Entities.NamedAssembly)>
- `NamedAssemblyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `NamedAssemblyDefinitionId` : string

## BrakeDisc

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `BrakeDiscAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6452 (HHDev.DataManagement.Core.Entities.BrakeDiscAttachedFile)>
- `BrakeDiscCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:6536 (HHDev.DataManagement.Core.Entities.BrakeDiscCollectionItem)>
- `BrakeDiscSpecification` : class:6552 (HHDev.DataManagement.Core.Entities.BrakeDiscSpecification)
- `BrakeDiscSpecificationId` : string
- `BrakeDiscWearMeasurements` : class:213 (System.Collections.Generic.List`1)<class:6588 (HHDev.DataManagement.Core.Entities.BrakeDiscWearMeasurement)>
- `CarsBrakeDiscs` : class:213 (System.Collections.Generic.List`1)<class:6516 (HHDev.DataManagement.Core.Entities.CarBrakeDisc)>
- `ChampionshipsBrakeDiscs` : class:213 (System.Collections.Generic.List`1)<class:6496 (HHDev.DataManagement.Core.Entities.ChampionshipBrakeDisc)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EventsBrakeDiscs` : class:213 (System.Collections.Generic.List`1)<class:6456 (HHDev.DataManagement.Core.Entities.EventBrakeDisc)>
- `EventsCarsBrakeDiscs` : class:213 (System.Collections.Generic.List`1)<class:6476 (HHDev.DataManagement.Core.Entities.EventCarBrakeDisc)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `LeftBrakeDiscBrakeSets` : class:213 (System.Collections.Generic.List`1)<class:6836 (HHDev.DataManagement.Core.Entities.BrakeSet)>
- `Name` : string
- `RightBrakeDiscBrakeSets` : class:213 (System.Collections.Generic.List`1)<class:6836 (HHDev.DataManagement.Core.Entities.BrakeSet)>

## BrakeDiscSpecification

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `BrakeDiscs` : class:213 (System.Collections.Generic.List`1)<class:6420 (HHDev.DataManagement.Core.Entities.BrakeDisc)>
- `BrakeDiscSpecificationAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6568 (HHDev.DataManagement.Core.Entities.BrakeDiscSpecificationAttachedFile)>
- `BrakeDiscSpecificationCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:6572 (HHDev.DataManagement.Core.Entities.BrakeDiscSpecificationCollectionItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `Position` : valuetype:5980 (HHDev.DataManagement.Core.Entities.eBrakeDiscPosition)

## BrakeDiscWearMeasurement

- `BrakeDisc` : class:6420 (HHDev.DataManagement.Core.Entities.BrakeDisc)
- `BrakeDiscId` : string
- `BrakeDiscWearMeasurementAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6604 (HHDev.DataManagement.Core.Entities.BrakeDiscWearMeasurementAttachedFile)>
- `BrakeDiscWearMeasurementCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:6608 (HHDev.DataManagement.Core.Entities.BrakeDiscWearMeasurementCollectionItem)>
- `BrakeDiscWearMeasurementItems` : class:213 (System.Collections.Generic.List`1)<class:6624 (HHDev.DataManagement.Core.Entities.BrakeDiscWearMeasurementItem)>
- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## BrakeDiscWearMeasurementItem

- `BrakeDiscWearMeasurement` : class:6588 (HHDev.DataManagement.Core.Entities.BrakeDiscWearMeasurement)
- `BrakeDiscWearMeasurementId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `Value` : valuetype:465 (System.Nullable`1)<r8>

## BrakePad

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `BrakePadAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6660 (HHDev.DataManagement.Core.Entities.BrakePadAttachedFile)>
- `BrakePadCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:6744 (HHDev.DataManagement.Core.Entities.BrakePadCollectionItem)>
- `BrakePadSpecification` : class:6760 (HHDev.DataManagement.Core.Entities.BrakePadSpecification)
- `BrakePadSpecificationId` : string
- `BrakePadWearMeasurements` : class:213 (System.Collections.Generic.List`1)<class:6796 (HHDev.DataManagement.Core.Entities.BrakePadWearMeasurement)>
- `CarsBrakePads` : class:213 (System.Collections.Generic.List`1)<class:6724 (HHDev.DataManagement.Core.Entities.CarBrakePad)>
- `ChampionshipsBrakePads` : class:213 (System.Collections.Generic.List`1)<class:6704 (HHDev.DataManagement.Core.Entities.ChampionshipBrakePad)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EventsBrakePads` : class:213 (System.Collections.Generic.List`1)<class:6664 (HHDev.DataManagement.Core.Entities.EventBrakePad)>
- `EventsCarsBrakePads` : class:213 (System.Collections.Generic.List`1)<class:6684 (HHDev.DataManagement.Core.Entities.EventCarBrakePad)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `LeftBrakePadBrakeSets` : class:213 (System.Collections.Generic.List`1)<class:6836 (HHDev.DataManagement.Core.Entities.BrakeSet)>
- `Name` : string
- `RightBrakePadBrakeSets` : class:213 (System.Collections.Generic.List`1)<class:6836 (HHDev.DataManagement.Core.Entities.BrakeSet)>

## BrakePadSpecification

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `BrakePads` : class:213 (System.Collections.Generic.List`1)<class:6628 (HHDev.DataManagement.Core.Entities.BrakePad)>
- `BrakePadSpecificationAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6776 (HHDev.DataManagement.Core.Entities.BrakePadSpecificationAttachedFile)>
- `BrakePadSpecificationCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:6780 (HHDev.DataManagement.Core.Entities.BrakePadSpecificationCollectionItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `Position` : valuetype:5984 (HHDev.DataManagement.Core.Entities.eBrakePadPosition)

## BrakePadWearMeasurement

- `BrakePad` : class:6628 (HHDev.DataManagement.Core.Entities.BrakePad)
- `BrakePadId` : string
- `BrakePadWearMeasurementAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6812 (HHDev.DataManagement.Core.Entities.BrakePadWearMeasurementAttachedFile)>
- `BrakePadWearMeasurementCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:6816 (HHDev.DataManagement.Core.Entities.BrakePadWearMeasurementCollectionItem)>
- `BrakePadWearMeasurementItems` : class:213 (System.Collections.Generic.List`1)<class:6832 (HHDev.DataManagement.Core.Entities.BrakePadWearMeasurementItem)>
- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## BrakePadWearMeasurementItem

- `BrakePadWearMeasurement` : class:6796 (HHDev.DataManagement.Core.Entities.BrakePadWearMeasurement)
- `BrakePadWearMeasurementId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `Value` : valuetype:465 (System.Nullable`1)<r8>

## BrakeSet

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `BrakeSetAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6868 (HHDev.DataManagement.Core.Entities.BrakeSetAttachedFile)>
- `BrakeSetCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:6952 (HHDev.DataManagement.Core.Entities.BrakeSetCollectionItem)>
- `BrakeWearSheets` : class:213 (System.Collections.Generic.List`1)<class:6968 (HHDev.DataManagement.Core.Entities.BrakeWearSheet)>
- `CarsBrakeSets` : class:213 (System.Collections.Generic.List`1)<class:6932 (HHDev.DataManagement.Core.Entities.CarBrakeSet)>
- `ChampionshipsBrakeSets` : class:213 (System.Collections.Generic.List`1)<class:6912 (HHDev.DataManagement.Core.Entities.ChampionshipBrakeSet)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EventsBrakeSets` : class:213 (System.Collections.Generic.List`1)<class:6872 (HHDev.DataManagement.Core.Entities.EventBrakeSet)>
- `EventsCarsBrakeSets` : class:213 (System.Collections.Generic.List`1)<class:6892 (HHDev.DataManagement.Core.Entities.EventCarBrakeSet)>
- `FrontBrakeSetPlannedRuns` : class:213 (System.Collections.Generic.List`1)<class:9688 (HHDev.DataManagement.Core.Entities.PlannedRun)>
- `FrontBrakeSetRunSheets` : class:213 (System.Collections.Generic.List`1)<class:9796 (HHDev.DataManagement.Core.Entities.RunSheet)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `LeftBrakeDisc` : class:6420 (HHDev.DataManagement.Core.Entities.BrakeDisc)
- `LeftBrakeDiscId` : string
- `LeftBrakePad` : class:6628 (HHDev.DataManagement.Core.Entities.BrakePad)
- `LeftBrakePadId` : string
- `Name` : string
- `Position` : valuetype:5988 (HHDev.DataManagement.Core.Entities.eBrakeSetPosition)
- `RearBrakeSetPlannedRuns` : class:213 (System.Collections.Generic.List`1)<class:9688 (HHDev.DataManagement.Core.Entities.PlannedRun)>
- `RearBrakeSetRunSheets` : class:213 (System.Collections.Generic.List`1)<class:9796 (HHDev.DataManagement.Core.Entities.RunSheet)>
- `RightBrakeDisc` : class:6420 (HHDev.DataManagement.Core.Entities.BrakeDisc)
- `RightBrakeDiscId` : string
- `RightBrakePad` : class:6628 (HHDev.DataManagement.Core.Entities.BrakePad)
- `RightBrakePadId` : string

## BrakeWearSheet

- `BrakeSet` : class:6836 (HHDev.DataManagement.Core.Entities.BrakeSet)
- `BrakeSetId` : string
- `BrakeWearSheetAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6984 (HHDev.DataManagement.Core.Entities.BrakeWearSheetAttachedFile)>
- `BrakeWearSheetCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:6988 (HHDev.DataManagement.Core.Entities.BrakeWearSheetCollectionItem)>
- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `BrakeWearSheetAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6984 (HHDev.DataManagement.Core.Entities.BrakeWearSheetAttachedFile)>
- `BrakeWearSheetCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:6988 (HHDev.DataManagement.Core.Entities.BrakeWearSheetCollectionItem)>
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)

## CalculatedLoopSectorTime

- `Id` : string
- `SectorName` : string
- `SectorTime` : valuetype:465 (System.Nullable`1)<r8>

## Car

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `BrakeDiscWearMeasurements` : class:213 (System.Collections.Generic.List`1)<class:6588 (HHDev.DataManagement.Core.Entities.BrakeDiscWearMeasurement)>
- `BrakePadWearMeasurements` : class:213 (System.Collections.Generic.List`1)<class:6796 (HHDev.DataManagement.Core.Entities.BrakePadWearMeasurement)>
- `BrakeWearSheets` : class:213 (System.Collections.Generic.List`1)<class:6968 (HHDev.DataManagement.Core.Entities.BrakeWearSheet)>
- `CarAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7004 (HHDev.DataManagement.Core.Entities.CarAttachedFile)>
- `CarCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7072 (HHDev.DataManagement.Core.Entities.CarCollectionItem)>
- `CarModel` : class:7140 (HHDev.DataManagement.Core.Entities.CarModel)
- `CarModelId` : string
- `CarsAssemblyIterations` : class:213 (System.Collections.Generic.List`1)<class:6256 (HHDev.DataManagement.Core.Entities.CarAssemblyIteration)>
- `CarsBrakeDiscs` : class:213 (System.Collections.Generic.List`1)<class:6516 (HHDev.DataManagement.Core.Entities.CarBrakeDisc)>
- `CarsBrakePads` : class:213 (System.Collections.Generic.List`1)<class:6724 (HHDev.DataManagement.Core.Entities.CarBrakePad)>
- `CarsBrakeSets` : class:213 (System.Collections.Generic.List`1)<class:6932 (HHDev.DataManagement.Core.Entities.CarBrakeSet)>
- `CarsIssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8428 (HHDev.DataManagement.Core.Entities.CarIssueListIssue)>
- `CarsNamedAssemblies` : class:213 (System.Collections.Generic.List`1)<class:9420 (HHDev.DataManagement.Core.Entities.CarNamedAssembly)>
- `CarsTyres` : class:213 (System.Collections.Generic.List`1)<class:10488 (HHDev.DataManagement.Core.Entities.CarTyre)>
- `Category` : class:7208 (HHDev.DataManagement.Core.Entities.Category)
- `CategoryId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `DefaultSetupDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `DefaultSetupDefinitionId` : string
- `EventCarDatas` : class:213 (System.Collections.Generic.List`1)<class:7772 (HHDev.DataManagement.Core.Entities.EventCarData)>
- `EventCars` : class:213 (System.Collections.Generic.List`1)<class:7672 (HHDev.DataManagement.Core.Entities.EventCar)>
- `EventCarSetupsManualMileages` : class:213 (System.Collections.Generic.List`1)<class:7876 (HHDev.DataManagement.Core.Entities.EventCarSetupsManualMileage)>
- `EventCarSetupsPredictiveMileages` : class:213 (System.Collections.Generic.List`1)<class:7912 (HHDev.DataManagement.Core.Entities.EventCarSetupsPredictiveMileage)>
- `EventNotes` : class:213 (System.Collections.Generic.List`1)<class:8052 (HHDev.DataManagement.Core.Entities.EventNote)>
- `Id` : string
- `LapMarkersEventObjects` : class:213 (System.Collections.Generic.List`1)<class:8876 (HHDev.DataManagement.Core.Entities.LapMarkersEventObject)>
- `LapMarkersSessionObjects` : class:213 (System.Collections.Generic.List`1)<class:8912 (HHDev.DataManagement.Core.Entities.LapMarkersSessionObject)>
- `LapTrackStatusMarkersEventObjects` : class:213 (System.Collections.Generic.List`1)<class:9092 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersEventObject)>
- `LapTrackStatusMarkersSessionObjects` : class:213 (System.Collections.Generic.List`1)<class:9128 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersSessionObject)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Number` : string
- `ReferencePressureRuns` : class:213 (System.Collections.Generic.List`1)<class:9724 (HHDev.DataManagement.Core.Entities.ReferencePressureRun)>
- `RunPlans` : class:213 (System.Collections.Generic.List`1)<class:9760 (HHDev.DataManagement.Core.Entities.RunPlan)>
- `RunSheets` : class:213 (System.Collections.Generic.List`1)<class:9796 (HHDev.DataManagement.Core.Entities.RunSheet)>
- `SessionCarDatas` : class:213 (System.Collections.Generic.List`1)<class:9856 (HHDev.DataManagement.Core.Entities.SessionCarData)>
- `SessionCarSetupsManualMileages` : class:213 (System.Collections.Generic.List`1)<class:9892 (HHDev.DataManagement.Core.Entities.SessionCarSetupsManualMileage)>
- `SessionCarSetupsPredictiveMileages` : class:213 (System.Collections.Generic.List`1)<class:9928 (HHDev.DataManagement.Core.Entities.SessionCarSetupsPredictiveMileage)>
- `SessionObjectIssues` : class:213 (System.Collections.Generic.List`1)<class:10032 (HHDev.DataManagement.Core.Entities.SessionObjectIssue)>
- `SessionObjectJobs` : class:213 (System.Collections.Generic.List`1)<class:10068 (HHDev.DataManagement.Core.Entities.SessionObjectJob)>
- `Setups` : class:213 (System.Collections.Generic.List`1)<class:10176 (HHDev.DataManagement.Core.Entities.Setup)>
- `SyncDataSelections` : class:213 (System.Collections.Generic.List`1)<class:10772 (HHDev.DataManagement.Core.Entities.HHDMSyncDataSelection)>
- `Team` : class:10212 (HHDev.DataManagement.Core.Entities.Team)
- `TeamId` : string
- `TyreSets` : class:213 (System.Collections.Generic.List`1)<class:10524 (HHDev.DataManagement.Core.Entities.TyreSet)>
- `TyreWearMeasurements` : class:213 (System.Collections.Generic.List`1)<class:10632 (HHDev.DataManagement.Core.Entities.TyreWearMeasurement)>
- `TyreWearSheets` : class:213 (System.Collections.Generic.List`1)<class:10672 (HHDev.DataManagement.Core.Entities.TyreWearSheet)>

## CarAssemblyIteration

- `AssemblyIteration` : class:6160 (HHDev.DataManagement.Core.Entities.AssemblyIteration)
- `AssemblyIterationId` : string
- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarAssemblyIterationAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6272 (HHDev.DataManagement.Core.Entities.CarAssemblyIterationAttachedFile)>
- `CarAssemblyIterationCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7008 (HHDev.DataManagement.Core.Entities.CarAssemblyIterationCollectionItem)>
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## CarBrakeDisc

- `BrakeDisc` : class:6420 (HHDev.DataManagement.Core.Entities.BrakeDisc)
- `BrakeDiscId` : string
- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarBrakeDiscAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6532 (HHDev.DataManagement.Core.Entities.CarBrakeDiscAttachedFile)>
- `CarBrakeDiscCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7024 (HHDev.DataManagement.Core.Entities.CarBrakeDiscCollectionItem)>
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## CarBrakePad

- `BrakePad` : class:6628 (HHDev.DataManagement.Core.Entities.BrakePad)
- `BrakePadId` : string
- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarBrakePadAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6740 (HHDev.DataManagement.Core.Entities.CarBrakePadAttachedFile)>
- `CarBrakePadCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7040 (HHDev.DataManagement.Core.Entities.CarBrakePadCollectionItem)>
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## CarBrakeSet

- `BrakeSet` : class:6836 (HHDev.DataManagement.Core.Entities.BrakeSet)
- `BrakeSetId` : string
- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarBrakeSetAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6948 (HHDev.DataManagement.Core.Entities.CarBrakeSetAttachedFile)>
- `CarBrakeSetCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7056 (HHDev.DataManagement.Core.Entities.CarBrakeSetCollectionItem)>
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## CarIssueListIssue

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CarIssueListIssueAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8444 (HHDev.DataManagement.Core.Entities.CarIssueListIssueAttachedFile)>
- `CarIssueListIssueCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7088 (HHDev.DataManagement.Core.Entities.CarIssueListIssueCollectionItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `IssueListIssue` : class:8328 (HHDev.DataManagement.Core.Entities.IssueListIssue)
- `IssueListIssueId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CarIssueListIssueAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8444 (HHDev.DataManagement.Core.Entities.CarIssueListIssueAttachedFile)>
- `CarIssueListIssueCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7088 (HHDev.DataManagement.Core.Entities.CarIssueListIssueCollectionItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `IssueListIssue` : class:8328 (HHDev.DataManagement.Core.Entities.IssueListIssue)
- `IssueListIssueId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## CarManufacturer

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CarManufacturerAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7120 (HHDev.DataManagement.Core.Entities.CarManufacturerAttachedFile)>
- `CarManufacturerCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7124 (HHDev.DataManagement.Core.Entities.CarManufacturerCollectionItem)>
- `CarModels` : class:213 (System.Collections.Generic.List`1)<class:7140 (HHDev.DataManagement.Core.Entities.CarModel)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CarManufacturerAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7120 (HHDev.DataManagement.Core.Entities.CarManufacturerAttachedFile)>
- `CarManufacturerCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7124 (HHDev.DataManagement.Core.Entities.CarManufacturerCollectionItem)>
- `CarModels` : class:213 (System.Collections.Generic.List`1)<class:7140 (HHDev.DataManagement.Core.Entities.CarModel)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string

## CarModel

- `CarManufacturer` : class:7104 (HHDev.DataManagement.Core.Entities.CarManufacturer)
- `CarManufacturerId` : string
- `CarModelAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7156 (HHDev.DataManagement.Core.Entities.CarModelAttachedFile)>
- `CarModelCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7160 (HHDev.DataManagement.Core.Entities.CarModelCollectionItem)>
- `Cars` : class:213 (System.Collections.Generic.List`1)<class:5864 (HHDev.DataManagement.Core.Entities.Car)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `CarManufacturer` : class:7104 (HHDev.DataManagement.Core.Entities.CarManufacturer)
- `CarManufacturerId` : string
- `CarModelAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7156 (HHDev.DataManagement.Core.Entities.CarModelAttachedFile)>
- `CarModelCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7160 (HHDev.DataManagement.Core.Entities.CarModelCollectionItem)>
- `Cars` : class:213 (System.Collections.Generic.List`1)<class:5864 (HHDev.DataManagement.Core.Entities.Car)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string

## CarNamedAssembly

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CarNamedAssemblyAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9436 (HHDev.DataManagement.Core.Entities.CarNamedAssemblyAttachedFile)>
- `CarNamedAssemblyCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7176 (HHDev.DataManagement.Core.Entities.CarNamedAssemblyCollectionItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `NamedAssembly` : class:9324 (HHDev.DataManagement.Core.Entities.NamedAssembly)
- `NamedAssemblyId` : string
- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CarNamedAssemblyAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9436 (HHDev.DataManagement.Core.Entities.CarNamedAssemblyAttachedFile)>
- `CarNamedAssemblyCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7176 (HHDev.DataManagement.Core.Entities.CarNamedAssemblyCollectionItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `NamedAssembly` : class:9324 (HHDev.DataManagement.Core.Entities.NamedAssembly)
- `NamedAssemblyId` : string

## CarTyre

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CarTyreAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10504 (HHDev.DataManagement.Core.Entities.CarTyreAttachedFile)>
- `CarTyreCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7192 (HHDev.DataManagement.Core.Entities.CarTyreCollectionItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Tyre` : class:10392 (HHDev.DataManagement.Core.Entities.Tyre)
- `TyreId` : string
- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CarTyreAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10504 (HHDev.DataManagement.Core.Entities.CarTyreAttachedFile)>
- `CarTyreCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7192 (HHDev.DataManagement.Core.Entities.CarTyreCollectionItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Tyre` : class:10392 (HHDev.DataManagement.Core.Entities.Tyre)
- `TyreId` : string

## Category

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `Cars` : class:213 (System.Collections.Generic.List`1)<class:5864 (HHDev.DataManagement.Core.Entities.Car)>
- `CategoryAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7224 (HHDev.DataManagement.Core.Entities.CategoryAttachedFile)>
- `CategoryCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7228 (HHDev.DataManagement.Core.Entities.CategoryCollectionItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EventLoadListItems` : class:213 (System.Collections.Generic.List`1)<class:6092 (HHDev.DataManagement.Core.Entities.EventLoadListItem)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `Cars` : class:213 (System.Collections.Generic.List`1)<class:5864 (HHDev.DataManagement.Core.Entities.Car)>
- `CategoryAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7224 (HHDev.DataManagement.Core.Entities.CategoryAttachedFile)>
- `CategoryCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7228 (HHDev.DataManagement.Core.Entities.CategoryCollectionItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EventLoadListItems` : class:213 (System.Collections.Generic.List`1)<class:6092 (HHDev.DataManagement.Core.Entities.EventLoadListItem)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string

## Championship

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `ChampionshipAssemblyIterations` : class:213 (System.Collections.Generic.List`1)<class:6236 (HHDev.DataManagement.Core.Entities.ChampionshipAssemblyIteration)>
- `ChampionshipAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7260 (HHDev.DataManagement.Core.Entities.ChampionshipAttachedFile)>
- `ChampionshipBrakeDiscs` : class:213 (System.Collections.Generic.List`1)<class:6496 (HHDev.DataManagement.Core.Entities.ChampionshipBrakeDisc)>
- `ChampionshipBrakePads` : class:213 (System.Collections.Generic.List`1)<class:6704 (HHDev.DataManagement.Core.Entities.ChampionshipBrakePad)>
- `ChampionshipBrakeSets` : class:213 (System.Collections.Generic.List`1)<class:6912 (HHDev.DataManagement.Core.Entities.ChampionshipBrakeSet)>
- `ChampionshipCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7328 (HHDev.DataManagement.Core.Entities.ChampionshipCollectionItem)>
- `ChampionshipIssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8408 (HHDev.DataManagement.Core.Entities.ChampionshipIssueListIssue)>
- `ChampionshipNamedAssemblies` : class:213 (System.Collections.Generic.List`1)<class:9400 (HHDev.DataManagement.Core.Entities.ChampionshipNamedAssembly)>
- `ChampionshipTyres` : class:213 (System.Collections.Generic.List`1)<class:10468 (HHDev.DataManagement.Core.Entities.ChampionshipTyre)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Events` : class:213 (System.Collections.Generic.List`1)<class:6076 (HHDev.DataManagement.Core.Entities.Event)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `ChampionshipAssemblyIterations` : class:213 (System.Collections.Generic.List`1)<class:6236 (HHDev.DataManagement.Core.Entities.ChampionshipAssemblyIteration)>
- `ChampionshipAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7260 (HHDev.DataManagement.Core.Entities.ChampionshipAttachedFile)>
- `ChampionshipBrakeDiscs` : class:213 (System.Collections.Generic.List`1)<class:6496 (HHDev.DataManagement.Core.Entities.ChampionshipBrakeDisc)>
- `ChampionshipBrakePads` : class:213 (System.Collections.Generic.List`1)<class:6704 (HHDev.DataManagement.Core.Entities.ChampionshipBrakePad)>
- `ChampionshipBrakeSets` : class:213 (System.Collections.Generic.List`1)<class:6912 (HHDev.DataManagement.Core.Entities.ChampionshipBrakeSet)>
- `ChampionshipCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7328 (HHDev.DataManagement.Core.Entities.ChampionshipCollectionItem)>
- `ChampionshipIssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8408 (HHDev.DataManagement.Core.Entities.ChampionshipIssueListIssue)>
- `ChampionshipNamedAssemblies` : class:213 (System.Collections.Generic.List`1)<class:9400 (HHDev.DataManagement.Core.Entities.ChampionshipNamedAssembly)>
- `ChampionshipTyres` : class:213 (System.Collections.Generic.List`1)<class:10468 (HHDev.DataManagement.Core.Entities.ChampionshipTyre)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Events` : class:213 (System.Collections.Generic.List`1)<class:6076 (HHDev.DataManagement.Core.Entities.Event)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string

## ChampionshipAssemblyIteration

- `AssemblyIteration` : class:6160 (HHDev.DataManagement.Core.Entities.AssemblyIteration)
- `AssemblyIterationId` : string
- `Championship` : class:7244 (HHDev.DataManagement.Core.Entities.Championship)
- `ChampionshipAssemblyIterationAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6252 (HHDev.DataManagement.Core.Entities.ChampionshipAssemblyIterationAttachedFile)>
- `ChampionshipAssemblyIterationCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7264 (HHDev.DataManagement.Core.Entities.ChampionshipAssemblyIterationCollectionItem)>
- `ChampionshipId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `AssemblyIteration` : class:6160 (HHDev.DataManagement.Core.Entities.AssemblyIteration)
- `AssemblyIterationId` : string
- `Championship` : class:7244 (HHDev.DataManagement.Core.Entities.Championship)
- `ChampionshipAssemblyIterationAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6252 (HHDev.DataManagement.Core.Entities.ChampionshipAssemblyIterationAttachedFile)>
- `ChampionshipAssemblyIterationCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7264 (HHDev.DataManagement.Core.Entities.ChampionshipAssemblyIterationCollectionItem)>
- `ChampionshipId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## ChampionshipBrakeDisc

- `BrakeDisc` : class:6420 (HHDev.DataManagement.Core.Entities.BrakeDisc)
- `BrakeDiscId` : string
- `Championship` : class:7244 (HHDev.DataManagement.Core.Entities.Championship)
- `ChampionshipBrakeDiscAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6512 (HHDev.DataManagement.Core.Entities.ChampionshipBrakeDiscAttachedFile)>
- `ChampionshipBrakeDiscCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7280 (HHDev.DataManagement.Core.Entities.ChampionshipBrakeDiscCollectionItem)>
- `ChampionshipId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `BrakeDisc` : class:6420 (HHDev.DataManagement.Core.Entities.BrakeDisc)
- `BrakeDiscId` : string
- `Championship` : class:7244 (HHDev.DataManagement.Core.Entities.Championship)
- `ChampionshipBrakeDiscAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6512 (HHDev.DataManagement.Core.Entities.ChampionshipBrakeDiscAttachedFile)>
- `ChampionshipBrakeDiscCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7280 (HHDev.DataManagement.Core.Entities.ChampionshipBrakeDiscCollectionItem)>
- `ChampionshipId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## ChampionshipBrakePad

- `BrakePad` : class:6628 (HHDev.DataManagement.Core.Entities.BrakePad)
- `BrakePadId` : string
- `Championship` : class:7244 (HHDev.DataManagement.Core.Entities.Championship)
- `ChampionshipBrakePadAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6720 (HHDev.DataManagement.Core.Entities.ChampionshipBrakePadAttachedFile)>
- `ChampionshipBrakePadCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7296 (HHDev.DataManagement.Core.Entities.ChampionshipBrakePadCollectionItem)>
- `ChampionshipId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `BrakePad` : class:6628 (HHDev.DataManagement.Core.Entities.BrakePad)
- `BrakePadId` : string
- `Championship` : class:7244 (HHDev.DataManagement.Core.Entities.Championship)
- `ChampionshipBrakePadAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6720 (HHDev.DataManagement.Core.Entities.ChampionshipBrakePadAttachedFile)>
- `ChampionshipBrakePadCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7296 (HHDev.DataManagement.Core.Entities.ChampionshipBrakePadCollectionItem)>
- `ChampionshipId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## ChampionshipBrakeSet

- `BrakeSet` : class:6836 (HHDev.DataManagement.Core.Entities.BrakeSet)
- `BrakeSetId` : string
- `Championship` : class:7244 (HHDev.DataManagement.Core.Entities.Championship)
- `ChampionshipBrakeSetAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6928 (HHDev.DataManagement.Core.Entities.ChampionshipBrakeSetAttachedFile)>
- `ChampionshipBrakeSetCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7312 (HHDev.DataManagement.Core.Entities.ChampionshipBrakeSetCollectionItem)>
- `ChampionshipId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `BrakeSet` : class:6836 (HHDev.DataManagement.Core.Entities.BrakeSet)
- `BrakeSetId` : string
- `Championship` : class:7244 (HHDev.DataManagement.Core.Entities.Championship)
- `ChampionshipBrakeSetAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6928 (HHDev.DataManagement.Core.Entities.ChampionshipBrakeSetAttachedFile)>
- `ChampionshipBrakeSetCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7312 (HHDev.DataManagement.Core.Entities.ChampionshipBrakeSetCollectionItem)>
- `ChampionshipId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## ChampionshipIssueListIssue

- `Championship` : class:7244 (HHDev.DataManagement.Core.Entities.Championship)
- `ChampionshipId` : string
- `ChampionshipIssueListIssueAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8424 (HHDev.DataManagement.Core.Entities.ChampionshipIssueListIssueAttachedFile)>
- `ChampionshipIssueListIssueCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7344 (HHDev.DataManagement.Core.Entities.ChampionshipIssueListIssueCollectionItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `IssueListIssue` : class:8328 (HHDev.DataManagement.Core.Entities.IssueListIssue)
- `IssueListIssueId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Championship` : class:7244 (HHDev.DataManagement.Core.Entities.Championship)
- `ChampionshipId` : string
- `ChampionshipIssueListIssueAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8424 (HHDev.DataManagement.Core.Entities.ChampionshipIssueListIssueAttachedFile)>
- `ChampionshipIssueListIssueCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7344 (HHDev.DataManagement.Core.Entities.ChampionshipIssueListIssueCollectionItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `IssueListIssue` : class:8328 (HHDev.DataManagement.Core.Entities.IssueListIssue)
- `IssueListIssueId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## ChampionshipNamedAssembly

- `Championship` : class:7244 (HHDev.DataManagement.Core.Entities.Championship)
- `ChampionshipId` : string
- `ChampionshipNamedAssemblyAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9416 (HHDev.DataManagement.Core.Entities.ChampionshipNamedAssemblyAttachedFile)>
- `ChampionshipNamedAssemblyCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7360 (HHDev.DataManagement.Core.Entities.ChampionshipNamedAssemblyCollectionItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `NamedAssembly` : class:9324 (HHDev.DataManagement.Core.Entities.NamedAssembly)
- `NamedAssemblyId` : string
- `Championship` : class:7244 (HHDev.DataManagement.Core.Entities.Championship)
- `ChampionshipId` : string
- `ChampionshipNamedAssemblyAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9416 (HHDev.DataManagement.Core.Entities.ChampionshipNamedAssemblyAttachedFile)>
- `ChampionshipNamedAssemblyCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7360 (HHDev.DataManagement.Core.Entities.ChampionshipNamedAssemblyCollectionItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `NamedAssembly` : class:9324 (HHDev.DataManagement.Core.Entities.NamedAssembly)
- `NamedAssemblyId` : string

## ChampionshipTyre

- `Championship` : class:7244 (HHDev.DataManagement.Core.Entities.Championship)
- `ChampionshipId` : string
- `ChampionshipTyreAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10484 (HHDev.DataManagement.Core.Entities.ChampionshipTyreAttachedFile)>
- `ChampionshipTyreCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7376 (HHDev.DataManagement.Core.Entities.ChampionshipTyreCollectionItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Tyre` : class:10392 (HHDev.DataManagement.Core.Entities.Tyre)
- `TyreId` : string
- `Championship` : class:7244 (HHDev.DataManagement.Core.Entities.Championship)
- `ChampionshipId` : string
- `ChampionshipTyreAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10484 (HHDev.DataManagement.Core.Entities.ChampionshipTyreAttachedFile)>
- `ChampionshipTyreCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7376 (HHDev.DataManagement.Core.Entities.ChampionshipTyreCollectionItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Tyre` : class:10392 (HHDev.DataManagement.Core.Entities.Tyre)
- `TyreId` : string

## ChangeFormatterGrouping

- `ChangeFormatterGroupingItems` : class:213 (System.Collections.Generic.List`1)<class:7396 (HHDev.DataManagement.Core.Entities.ChangeFormatterGroupingItem)>
- `ChangeFormatterProfile` : class:7416 (HHDev.DataManagement.Core.Entities.ChangeFormatterProfile)
- `ChangeFormatterProfileId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Delimiter` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `ChangeFormatterGroupingItems` : class:213 (System.Collections.Generic.List`1)<class:7396 (HHDev.DataManagement.Core.Entities.ChangeFormatterGroupingItem)>
- `ChangeFormatterProfile` : class:7416 (HHDev.DataManagement.Core.Entities.ChangeFormatterProfile)
- `ChangeFormatterProfileId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Delimiter` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string

## ChangeFormatterGroupingItem

- `ChangeFormatterGrouping` : class:7392 (HHDev.DataManagement.Core.Entities.ChangeFormatterGrouping)
- `ChangeFormatterGroupingId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `ChangeFormatterGrouping` : class:7392 (HHDev.DataManagement.Core.Entities.ChangeFormatterGrouping)
- `ChangeFormatterGroupingId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4

## ChangeFormatterMappedGrouping

- `ChangeFormatterMappedGroupingItems` : class:213 (System.Collections.Generic.List`1)<class:7404 (HHDev.DataManagement.Core.Entities.ChangeFormatterMappedGroupingItem)>
- `ChangeFormatterProfile` : class:7416 (HHDev.DataManagement.Core.Entities.ChangeFormatterProfile)
- `ChangeFormatterProfileId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `LinkedMathParameter` : string
- `Name` : string
- `ChangeFormatterMappedGroupingItems` : class:213 (System.Collections.Generic.List`1)<class:7404 (HHDev.DataManagement.Core.Entities.ChangeFormatterMappedGroupingItem)>
- `ChangeFormatterProfile` : class:7416 (HHDev.DataManagement.Core.Entities.ChangeFormatterProfile)
- `ChangeFormatterProfileId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `LinkedMathParameter` : string
- `Name` : string

## ChangeFormatterMappedGroupingItem

- `ChangeFormatterMappedGrouping` : class:7400 (HHDev.DataManagement.Core.Entities.ChangeFormatterMappedGrouping)
- `ChangeFormatterMappedGroupingId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `ChangeFormatterMappedGrouping` : class:7400 (HHDev.DataManagement.Core.Entities.ChangeFormatterMappedGrouping)
- `ChangeFormatterMappedGroupingId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4

## ChangeFormatterOrderItem

- `ChangeFormatterProfile` : class:7416 (HHDev.DataManagement.Core.Entities.ChangeFormatterProfile)
- `ChangeFormatterProfileId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `ChangeFormatterProfile` : class:7416 (HHDev.DataManagement.Core.Entities.ChangeFormatterProfile)
- `ChangeFormatterProfileId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4

## ChangeFormatterParameterToIgnore

- `ChangeFormatterProfile` : class:7416 (HHDev.DataManagement.Core.Entities.ChangeFormatterProfile)
- `ChangeFormatterProfileId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `ChangeFormatterProfile` : class:7416 (HHDev.DataManagement.Core.Entities.ChangeFormatterProfile)
- `ChangeFormatterProfileId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string

## ChangeFormatterProfile

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `ChangeFormatterGroupings` : class:213 (System.Collections.Generic.List`1)<class:7392 (HHDev.DataManagement.Core.Entities.ChangeFormatterGrouping)>
- `ChangeFormatterMappedGroupings` : class:213 (System.Collections.Generic.List`1)<class:7400 (HHDev.DataManagement.Core.Entities.ChangeFormatterMappedGrouping)>
- `ChangeFormatterOrderItems` : class:213 (System.Collections.Generic.List`1)<class:7408 (HHDev.DataManagement.Core.Entities.ChangeFormatterOrderItem)>
- `ChangeFormatterParameterToIgnores` : class:213 (System.Collections.Generic.List`1)<class:7412 (HHDev.DataManagement.Core.Entities.ChangeFormatterParameterToIgnore)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `LinkedDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `LinkedDefinitionId` : string
- `Name` : string
- `UseCustomOrder` : bool
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `ChangeFormatterGroupings` : class:213 (System.Collections.Generic.List`1)<class:7392 (HHDev.DataManagement.Core.Entities.ChangeFormatterGrouping)>
- `ChangeFormatterMappedGroupings` : class:213 (System.Collections.Generic.List`1)<class:7400 (HHDev.DataManagement.Core.Entities.ChangeFormatterMappedGrouping)>
- `ChangeFormatterOrderItems` : class:213 (System.Collections.Generic.List`1)<class:7408 (HHDev.DataManagement.Core.Entities.ChangeFormatterOrderItem)>
- `ChangeFormatterParameterToIgnores` : class:213 (System.Collections.Generic.List`1)<class:7412 (HHDev.DataManagement.Core.Entities.ChangeFormatterParameterToIgnore)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `LinkedDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `LinkedDefinitionId` : string
- `Name` : string
- `UseCustomOrder` : bool

## ColumnItemDisplayBlockDefinition

- `ColumnItemDisplayBlocksViews` : class:213 (System.Collections.Generic.List`1)<class:7424 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayBlocksViews)>
- `ColumnItemDisplayLineDefinitions` : class:213 (System.Collections.Generic.List`1)<class:7436 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayLineDefinition)>
- `ColumnItemDisplaySectionDefinition` : class:7440 (HHDev.DataManagement.Core.Entities.ColumnItemDisplaySectionDefinition)
- `ColumnItemDisplaySectionDefinitionId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomColor` : string
- `ForegroundColor` : string
- `HorizontalContentAlignment` : valuetype:356 (HHDev.DataManagement.Core.eHorizontalContentAlignment)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `Text` : string
- `VerticalContentAlignment` : valuetype:360 (HHDev.DataManagement.Core.eVerticalContentAlignment)
- `ColumnItemDisplayBlocksViews` : class:213 (System.Collections.Generic.List`1)<class:7424 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayBlocksViews)>
- `ColumnItemDisplayLineDefinitions` : class:213 (System.Collections.Generic.List`1)<class:7436 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayLineDefinition)>
- `ColumnItemDisplaySectionDefinition` : class:7440 (HHDev.DataManagement.Core.Entities.ColumnItemDisplaySectionDefinition)
- `ColumnItemDisplaySectionDefinitionId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomColor` : string
- `ForegroundColor` : string
- `HorizontalContentAlignment` : valuetype:356 (HHDev.DataManagement.Core.eHorizontalContentAlignment)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `Text` : string
- `VerticalContentAlignment` : valuetype:360 (HHDev.DataManagement.Core.eVerticalContentAlignment)

## ColumnItemDisplayBlocksViews

- `ColumnItemDisplayBlockDefinition` : class:7420 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayBlockDefinition)
- `ColumnItemDisplayBlockDefinitionId` : string
- `ColumnItemDisplayViewDefinition` : class:7444 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayViewDefinition)
- `ColumnItemDisplayViewDefinitionId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `ColumnItemDisplayBlockDefinition` : class:7420 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayBlockDefinition)
- `ColumnItemDisplayBlockDefinitionId` : string
- `ColumnItemDisplayViewDefinition` : class:7444 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayViewDefinition)
- `ColumnItemDisplayViewDefinitionId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## ColumnItemDisplayCellDefinition

- `CellType` : string
- `ColumnItemDisplayLineDefinition` : class:7436 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayLineDefinition)
- `ColumnItemDisplayLineDefinitionId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `Json` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `CellType` : string
- `ColumnItemDisplayLineDefinition` : class:7436 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayLineDefinition)
- `ColumnItemDisplayLineDefinitionId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `Json` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4

## ColumnItemDisplayDefinition

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `ChangedBackgroundColor` : string
- `ChangedForegroundColor` : string
- `ColumnItemDisplaySectionDefinitions` : class:213 (System.Collections.Generic.List`1)<class:7440 (HHDev.DataManagement.Core.Entities.ColumnItemDisplaySectionDefinition)>
- `ColumnItemDisplayViewDefinitions` : class:213 (System.Collections.Generic.List`1)<class:7444 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayViewDefinition)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `HorizontalSpacing` : i4
- `Id` : string
- `LabelWidth` : i4
- `LastFrozenBlock` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `LayoutDirection` : valuetype:348 (HHDev.DataManagement.Core.eColumnItemLayoutDirection)
- `Name` : string
- `RowHeight` : i4
- `RowWidth` : i4
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `ChangedBackgroundColor` : string
- `ChangedForegroundColor` : string
- `ColumnItemDisplaySectionDefinitions` : class:213 (System.Collections.Generic.List`1)<class:7440 (HHDev.DataManagement.Core.Entities.ColumnItemDisplaySectionDefinition)>
- `ColumnItemDisplayViewDefinitions` : class:213 (System.Collections.Generic.List`1)<class:7444 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayViewDefinition)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `HorizontalSpacing` : i4
- `Id` : string
- `LabelWidth` : i4
- `LastFrozenBlock` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `LayoutDirection` : valuetype:348 (HHDev.DataManagement.Core.eColumnItemLayoutDirection)
- `Name` : string
- `RowHeight` : i4
- `RowWidth` : i4

## ColumnItemDisplayLineDefinition

- `ColumnItemDisplayBlockDefinition` : class:7420 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayBlockDefinition)
- `ColumnItemDisplayBlockDefinitionId` : string
- `ColumnItemDisplayCellDefinitions` : class:213 (System.Collections.Generic.List`1)<class:7428 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayCellDefinition)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `HeightInRows` : i4
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `Title` : string
- `ColumnItemDisplayBlockDefinition` : class:7420 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayBlockDefinition)
- `ColumnItemDisplayBlockDefinitionId` : string
- `ColumnItemDisplayCellDefinitions` : class:213 (System.Collections.Generic.List`1)<class:7428 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayCellDefinition)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `HeightInRows` : i4
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `Title` : string

## ColumnItemDisplaySectionDefinition

- `ColumnItemDisplayBlockDefinitions` : class:213 (System.Collections.Generic.List`1)<class:7420 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayBlockDefinition)>
- `ColumnItemDisplayDefinition` : class:7432 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayDefinition)
- `ColumnItemDisplayDefinitionId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomColor` : string
- `ForegroundColor` : string
- `HideTitle` : bool
- `HorizontalContentAlignment` : valuetype:356 (HHDev.DataManagement.Core.eHorizontalContentAlignment)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `Title` : string
- `VerticalContentAlignment` : valuetype:360 (HHDev.DataManagement.Core.eVerticalContentAlignment)
- `ColumnItemDisplayBlockDefinitions` : class:213 (System.Collections.Generic.List`1)<class:7420 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayBlockDefinition)>
- `ColumnItemDisplayDefinition` : class:7432 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayDefinition)
- `ColumnItemDisplayDefinitionId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomColor` : string
- `ForegroundColor` : string
- `HideTitle` : bool
- `HorizontalContentAlignment` : valuetype:356 (HHDev.DataManagement.Core.eHorizontalContentAlignment)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `Title` : string
- `VerticalContentAlignment` : valuetype:360 (HHDev.DataManagement.Core.eVerticalContentAlignment)

## ColumnItemDisplayViewDefinition

- `ColumnItemDisplayBlocksViews` : class:213 (System.Collections.Generic.List`1)<class:7424 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayBlocksViews)>
- `ColumnItemDisplayDefinition` : class:7432 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayDefinition)
- `ColumnItemDisplayDefinitionId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `ColumnItemDisplayBlocksViews` : class:213 (System.Collections.Generic.List`1)<class:7424 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayBlocksViews)>
- `ColumnItemDisplayDefinition` : class:7432 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayDefinition)
- `ColumnItemDisplayDefinitionId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4

## CustomGridDisplayDefinition

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomGridDisplayLayoutItems` : class:213 (System.Collections.Generic.List`1)<class:7452 (HHDev.DataManagement.Core.Entities.CustomGridDisplayLayoutItem)>
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `Json` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomGridDisplayLayoutItems` : class:213 (System.Collections.Generic.List`1)<class:7452 (HHDev.DataManagement.Core.Entities.CustomGridDisplayLayoutItem)>
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `Json` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string

## CustomGridDisplayLayoutItem

- `Children` : class:457 (System.Collections.Generic.IEnumerable`1)<class:7452 (HHDev.DataManagement.Core.Entities.CustomGridDisplayLayoutItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomGridDisplayDefinition` : class:7448 (HHDev.DataManagement.Core.Entities.CustomGridDisplayDefinition)
- `CustomGridDisplayDefinitionId` : string
- `Id` : string
- `Json` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `Parent` : class:7452 (HHDev.DataManagement.Core.Entities.CustomGridDisplayLayoutItem)
- `ParentId` : string
- `Type` : string
- `Children` : class:457 (System.Collections.Generic.IEnumerable`1)<class:7452 (HHDev.DataManagement.Core.Entities.CustomGridDisplayLayoutItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomGridDisplayDefinition` : class:7448 (HHDev.DataManagement.Core.Entities.CustomGridDisplayDefinition)
- `CustomGridDisplayDefinitionId` : string
- `Id` : string
- `Json` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `Parent` : class:7452 (HHDev.DataManagement.Core.Entities.CustomGridDisplayLayoutItem)
- `ParentId` : string
- `Type` : string

## CustomPart

- `SelectedPartId` : string
- `SelectedPartItemId` : string
- `SelectedPartId` : string
- `SelectedPartItemId` : string

## CustomPropertiesContainer

- `_assemblies` : class:205 (System.Collections.Generic.Dictionary`2)<string,string>
- `_booleans` : class:205 (System.Collections.Generic.Dictionary`2)<string,bool>
- `_dateTimes` : class:205 (System.Collections.Generic.Dictionary`2)<string,valuetype:465 (System.Nullable`1)<valuetype:341 (NodaTime.Instant)>>
- `_doubles` : class:205 (System.Collections.Generic.Dictionary`2)<string,valuetype:465 (System.Nullable`1)<r8>>
- `_parts` : class:205 (System.Collections.Generic.Dictionary`2)<string,class:5936 (HHDev.DataManagement.Core.Entities.CustomPart)>
- `_strings` : class:205 (System.Collections.Generic.Dictionary`2)<string,string>

## CustomPropertyActionParameter

- `ActionOperand` : string
- `ActionOperator` : valuetype:369 (HHDev.Core.NETStandard.Enums.eCustomActionOperator)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `DisplayName` : string
- `Equation` : string
- `Id` : string
- `Name` : string
- `ActionOperand` : string
- `ActionOperator` : valuetype:369 (HHDev.Core.NETStandard.Enums.eCustomActionOperator)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `DisplayName` : string
- `Equation` : string
- `Id` : string
- `Name` : string

## CustomPropertyActionTrigger

- `ActionId` : string
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `IsEnabled` : bool
- `ParameterName` : string
- `TriggerType` : valuetype:373 (HHDev.Core.NETStandard.Enums.eCustomActionTriggerType)
- `ActionId` : string
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `IsEnabled` : bool
- `ParameterName` : string
- `TriggerType` : valuetype:373 (HHDev.Core.NETStandard.Enums.eCustomActionTriggerType)

## CustomPropertyAssemblyDescription

- `AssemblyParameterAssociationMode` : valuetype:5892 (HHDev.DataManagement.Core.Entities.eAssemblyParameterAssociationMode)
- `AssemblyTypeId` : string
- `CopyToNewEntity` : bool
- `CustomPropertyAssemblyDescriptionsParameterDefinitionGroupings` : class:213 (System.Collections.Generic.List`1)<class:7456 (HHDev.DataManagement.Core.Entities.CustomPropertyAssemblyDescriptionsParameterDefinitionGroupings)>
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `DefaultAssemblyIterationId` : string
- `DisplayName` : string
- `ExampleValue` : string
- `Id` : string
- `IsLocked` : bool
- `Name` : string
- `PropertyType` : valuetype:361 (HHDev.Core.Enums.ePropertyType)
- `AssemblyParameterAssociationMode` : valuetype:5892 (HHDev.DataManagement.Core.Entities.eAssemblyParameterAssociationMode)
- `AssemblyTypeId` : string
- `CopyToNewEntity` : bool
- `CustomPropertyAssemblyDescriptionsParameterDefinitionGroupings` : class:213 (System.Collections.Generic.List`1)<class:7456 (HHDev.DataManagement.Core.Entities.CustomPropertyAssemblyDescriptionsParameterDefinitionGroupings)>
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `DefaultAssemblyIterationId` : string
- `DisplayName` : string
- `ExampleValue` : string
- `Id` : string
- `IsLocked` : bool
- `Name` : string
- `PropertyType` : valuetype:361 (HHDev.Core.Enums.ePropertyType)

## CustomPropertyAssemblyDescriptionsParameterDefinitionGroupings

- `CustomPropertyAssemblyDescription` : class:5888 (HHDev.DataManagement.Core.Entities.CustomPropertyAssemblyDescription)
- `CustomPropertyAssemblyDescriptionId` : string
- `Id` : string
- `ParameterDefinitionGrouping` : class:9460 (HHDev.DataManagement.Core.Entities.ParameterDefinitionGrouping)
- `ParameterDefinitionGroupingId` : string
- `CustomPropertyAssemblyDescription` : class:5888 (HHDev.DataManagement.Core.Entities.CustomPropertyAssemblyDescription)
- `CustomPropertyAssemblyDescriptionId` : string
- `Id` : string
- `ParameterDefinitionGrouping` : class:9460 (HHDev.DataManagement.Core.Entities.ParameterDefinitionGrouping)
- `ParameterDefinitionGroupingId` : string

## CustomPropertyCollection

- `CollectionItemDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CollectionItemDefinitionId` : string
- `CopyToNewEntity` : bool
- `CustomPropertyCollectionsParameterDefinitionGroupings` : class:213 (System.Collections.Generic.List`1)<class:7460 (HHDev.DataManagement.Core.Entities.CustomPropertyCollectionsParameterDefinitionGroupings)>
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `IsLocked` : bool
- `Name` : string
- `CollectionItemDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CollectionItemDefinitionId` : string
- `CopyToNewEntity` : bool
- `CustomPropertyCollectionsParameterDefinitionGroupings` : class:213 (System.Collections.Generic.List`1)<class:7460 (HHDev.DataManagement.Core.Entities.CustomPropertyCollectionsParameterDefinitionGroupings)>
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `IsLocked` : bool
- `Name` : string

## CustomPropertyCollectionsParameterDefinitionGroupings

- `CustomPropertyCollection` : class:5900 (HHDev.DataManagement.Core.Entities.CustomPropertyCollection)
- `CustomPropertyCollectionId` : string
- `Id` : string
- `ParameterDefinitionGrouping` : class:9460 (HHDev.DataManagement.Core.Entities.ParameterDefinitionGrouping)
- `ParameterDefinitionGroupingId` : string
- `CustomPropertyCollection` : class:5900 (HHDev.DataManagement.Core.Entities.CustomPropertyCollection)
- `CustomPropertyCollectionId` : string
- `Id` : string
- `ParameterDefinitionGrouping` : class:9460 (HHDev.DataManagement.Core.Entities.ParameterDefinitionGrouping)
- `ParameterDefinitionGroupingId` : string

## CustomPropertyDefinition

- `AccountId` : string
- `CollectionItemDefinitionCustomPropertyCollections` : class:213 (System.Collections.Generic.List`1)<class:5900 (HHDev.DataManagement.Core.Entities.CustomPropertyCollection)>
- `ColumnItemDisplayDefinitions` : class:213 (System.Collections.Generic.List`1)<class:7432 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayDefinition)>
- `CustomGridDisplayDefinitions` : class:213 (System.Collections.Generic.List`1)<class:7448 (HHDev.DataManagement.Core.Entities.CustomGridDisplayDefinition)>
- `CustomPropertyActionParameters` : class:213 (System.Collections.Generic.List`1)<class:5880 (HHDev.DataManagement.Core.Entities.CustomPropertyActionParameter)>
- `CustomPropertyActionTriggers` : class:213 (System.Collections.Generic.List`1)<class:5884 (HHDev.DataManagement.Core.Entities.CustomPropertyActionTrigger)>
- `CustomPropertyAssemblyDescriptions` : class:213 (System.Collections.Generic.List`1)<class:5888 (HHDev.DataManagement.Core.Entities.CustomPropertyAssemblyDescription)>
- `CustomPropertyAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:5896 (HHDev.DataManagement.Core.Entities.CustomPropertyAttachedFile)>
- `CustomPropertyCollections` : class:213 (System.Collections.Generic.List`1)<class:5900 (HHDev.DataManagement.Core.Entities.CustomPropertyCollection)>
- `CustomPropertyDescriptions` : class:213 (System.Collections.Generic.List`1)<class:5912 (HHDev.DataManagement.Core.Entities.CustomPropertyDescription)>
- `CustomPropertyMathParameters` : class:213 (System.Collections.Generic.List`1)<class:5916 (HHDev.DataManagement.Core.Entities.CustomPropertyMathParameter)>
- `CustomPropertyPartDescriptions` : class:213 (System.Collections.Generic.List`1)<class:5920 (HHDev.DataManagement.Core.Entities.CustomPropertyPartDescription)>
- `DefinitionType` : valuetype:460 (HHDev.DataManagement.Core.eCustomPropertyDefinitionType)
- `Id` : string
- `LastModifiedDate` : valuetype:465 (System.Nullable`1)<valuetype:341 (NodaTime.Instant)>
- `LinkedDefinitionChangeFormatterProfiles` : class:213 (System.Collections.Generic.List`1)<class:7416 (HHDev.DataManagement.Core.Entities.ChangeFormatterProfile)>
- `LinkedDefinitionViewCustomColumnProfiles` : class:213 (System.Collections.Generic.List`1)<class:10752 (HHDev.DataManagement.Core.Entities.ViewCustomColumnProfile)>
- `Name` : string
- `ParameterDefinitionGroupings` : class:213 (System.Collections.Generic.List`1)<class:9460 (HHDev.DataManagement.Core.Entities.ParameterDefinitionGrouping)>
- `PartDefinitions` : class:213 (System.Collections.Generic.List`1)<class:9484 (HHDev.DataManagement.Core.Entities.PartCategory)>
- `SetupDefinitionEventCars` : class:213 (System.Collections.Generic.List`1)<class:7672 (HHDev.DataManagement.Core.Entities.EventCar)>
- `AccountId` : string
- `CollectionItemDefinitionCustomPropertyCollections` : class:213 (System.Collections.Generic.List`1)<class:5900 (HHDev.DataManagement.Core.Entities.CustomPropertyCollection)>
- `ColumnItemDisplayDefinitions` : class:213 (System.Collections.Generic.List`1)<class:7432 (HHDev.DataManagement.Core.Entities.ColumnItemDisplayDefinition)>
- `CustomGridDisplayDefinitions` : class:213 (System.Collections.Generic.List`1)<class:7448 (HHDev.DataManagement.Core.Entities.CustomGridDisplayDefinition)>
- `CustomPropertyActionParameters` : class:213 (System.Collections.Generic.List`1)<class:5880 (HHDev.DataManagement.Core.Entities.CustomPropertyActionParameter)>
- `CustomPropertyActionTriggers` : class:213 (System.Collections.Generic.List`1)<class:5884 (HHDev.DataManagement.Core.Entities.CustomPropertyActionTrigger)>
- `CustomPropertyAssemblyDescriptions` : class:213 (System.Collections.Generic.List`1)<class:5888 (HHDev.DataManagement.Core.Entities.CustomPropertyAssemblyDescription)>
- `CustomPropertyAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:5896 (HHDev.DataManagement.Core.Entities.CustomPropertyAttachedFile)>
- `CustomPropertyCollections` : class:213 (System.Collections.Generic.List`1)<class:5900 (HHDev.DataManagement.Core.Entities.CustomPropertyCollection)>
- `CustomPropertyDescriptions` : class:213 (System.Collections.Generic.List`1)<class:5912 (HHDev.DataManagement.Core.Entities.CustomPropertyDescription)>
- `CustomPropertyMathParameters` : class:213 (System.Collections.Generic.List`1)<class:5916 (HHDev.DataManagement.Core.Entities.CustomPropertyMathParameter)>
- `CustomPropertyPartDescriptions` : class:213 (System.Collections.Generic.List`1)<class:5920 (HHDev.DataManagement.Core.Entities.CustomPropertyPartDescription)>
- `DefinitionType` : valuetype:460 (HHDev.DataManagement.Core.eCustomPropertyDefinitionType)
- `Id` : string
- `LastModifiedDate` : valuetype:465 (System.Nullable`1)<valuetype:341 (NodaTime.Instant)>
- `LinkedDefinitionChangeFormatterProfiles` : class:213 (System.Collections.Generic.List`1)<class:7416 (HHDev.DataManagement.Core.Entities.ChangeFormatterProfile)>
- `LinkedDefinitionViewCustomColumnProfiles` : class:213 (System.Collections.Generic.List`1)<class:10752 (HHDev.DataManagement.Core.Entities.ViewCustomColumnProfile)>
- `Name` : string
- `ParameterDefinitionGroupings` : class:213 (System.Collections.Generic.List`1)<class:9460 (HHDev.DataManagement.Core.Entities.ParameterDefinitionGrouping)>
- `PartDefinitions` : class:213 (System.Collections.Generic.List`1)<class:9484 (HHDev.DataManagement.Core.Entities.PartCategory)>
- `SetupDefinitionEventCars` : class:213 (System.Collections.Generic.List`1)<class:7672 (HHDev.DataManagement.Core.Entities.EventCar)>

## CustomPropertyDescription

- `ChangeTrackingTolerance` : valuetype:465 (System.Nullable`1)<r8>
- `CopyToNewEntity` : bool
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `CustomPropertyDescriptionsParameterDefinitionGroupings` : class:213 (System.Collections.Generic.List`1)<class:7464 (HHDev.DataManagement.Core.Entities.CustomPropertyDescriptionsParameterDefinitionGroupings)>
- `DefaultValue` : string
- `Dimension` : valuetype:345 (HHDev.Core.Units.eDimension)
- `DisplayDecimalPlaces` : valuetype:465 (System.Nullable`1)<i4>
- `DisplayName` : string
- `ExampleValue` : string
- `HasIndex` : bool
- `Id` : string
- `IsDefault` : bool
- `IsLocked` : bool
- `Name` : string
- `PropertyType` : valuetype:361 (HHDev.Core.Enums.ePropertyType)
- `Unit` : string
- `ChangeTrackingTolerance` : valuetype:465 (System.Nullable`1)<r8>
- `CopyToNewEntity` : bool
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `CustomPropertyDescriptionsParameterDefinitionGroupings` : class:213 (System.Collections.Generic.List`1)<class:7464 (HHDev.DataManagement.Core.Entities.CustomPropertyDescriptionsParameterDefinitionGroupings)>
- `DefaultValue` : string
- `Dimension` : valuetype:345 (HHDev.Core.Units.eDimension)
- `DisplayDecimalPlaces` : valuetype:465 (System.Nullable`1)<i4>
- `DisplayName` : string
- `ExampleValue` : string
- `HasIndex` : bool
- `Id` : string
- `IsDefault` : bool
- `IsLocked` : bool
- `Name` : string
- `PropertyType` : valuetype:361 (HHDev.Core.Enums.ePropertyType)
- `Unit` : string

## CustomPropertyDescriptionsParameterDefinitionGroupings

- `CustomPropertyDescription` : class:5912 (HHDev.DataManagement.Core.Entities.CustomPropertyDescription)
- `CustomPropertyDescriptionId` : string
- `Id` : string
- `ParameterDefinitionGrouping` : class:9460 (HHDev.DataManagement.Core.Entities.ParameterDefinitionGrouping)
- `ParameterDefinitionGroupingId` : string
- `CustomPropertyDescription` : class:5912 (HHDev.DataManagement.Core.Entities.CustomPropertyDescription)
- `CustomPropertyDescriptionId` : string
- `Id` : string
- `ParameterDefinitionGrouping` : class:9460 (HHDev.DataManagement.Core.Entities.ParameterDefinitionGrouping)
- `ParameterDefinitionGroupingId` : string

## CustomPropertyMathParameter

- `ChangeTrackingTolerance` : valuetype:465 (System.Nullable`1)<r8>
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `CustomPropertyMathParametersParameterDefinitionGroupings` : class:213 (System.Collections.Generic.List`1)<class:7468 (HHDev.DataManagement.Core.Entities.CustomPropertyMathParametersParameterDefinitionGroupings)>
- `Dimension` : valuetype:345 (HHDev.Core.Units.eDimension)
- `DisplayDecimalPlaces` : valuetype:465 (System.Nullable`1)<i4>
- `DisplayName` : string
- `DisplayUnit` : string
- `Equation` : string
- `Id` : string
- `IntendedReturnType` : valuetype:365 (HHDev.Core.Enums.eEquationNodeReturnTypes)
- `IsDefault` : bool
- `IsEnabled` : bool
- `IsLocked` : bool
- `IsProtected` : bool
- `Name` : string
- `Notes` : string
- `ResultUnit` : string
- `ChangeTrackingTolerance` : valuetype:465 (System.Nullable`1)<r8>
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `CustomPropertyMathParametersParameterDefinitionGroupings` : class:213 (System.Collections.Generic.List`1)<class:7468 (HHDev.DataManagement.Core.Entities.CustomPropertyMathParametersParameterDefinitionGroupings)>
- `Dimension` : valuetype:345 (HHDev.Core.Units.eDimension)
- `DisplayDecimalPlaces` : valuetype:465 (System.Nullable`1)<i4>
- `DisplayName` : string
- `DisplayUnit` : string
- `Equation` : string
- `Id` : string
- `IntendedReturnType` : valuetype:365 (HHDev.Core.Enums.eEquationNodeReturnTypes)
- `IsDefault` : bool
- `IsEnabled` : bool
- `IsLocked` : bool
- `IsProtected` : bool
- `Name` : string
- `Notes` : string
- `ResultUnit` : string

## CustomPropertyMathParametersParameterDefinitionGroupings

- `CustomPropertyMathParameter` : class:5916 (HHDev.DataManagement.Core.Entities.CustomPropertyMathParameter)
- `CustomPropertyMathParameterId` : string
- `Id` : string
- `ParameterDefinitionGrouping` : class:9460 (HHDev.DataManagement.Core.Entities.ParameterDefinitionGrouping)
- `ParameterDefinitionGroupingId` : string
- `CustomPropertyMathParameter` : class:5916 (HHDev.DataManagement.Core.Entities.CustomPropertyMathParameter)
- `CustomPropertyMathParameterId` : string
- `Id` : string
- `ParameterDefinitionGrouping` : class:9460 (HHDev.DataManagement.Core.Entities.ParameterDefinitionGrouping)
- `ParameterDefinitionGroupingId` : string

## CustomPropertyPartDescription

- `CopyToNewEntity` : bool
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `CustomPropertyPartDescriptionsParameterDefinitionGroupings` : class:213 (System.Collections.Generic.List`1)<class:7472 (HHDev.DataManagement.Core.Entities.CustomPropertyPartDescriptionsParameterDefinitionGroupings)>
- `DefaultPartId` : string
- `DefaultPartItemId` : string
- `DisplayName` : string
- `ExampleValue` : string
- `Id` : string
- `IsLocked` : bool
- `Name` : string
- `PartCategoryId` : string
- `PropertyType` : valuetype:361 (HHDev.Core.Enums.ePropertyType)
- `CopyToNewEntity` : bool
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `CustomPropertyPartDescriptionsParameterDefinitionGroupings` : class:213 (System.Collections.Generic.List`1)<class:7472 (HHDev.DataManagement.Core.Entities.CustomPropertyPartDescriptionsParameterDefinitionGroupings)>
- `DefaultPartId` : string
- `DefaultPartItemId` : string
- `DisplayName` : string
- `ExampleValue` : string
- `Id` : string
- `IsLocked` : bool
- `Name` : string
- `PartCategoryId` : string
- `PropertyType` : valuetype:361 (HHDev.Core.Enums.ePropertyType)

## CustomPropertyPartDescriptionsParameterDefinitionGroupings

- `CustomPropertyPartDescription` : class:5920 (HHDev.DataManagement.Core.Entities.CustomPropertyPartDescription)
- `CustomPropertyPartDescriptionId` : string
- `Id` : string
- `ParameterDefinitionGrouping` : class:9460 (HHDev.DataManagement.Core.Entities.ParameterDefinitionGrouping)
- `ParameterDefinitionGroupingId` : string
- `CustomPropertyPartDescription` : class:5920 (HHDev.DataManagement.Core.Entities.CustomPropertyPartDescription)
- `CustomPropertyPartDescriptionId` : string
- `Id` : string
- `ParameterDefinitionGrouping` : class:9460 (HHDev.DataManagement.Core.Entities.ParameterDefinitionGrouping)
- `ParameterDefinitionGroupingId` : string

## CustomViewDefinition

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CidControlDefinitionNamePath` : string
- `CidControlDefinitionReadOnly` : bool
- `CidDefaultViewName` : string
- `CollectionItemDisplayMember` : string
- `ContextSelectionDefaultSelectionMode` : valuetype:456 (HHDev.DataManagement.Core.eContextSelectionDefaultSelectionMode)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomColumnProfileName` : string
- `CustomViewIconName` : string
- `CustomViewIconType` : valuetype:400 (HHDev.DataManagement.Core.eIconType)
- `CustomViewType` : valuetype:396 (HHDev.DataManagement.Core.eCustomViewType)
- `Enabled` : bool
- `FilterExpression` : string
- `HideAddItemButton` : bool
- `HideCidFreezeControl` : bool
- `HideCidName` : bool
- `HideCidSearchControl` : bool
- `HideCidSelectionControl` : bool
- `HideCopyItemBelowButton` : bool
- `HideCopyItemNextButton` : bool
- `HideCopyItemToEndButton` : bool
- `HideDeleteItemButton` : bool
- `HideMoveItemDownButton` : bool
- `HideMoveItemLeftButton` : bool
- `HideMoveItemRightButton` : bool
- `HideMoveItemUpButton` : bool
- `HideSessionParameterName` : string
- `Id` : string
- `IsIgnoreForPermissions` : bool
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `LinkedCgdDefinitionName` : string
- `LinkedCidDefinitionName` : string
- `LinkedCollectionName` : string
- `Name` : string
- `NameForPermissions` : string
- `Order` : i4
- `SelectedItemId` : string
- `UseExpressionBindingForCidControlDefinitionNamePath` : bool
- `ViewEntityType` : string
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CidControlDefinitionNamePath` : string
- `CidControlDefinitionReadOnly` : bool
- `CidDefaultViewName` : string
- `CollectionItemDisplayMember` : string
- `ContextSelectionDefaultSelectionMode` : valuetype:456 (HHDev.DataManagement.Core.eContextSelectionDefaultSelectionMode)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomColumnProfileName` : string
- `CustomViewIconName` : string
- `CustomViewIconType` : valuetype:400 (HHDev.DataManagement.Core.eIconType)
- `CustomViewType` : valuetype:396 (HHDev.DataManagement.Core.eCustomViewType)
- `Enabled` : bool
- `FilterExpression` : string
- `HideAddItemButton` : bool
- `HideCidFreezeControl` : bool
- `HideCidName` : bool
- `HideCidSearchControl` : bool
- `HideCidSelectionControl` : bool
- `HideCopyItemBelowButton` : bool
- `HideCopyItemNextButton` : bool
- `HideCopyItemToEndButton` : bool
- `HideDeleteItemButton` : bool
- `HideMoveItemDownButton` : bool
- `HideMoveItemLeftButton` : bool
- `HideMoveItemRightButton` : bool
- `HideMoveItemUpButton` : bool
- `HideSessionParameterName` : string
- `Id` : string
- `IsIgnoreForPermissions` : bool
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `LinkedCgdDefinitionName` : string
- `LinkedCidDefinitionName` : string
- `LinkedCollectionName` : string
- `Name` : string
- `NameForPermissions` : string
- `Order` : i4
- `SelectedItemId` : string
- `UseExpressionBindingForCidControlDefinitionNamePath` : bool
- `ViewEntityType` : string

## DataAnalysisFolder

- `Condition` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `DataAnalysisProfile` : class:7484 (HHDev.DataManagement.Core.Entities.DataAnalysisProfile)
- `DataAnalysisProfileId` : string
- `DataChannels` : class:213 (System.Collections.Generic.List`1)<class:7488 (HHDev.DataManagement.Core.Entities.DataChannel)>
- `Id` : string
- `LapKpis` : class:213 (System.Collections.Generic.List`1)<class:8836 (HHDev.DataManagement.Core.Entities.LapKpi)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `MathChannelConstants` : class:213 (System.Collections.Generic.List`1)<class:9316 (HHDev.DataManagement.Core.Entities.MathChannelConstant)>
- `MathChannelFlatModelExpressions` : class:213 (System.Collections.Generic.List`1)<class:9320 (HHDev.DataManagement.Core.Entities.MathChannelFlatModelExpression)>
- `MathChannels` : class:213 (System.Collections.Generic.List`1)<class:9312 (HHDev.DataManagement.Core.Entities.MathChannel)>
- `Name` : string
- `ShouldBeCalculated` : bool
- `Condition` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `DataAnalysisProfile` : class:7484 (HHDev.DataManagement.Core.Entities.DataAnalysisProfile)
- `DataAnalysisProfileId` : string
- `DataChannels` : class:213 (System.Collections.Generic.List`1)<class:7488 (HHDev.DataManagement.Core.Entities.DataChannel)>
- `Id` : string
- `LapKpis` : class:213 (System.Collections.Generic.List`1)<class:8836 (HHDev.DataManagement.Core.Entities.LapKpi)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `MathChannelConstants` : class:213 (System.Collections.Generic.List`1)<class:9316 (HHDev.DataManagement.Core.Entities.MathChannelConstant)>
- `MathChannelFlatModelExpressions` : class:213 (System.Collections.Generic.List`1)<class:9320 (HHDev.DataManagement.Core.Entities.MathChannelFlatModelExpression)>
- `MathChannels` : class:213 (System.Collections.Generic.List`1)<class:9312 (HHDev.DataManagement.Core.Entities.MathChannel)>
- `Name` : string
- `ShouldBeCalculated` : bool

## DataAnalysisProfile

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `DataAnalysisFolders` : class:213 (System.Collections.Generic.List`1)<class:7480 (HHDev.DataManagement.Core.Entities.DataAnalysisFolder)>
- `EventCars` : class:213 (System.Collections.Generic.List`1)<class:7672 (HHDev.DataManagement.Core.Entities.EventCar)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `DataAnalysisFolders` : class:213 (System.Collections.Generic.List`1)<class:7480 (HHDev.DataManagement.Core.Entities.DataAnalysisFolder)>
- `EventCars` : class:213 (System.Collections.Generic.List`1)<class:7672 (HHDev.DataManagement.Core.Entities.EventCar)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string

## DataChannel

- `Colour` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `DataAnalysisFolder` : class:7480 (HHDev.DataManagement.Core.Entities.DataAnalysisFolder)
- `DataAnalysisFolderId` : string
- `DataChannelAliases` : class:213 (System.Collections.Generic.List`1)<class:7492 (HHDev.DataManagement.Core.Entities.DataChannelAlias)>
- `Dimension` : valuetype:345 (HHDev.Core.Units.eDimension)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `ResamplingMode` : valuetype:452 (HHDev.DataManagement.Core.eChannelResamplingMode)
- `ShouldBeCalculated` : bool
- `Unit` : string
- `Colour` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `DataAnalysisFolder` : class:7480 (HHDev.DataManagement.Core.Entities.DataAnalysisFolder)
- `DataAnalysisFolderId` : string
- `DataChannelAliases` : class:213 (System.Collections.Generic.List`1)<class:7492 (HHDev.DataManagement.Core.Entities.DataChannelAlias)>
- `Dimension` : valuetype:345 (HHDev.Core.Units.eDimension)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `ResamplingMode` : valuetype:452 (HHDev.DataManagement.Core.eChannelResamplingMode)
- `ShouldBeCalculated` : bool
- `Unit` : string

## DataChannelAlias

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `DataChannel` : class:7488 (HHDev.DataManagement.Core.Entities.DataChannel)
- `DataChannelId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `ShouldBeCalculated` : bool
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `DataChannel` : class:7488 (HHDev.DataManagement.Core.Entities.DataChannel)
- `DataChannelId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `ShouldBeCalculated` : bool

## DatabaseInformation

- `Key` : string
- `Value` : string
- `Key` : string
- `Value` : string

## Driver

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `DriverAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7512 (HHDev.DataManagement.Core.Entities.DriverAttachedFile)>
- `DriverCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7516 (HHDev.DataManagement.Core.Entities.DriverCollectionItem)>
- `EventCarDrivers` : class:213 (System.Collections.Generic.List`1)<class:7808 (HHDev.DataManagement.Core.Entities.EventCarDriver)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `PlannedRuns` : class:213 (System.Collections.Generic.List`1)<class:9688 (HHDev.DataManagement.Core.Entities.PlannedRun)>
- `RunSheets` : class:213 (System.Collections.Generic.List`1)<class:9796 (HHDev.DataManagement.Core.Entities.RunSheet)>
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `DriverAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7512 (HHDev.DataManagement.Core.Entities.DriverAttachedFile)>
- `DriverCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7516 (HHDev.DataManagement.Core.Entities.DriverCollectionItem)>
- `EventCarDrivers` : class:213 (System.Collections.Generic.List`1)<class:7808 (HHDev.DataManagement.Core.Entities.EventCarDriver)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `PlannedRuns` : class:213 (System.Collections.Generic.List`1)<class:9688 (HHDev.DataManagement.Core.Entities.PlannedRun)>
- `RunSheets` : class:213 (System.Collections.Generic.List`1)<class:9796 (HHDev.DataManagement.Core.Entities.RunSheet)>

## EngineerNotesCategory

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EngineerNotesCategoryAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7548 (HHDev.DataManagement.Core.Entities.EngineerNotesCategoryAttachedFile)>
- `EngineerNotesCategoryCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7552 (HHDev.DataManagement.Core.Entities.EngineerNotesCategoryCollectionItem)>
- `EngineerRunSheetNotes` : class:213 (System.Collections.Generic.List`1)<class:7568 (HHDev.DataManagement.Core.Entities.EngineerRunSheetNote)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EngineerNotesCategoryAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7548 (HHDev.DataManagement.Core.Entities.EngineerNotesCategoryAttachedFile)>
- `EngineerNotesCategoryCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7552 (HHDev.DataManagement.Core.Entities.EngineerNotesCategoryCollectionItem)>
- `EngineerRunSheetNotes` : class:213 (System.Collections.Generic.List`1)<class:7568 (HHDev.DataManagement.Core.Entities.EngineerRunSheetNote)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string

## EngineerRunSheetNote

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EngineerNotesCategory` : class:7532 (HHDev.DataManagement.Core.Entities.EngineerNotesCategory)
- `EngineerNotesCategoryId` : string
- `EngineerRunSheetNoteAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7584 (HHDev.DataManagement.Core.Entities.EngineerRunSheetNoteAttachedFile)>
- `EngineerRunSheetNoteCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7588 (HHDev.DataManagement.Core.Entities.EngineerRunSheetNoteCollectionItem)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `RunSheet` : class:9796 (HHDev.DataManagement.Core.Entities.RunSheet)
- `RunSheetId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EngineerNotesCategory` : class:7532 (HHDev.DataManagement.Core.Entities.EngineerNotesCategory)
- `EngineerNotesCategoryId` : string
- `EngineerRunSheetNoteAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7584 (HHDev.DataManagement.Core.Entities.EngineerRunSheetNoteAttachedFile)>
- `EngineerRunSheetNoteCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7588 (HHDev.DataManagement.Core.Entities.EngineerRunSheetNoteCollectionItem)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `RunSheet` : class:9796 (HHDev.DataManagement.Core.Entities.RunSheet)
- `RunSheetId` : string

## Event

- `AmbientMeasurements` : class:213 (System.Collections.Generic.List`1)<class:5820 (HHDev.DataManagement.Core.Entities.AmbientMeasurement)>
- `BrakeDiscWearMeasurements` : class:213 (System.Collections.Generic.List`1)<class:6588 (HHDev.DataManagement.Core.Entities.BrakeDiscWearMeasurement)>
- `BrakePadWearMeasurements` : class:213 (System.Collections.Generic.List`1)<class:6796 (HHDev.DataManagement.Core.Entities.BrakePadWearMeasurement)>
- `BrakeWearSheets` : class:213 (System.Collections.Generic.List`1)<class:6968 (HHDev.DataManagement.Core.Entities.BrakeWearSheet)>
- `Championship` : class:7244 (HHDev.DataManagement.Core.Entities.Championship)
- `ChampionshipId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `DefaultTrackConfiguration` : class:10284 (HHDev.DataManagement.Core.Entities.TrackConfiguration)
- `DefaultTrackConfigurationId` : string
- `EventAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7604 (HHDev.DataManagement.Core.Entities.EventAttachedFile)>
- `EventCarDatas` : class:213 (System.Collections.Generic.List`1)<class:7772 (HHDev.DataManagement.Core.Entities.EventCarData)>
- `EventCars` : class:213 (System.Collections.Generic.List`1)<class:7672 (HHDev.DataManagement.Core.Entities.EventCar)>
- `EventCarSetupsManualMileages` : class:213 (System.Collections.Generic.List`1)<class:7876 (HHDev.DataManagement.Core.Entities.EventCarSetupsManualMileage)>
- `EventCarSetupsPredictiveMileages` : class:213 (System.Collections.Generic.List`1)<class:7912 (HHDev.DataManagement.Core.Entities.EventCarSetupsPredictiveMileage)>
- `EventCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7964 (HHDev.DataManagement.Core.Entities.EventCollectionItem)>
- `EventData` : class:7980 (HHDev.DataManagement.Core.Entities.EventData)
- `EventLoadLists` : class:213 (System.Collections.Generic.List`1)<class:8032 (HHDev.DataManagement.Core.Entities.EventLoadList)>
- `EventNotes` : class:213 (System.Collections.Generic.List`1)<class:8052 (HHDev.DataManagement.Core.Entities.EventNote)>
- `EventsAssemblyIterations` : class:213 (System.Collections.Generic.List`1)<class:6196 (HHDev.DataManagement.Core.Entities.EventAssemblyIteration)>
- `EventsBrakeDiscs` : class:213 (System.Collections.Generic.List`1)<class:6456 (HHDev.DataManagement.Core.Entities.EventBrakeDisc)>
- `EventsBrakePads` : class:213 (System.Collections.Generic.List`1)<class:6664 (HHDev.DataManagement.Core.Entities.EventBrakePad)>
- `EventsBrakeSets` : class:213 (System.Collections.Generic.List`1)<class:6872 (HHDev.DataManagement.Core.Entities.EventBrakeSet)>
- `EventServiceReturns` : class:213 (System.Collections.Generic.List`1)<class:8088 (HHDev.DataManagement.Core.Entities.EventServiceReturn)>
- `EventsIssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8368 (HHDev.DataManagement.Core.Entities.EventIssueListIssue)>
- `EventsNamedAssemblies` : class:213 (System.Collections.Generic.List`1)<class:9360 (HHDev.DataManagement.Core.Entities.EventNamedAssembly)>
- `EventsTyres` : class:213 (System.Collections.Generic.List`1)<class:10428 (HHDev.DataManagement.Core.Entities.EventTyre)>
- `EventsTyreSpecifications` : class:213 (System.Collections.Generic.List`1)<class:8124 (HHDev.DataManagement.Core.Entities.EventsTyreSpecifications)>
- `Id` : string
- `LapMarkersEventObjects` : class:213 (System.Collections.Generic.List`1)<class:8876 (HHDev.DataManagement.Core.Entities.LapMarkersEventObject)>
- `LapTrackStatusMarkersEventObjects` : class:213 (System.Collections.Generic.List`1)<class:9092 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersEventObject)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `ReferencePressureRuns` : class:213 (System.Collections.Generic.List`1)<class:9724 (HHDev.DataManagement.Core.Entities.ReferencePressureRun)>
- `Sessions` : class:213 (System.Collections.Generic.List`1)<class:9836 (HHDev.DataManagement.Core.Entities.Session)>
- `Setups` : class:213 (System.Collections.Generic.List`1)<class:10176 (HHDev.DataManagement.Core.Entities.Setup)>
- `SyncDataSelections` : class:213 (System.Collections.Generic.List`1)<class:10772 (HHDev.DataManagement.Core.Entities.HHDMSyncDataSelection)>
- `Track` : class:10248 (HHDev.DataManagement.Core.Entities.Track)
- `TrackId` : string
- `TyreSets` : class:213 (System.Collections.Generic.List`1)<class:10524 (HHDev.DataManagement.Core.Entities.TyreSet)>
- `TyreWearMeasurements` : class:213 (System.Collections.Generic.List`1)<class:10632 (HHDev.DataManagement.Core.Entities.TyreWearMeasurement)>
- `TyreWearSheets` : class:213 (System.Collections.Generic.List`1)<class:10672 (HHDev.DataManagement.Core.Entities.TyreWearSheet)>
- `AmbientMeasurements` : class:213 (System.Collections.Generic.List`1)<class:5820 (HHDev.DataManagement.Core.Entities.AmbientMeasurement)>
- `BrakeDiscWearMeasurements` : class:213 (System.Collections.Generic.List`1)<class:6588 (HHDev.DataManagement.Core.Entities.BrakeDiscWearMeasurement)>
- `BrakePadWearMeasurements` : class:213 (System.Collections.Generic.List`1)<class:6796 (HHDev.DataManagement.Core.Entities.BrakePadWearMeasurement)>
- `BrakeWearSheets` : class:213 (System.Collections.Generic.List`1)<class:6968 (HHDev.DataManagement.Core.Entities.BrakeWearSheet)>
- `Championship` : class:7244 (HHDev.DataManagement.Core.Entities.Championship)
- `ChampionshipId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `DefaultTrackConfiguration` : class:10284 (HHDev.DataManagement.Core.Entities.TrackConfiguration)
- `DefaultTrackConfigurationId` : string
- `EventAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7604 (HHDev.DataManagement.Core.Entities.EventAttachedFile)>
- `EventCarDatas` : class:213 (System.Collections.Generic.List`1)<class:7772 (HHDev.DataManagement.Core.Entities.EventCarData)>
- `EventCars` : class:213 (System.Collections.Generic.List`1)<class:7672 (HHDev.DataManagement.Core.Entities.EventCar)>
- `EventCarSetupsManualMileages` : class:213 (System.Collections.Generic.List`1)<class:7876 (HHDev.DataManagement.Core.Entities.EventCarSetupsManualMileage)>
- `EventCarSetupsPredictiveMileages` : class:213 (System.Collections.Generic.List`1)<class:7912 (HHDev.DataManagement.Core.Entities.EventCarSetupsPredictiveMileage)>
- `EventCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7964 (HHDev.DataManagement.Core.Entities.EventCollectionItem)>
- `EventData` : class:7980 (HHDev.DataManagement.Core.Entities.EventData)
- `EventLoadLists` : class:213 (System.Collections.Generic.List`1)<class:8032 (HHDev.DataManagement.Core.Entities.EventLoadList)>
- `EventNotes` : class:213 (System.Collections.Generic.List`1)<class:8052 (HHDev.DataManagement.Core.Entities.EventNote)>
- `EventsAssemblyIterations` : class:213 (System.Collections.Generic.List`1)<class:6196 (HHDev.DataManagement.Core.Entities.EventAssemblyIteration)>
- `EventsBrakeDiscs` : class:213 (System.Collections.Generic.List`1)<class:6456 (HHDev.DataManagement.Core.Entities.EventBrakeDisc)>
- `EventsBrakePads` : class:213 (System.Collections.Generic.List`1)<class:6664 (HHDev.DataManagement.Core.Entities.EventBrakePad)>
- `EventsBrakeSets` : class:213 (System.Collections.Generic.List`1)<class:6872 (HHDev.DataManagement.Core.Entities.EventBrakeSet)>
- `EventServiceReturns` : class:213 (System.Collections.Generic.List`1)<class:8088 (HHDev.DataManagement.Core.Entities.EventServiceReturn)>
- `EventsIssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8368 (HHDev.DataManagement.Core.Entities.EventIssueListIssue)>
- `EventsNamedAssemblies` : class:213 (System.Collections.Generic.List`1)<class:9360 (HHDev.DataManagement.Core.Entities.EventNamedAssembly)>
- `EventsTyres` : class:213 (System.Collections.Generic.List`1)<class:10428 (HHDev.DataManagement.Core.Entities.EventTyre)>
- `EventsTyreSpecifications` : class:213 (System.Collections.Generic.List`1)<class:8124 (HHDev.DataManagement.Core.Entities.EventsTyreSpecifications)>
- `Id` : string
- `LapMarkersEventObjects` : class:213 (System.Collections.Generic.List`1)<class:8876 (HHDev.DataManagement.Core.Entities.LapMarkersEventObject)>
- `LapTrackStatusMarkersEventObjects` : class:213 (System.Collections.Generic.List`1)<class:9092 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersEventObject)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `ReferencePressureRuns` : class:213 (System.Collections.Generic.List`1)<class:9724 (HHDev.DataManagement.Core.Entities.ReferencePressureRun)>
- `Sessions` : class:213 (System.Collections.Generic.List`1)<class:9836 (HHDev.DataManagement.Core.Entities.Session)>
- `Setups` : class:213 (System.Collections.Generic.List`1)<class:10176 (HHDev.DataManagement.Core.Entities.Setup)>
- `SyncDataSelections` : class:213 (System.Collections.Generic.List`1)<class:10772 (HHDev.DataManagement.Core.Entities.HHDMSyncDataSelection)>
- `Track` : class:10248 (HHDev.DataManagement.Core.Entities.Track)
- `TrackId` : string
- `TyreSets` : class:213 (System.Collections.Generic.List`1)<class:10524 (HHDev.DataManagement.Core.Entities.TyreSet)>
- `TyreWearMeasurements` : class:213 (System.Collections.Generic.List`1)<class:10632 (HHDev.DataManagement.Core.Entities.TyreWearMeasurement)>
- `TyreWearSheets` : class:213 (System.Collections.Generic.List`1)<class:10672 (HHDev.DataManagement.Core.Entities.TyreWearSheet)>

## EventAssemblyIteration

- `AssemblyIteration` : class:6160 (HHDev.DataManagement.Core.Entities.AssemblyIteration)
- `AssemblyIterationId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventAssemblyIterationAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6212 (HHDev.DataManagement.Core.Entities.EventAssemblyIterationAttachedFile)>
- `EventAssemblyIterationCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7608 (HHDev.DataManagement.Core.Entities.EventAssemblyIterationCollectionItem)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `AssemblyIteration` : class:6160 (HHDev.DataManagement.Core.Entities.AssemblyIteration)
- `AssemblyIterationId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventAssemblyIterationAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6212 (HHDev.DataManagement.Core.Entities.EventAssemblyIterationAttachedFile)>
- `EventAssemblyIterationCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7608 (HHDev.DataManagement.Core.Entities.EventAssemblyIterationCollectionItem)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## EventBrakeDisc

- `BrakeDisc` : class:6420 (HHDev.DataManagement.Core.Entities.BrakeDisc)
- `BrakeDiscId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventBrakeDiscAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6472 (HHDev.DataManagement.Core.Entities.EventBrakeDiscAttachedFile)>
- `EventBrakeDiscCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7624 (HHDev.DataManagement.Core.Entities.EventBrakeDiscCollectionItem)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `BrakeDisc` : class:6420 (HHDev.DataManagement.Core.Entities.BrakeDisc)
- `BrakeDiscId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventBrakeDiscAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6472 (HHDev.DataManagement.Core.Entities.EventBrakeDiscAttachedFile)>
- `EventBrakeDiscCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7624 (HHDev.DataManagement.Core.Entities.EventBrakeDiscCollectionItem)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## EventBrakePad

- `BrakePad` : class:6628 (HHDev.DataManagement.Core.Entities.BrakePad)
- `BrakePadId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventBrakePadAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6680 (HHDev.DataManagement.Core.Entities.EventBrakePadAttachedFile)>
- `EventBrakePadCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7640 (HHDev.DataManagement.Core.Entities.EventBrakePadCollectionItem)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `BrakePad` : class:6628 (HHDev.DataManagement.Core.Entities.BrakePad)
- `BrakePadId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventBrakePadAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6680 (HHDev.DataManagement.Core.Entities.EventBrakePadAttachedFile)>
- `EventBrakePadCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7640 (HHDev.DataManagement.Core.Entities.EventBrakePadCollectionItem)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## EventBrakeSet

- `BrakeSet` : class:6836 (HHDev.DataManagement.Core.Entities.BrakeSet)
- `BrakeSetId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventBrakeSetAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6888 (HHDev.DataManagement.Core.Entities.EventBrakeSetAttachedFile)>
- `EventBrakeSetCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7656 (HHDev.DataManagement.Core.Entities.EventBrakeSetCollectionItem)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `BrakeSet` : class:6836 (HHDev.DataManagement.Core.Entities.BrakeSet)
- `BrakeSetId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventBrakeSetAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6888 (HHDev.DataManagement.Core.Entities.EventBrakeSetAttachedFile)>
- `EventBrakeSetCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7656 (HHDev.DataManagement.Core.Entities.EventBrakeSetCollectionItem)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## EventCar

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `DataAnalysisProfile` : class:7484 (HHDev.DataManagement.Core.Entities.DataAnalysisProfile)
- `DataAnalysisProfileId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventCarAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7688 (HHDev.DataManagement.Core.Entities.EventCarAttachedFile)>
- `EventCarCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7756 (HHDev.DataManagement.Core.Entities.EventCarCollectionItem)>
- `EventCarDrivers` : class:213 (System.Collections.Generic.List`1)<class:7808 (HHDev.DataManagement.Core.Entities.EventCarDriver)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `MileageLastUpdatedDate` : valuetype:465 (System.Nullable`1)<valuetype:341 (NodaTime.Instant)>
- `MileageVersion` : string
- `SetupDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `SetupDefinitionId` : string
- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `DataAnalysisProfile` : class:7484 (HHDev.DataManagement.Core.Entities.DataAnalysisProfile)
- `DataAnalysisProfileId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventCarAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7688 (HHDev.DataManagement.Core.Entities.EventCarAttachedFile)>
- `EventCarCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7756 (HHDev.DataManagement.Core.Entities.EventCarCollectionItem)>
- `EventCarDrivers` : class:213 (System.Collections.Generic.List`1)<class:7808 (HHDev.DataManagement.Core.Entities.EventCarDriver)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `MileageLastUpdatedDate` : valuetype:465 (System.Nullable`1)<valuetype:341 (NodaTime.Instant)>
- `MileageVersion` : string
- `SetupDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `SetupDefinitionId` : string

## EventCarAssemblyIteration

- `AssemblyIteration` : class:6160 (HHDev.DataManagement.Core.Entities.AssemblyIteration)
- `AssemblyIterationId` : string
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EventCarAssemblyIterationAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6232 (HHDev.DataManagement.Core.Entities.EventCarAssemblyIterationAttachedFile)>
- `EventCarAssemblyIterationCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7692 (HHDev.DataManagement.Core.Entities.EventCarAssemblyIterationCollectionItem)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `AssemblyIteration` : class:6160 (HHDev.DataManagement.Core.Entities.AssemblyIteration)
- `AssemblyIterationId` : string
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EventCarAssemblyIterationAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6232 (HHDev.DataManagement.Core.Entities.EventCarAssemblyIterationAttachedFile)>
- `EventCarAssemblyIterationCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7692 (HHDev.DataManagement.Core.Entities.EventCarAssemblyIterationCollectionItem)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## EventCarBrakeDisc

- `BrakeDisc` : class:6420 (HHDev.DataManagement.Core.Entities.BrakeDisc)
- `BrakeDiscId` : string
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EventCarBrakeDiscAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6492 (HHDev.DataManagement.Core.Entities.EventCarBrakeDiscAttachedFile)>
- `EventCarBrakeDiscCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7708 (HHDev.DataManagement.Core.Entities.EventCarBrakeDiscCollectionItem)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `BrakeDisc` : class:6420 (HHDev.DataManagement.Core.Entities.BrakeDisc)
- `BrakeDiscId` : string
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EventCarBrakeDiscAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6492 (HHDev.DataManagement.Core.Entities.EventCarBrakeDiscAttachedFile)>
- `EventCarBrakeDiscCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7708 (HHDev.DataManagement.Core.Entities.EventCarBrakeDiscCollectionItem)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## EventCarBrakePad

- `BrakePad` : class:6628 (HHDev.DataManagement.Core.Entities.BrakePad)
- `BrakePadId` : string
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EventCarBrakePadAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6700 (HHDev.DataManagement.Core.Entities.EventCarBrakePadAttachedFile)>
- `EventCarBrakePadCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7724 (HHDev.DataManagement.Core.Entities.EventCarBrakePadCollectionItem)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `BrakePad` : class:6628 (HHDev.DataManagement.Core.Entities.BrakePad)
- `BrakePadId` : string
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EventCarBrakePadAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6700 (HHDev.DataManagement.Core.Entities.EventCarBrakePadAttachedFile)>
- `EventCarBrakePadCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7724 (HHDev.DataManagement.Core.Entities.EventCarBrakePadCollectionItem)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## EventCarBrakeSet

- `BrakeSet` : class:6836 (HHDev.DataManagement.Core.Entities.BrakeSet)
- `BrakeSetId` : string
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EventCarBrakeSetAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6908 (HHDev.DataManagement.Core.Entities.EventCarBrakeSetAttachedFile)>
- `EventCarBrakeSetCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7740 (HHDev.DataManagement.Core.Entities.EventCarBrakeSetCollectionItem)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `BrakeSet` : class:6836 (HHDev.DataManagement.Core.Entities.BrakeSet)
- `BrakeSetId` : string
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EventCarBrakeSetAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:6908 (HHDev.DataManagement.Core.Entities.EventCarBrakeSetAttachedFile)>
- `EventCarBrakeSetCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7740 (HHDev.DataManagement.Core.Entities.EventCarBrakeSetCollectionItem)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## EventCarData

- `Id` : string
- `RunPlanMode` : valuetype:5992 (HHDev.DataManagement.Core.Entities.eRunPlanMode)
- `FuelCountDirection` : valuetype:6044 (HHDev.DataManagement.Core.Entities.eFuelCountDirection)
- `EventId` : string
- `CarId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CreatedBy` : string
- `LastModifiedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `CustomPropertyDefinitionId` : string
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `EventCarDataAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7788 (HHDev.DataManagement.Core.Entities.EventCarDataAttachedFile)>
- `EventCarDataCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7792 (HHDev.DataManagement.Core.Entities.EventCarDataCollectionItem)>

## EventCarDriver

- `Id` : string
- `EventCarId` : string
- `EventCar` : class:7672 (HHDev.DataManagement.Core.Entities.EventCar)
- `DriverId` : string
- `Driver` : class:7496 (HHDev.DataManagement.Core.Entities.Driver)
- `CreatedBy` : string
- `LastModifiedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `CustomPropertyDefinitionId` : string
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `EventCarDriverAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7824 (HHDev.DataManagement.Core.Entities.EventCarDriverAttachedFile)>
- `EventCarDriverCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7828 (HHDev.DataManagement.Core.Entities.EventCarDriverCollectionItem)>

## EventCarIssueListIssue

- `Id` : string
- `EventId` : string
- `CarId` : string
- `IssueListIssueId` : string
- `IssueListIssue` : class:8328 (HHDev.DataManagement.Core.Entities.IssueListIssue)
- `CustomPropertyDefinitionId` : string
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `EventCarIssueListIssueAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8404 (HHDev.DataManagement.Core.Entities.EventCarIssueListIssueAttachedFile)>
- `EventCarIssueListIssueCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7844 (HHDev.DataManagement.Core.Entities.EventCarIssueListIssueCollectionItem)>
- `CreatedBy` : string
- `LastModifiedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## EventCarNamedAssembly

- `Id` : string
- `EventId` : string
- `CarId` : string
- `NamedAssemblyId` : string
- `NamedAssembly` : class:9324 (HHDev.DataManagement.Core.Entities.NamedAssembly)
- `CustomPropertyDefinitionId` : string
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `EventCarNamedAssemblyAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9396 (HHDev.DataManagement.Core.Entities.EventCarNamedAssemblyAttachedFile)>
- `EventCarNamedAssemblyCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7860 (HHDev.DataManagement.Core.Entities.EventCarNamedAssemblyCollectionItem)>
- `CreatedBy` : string
- `LastModifiedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## EventCarSetupsManualMileage

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventCarSetupsManualMileageAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7892 (HHDev.DataManagement.Core.Entities.EventCarSetupsManualMileageAttachedFile)>
- `EventCarSetupsManualMileageCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7896 (HHDev.DataManagement.Core.Entities.EventCarSetupsManualMileageCollectionItem)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `Setup` : class:10176 (HHDev.DataManagement.Core.Entities.Setup)
- `SetupId` : string

## EventCarSetupsPredictiveMileage

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventCarSetupsPredictiveMileageAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7928 (HHDev.DataManagement.Core.Entities.EventCarSetupsPredictiveMileageAttachedFile)>
- `EventCarSetupsPredictiveMileageCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7932 (HHDev.DataManagement.Core.Entities.EventCarSetupsPredictiveMileageCollectionItem)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `Setup` : class:10176 (HHDev.DataManagement.Core.Entities.Setup)
- `SetupId` : string

## EventCarTyre

- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EventCarTyreAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10464 (HHDev.DataManagement.Core.Entities.EventCarTyreAttachedFile)>
- `EventCarTyreCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:7948 (HHDev.DataManagement.Core.Entities.EventCarTyreCollectionItem)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Tyre` : class:10392 (HHDev.DataManagement.Core.Entities.Tyre)
- `TyreId` : string

## EventData

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventDataAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:7996 (HHDev.DataManagement.Core.Entities.EventDataAttachedFile)>
- `EventDataCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8000 (HHDev.DataManagement.Core.Entities.EventDataCollectionItem)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## EventIssueListIssue

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventId` : string
- `EventIssueListIssueAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8384 (HHDev.DataManagement.Core.Entities.EventIssueListIssueAttachedFile)>
- `EventIssueListIssueCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8016 (HHDev.DataManagement.Core.Entities.EventIssueListIssueCollectionItem)>
- `Id` : string
- `IssueListIssue` : class:8328 (HHDev.DataManagement.Core.Entities.IssueListIssue)
- `IssueListIssueId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## EventLoadList

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventId` : string
- `EventLoadListItems` : class:213 (System.Collections.Generic.List`1)<class:6092 (HHDev.DataManagement.Core.Entities.EventLoadListItem)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string

## EventLoadListItem

- `Category` : class:7208 (HHDev.DataManagement.Core.Entities.Category)
- `CategoryId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `EventLoadList` : class:8032 (HHDev.DataManagement.Core.Entities.EventLoadList)
- `EventLoadListId` : string
- `EventsTyres` : class:213 (System.Collections.Generic.List`1)<class:10428 (HHDev.DataManagement.Core.Entities.EventTyre)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Quantity` : i4
- `TyreSpecification` : class:10596 (HHDev.DataManagement.Core.Entities.TyreSpecification)
- `TyreSpecificationId` : string

## EventNamedAssembly

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventId` : string
- `EventNamedAssemblyAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9376 (HHDev.DataManagement.Core.Entities.EventNamedAssemblyAttachedFile)>
- `EventNamedAssemblyCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8036 (HHDev.DataManagement.Core.Entities.EventNamedAssemblyCollectionItem)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `NamedAssembly` : class:9324 (HHDev.DataManagement.Core.Entities.NamedAssembly)
- `NamedAssemblyId` : string

## EventNote

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventId` : string
- `EventNoteAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8068 (HHDev.DataManagement.Core.Entities.EventNoteAttachedFile)>
- `EventNoteCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8072 (HHDev.DataManagement.Core.Entities.EventNoteCollectionItem)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `NoteType` : class:9456 (HHDev.DataManagement.Core.Entities.NoteType)
- `NoteTypeId` : string
- `Order` : i4
- `User` : class:10708 (HHDev.DataManagement.Core.Entities.User)
- `UserId` : string

## EventServiceReturn

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Date` : valuetype:341 (NodaTime.Instant)
- `Description` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventId` : string
- `EventServiceReturnAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8104 (HHDev.DataManagement.Core.Entities.EventServiceReturnAttachedFile)>
- `EventServiceReturnCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8108 (HHDev.DataManagement.Core.Entities.EventServiceReturnCollectionItem)>
- `GeneralComments` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `MaterialDamage` : bool
- `ServiceReturnClaimCondition` : class:9832 (HHDev.DataManagement.Core.Entities.ServiceReturnClaimCondition)
- `ServiceReturnClaimConditionId` : string
- `Tyre` : class:10392 (HHDev.DataManagement.Core.Entities.Tyre)
- `TyreId` : string
- `User` : class:10708 (HHDev.DataManagement.Core.Entities.User)
- `UserId` : string
- `WasReplaced` : bool

## EventTyre

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventId` : string
- `EventLoadListItem` : class:6092 (HHDev.DataManagement.Core.Entities.EventLoadListItem)
- `EventLoadListItemId` : string
- `EventTyreAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10444 (HHDev.DataManagement.Core.Entities.EventTyreAttachedFile)>
- `EventTyreCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8160 (HHDev.DataManagement.Core.Entities.EventTyreCollectionItem)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Tyre` : class:10392 (HHDev.DataManagement.Core.Entities.Tyre)
- `TyreId` : string

## EventsTyreSpecifications

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventId` : string
- `EventsTyreSpecificationsAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8140 (HHDev.DataManagement.Core.Entities.EventsTyreSpecificationsAttachedFile)>
- `EventsTyreSpecificationsCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8144 (HHDev.DataManagement.Core.Entities.EventsTyreSpecificationsCollectionItem)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `TyreSpecification` : class:10596 (HHDev.DataManagement.Core.Entities.TyreSpecification)
- `TyreSpecificationId` : string

## ExcelExportCell

- `Children` : class:457 (System.Collections.Generic.IEnumerable`1)<class:8176 (HHDev.DataManagement.Core.Entities.ExcelExportCell)>
- `ColumnIndex` : i4
- `ColumnLinearTerm` : i4
- `ColumnSearchTerm` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `ExcelCellCoordinateCalculationModeColumn` : valuetype:440 (HHDev.DataManagement.Core.eExcelCellCoordinateCalculationModes)
- `ExcelCellCoordinateCalculationModeRow` : valuetype:440 (HHDev.DataManagement.Core.eExcelCellCoordinateCalculationModes)
- `ExcelExportWorksheet` : class:6100 (HHDev.DataManagement.Core.Entities.ExcelExportWorksheet)
- `ExcelExportWorksheetId` : string
- `ExcelValueType` : valuetype:436 (HHDev.DataManagement.Core.eExcelValueTypes)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `Parent` : class:8176 (HHDev.DataManagement.Core.Entities.ExcelExportCell)
- `ParentId` : string
- `RowIndex` : i4
- `RowLinearTerm` : i4
- `RowSearchTerm` : string
- `Scope` : string
- `ShouldExportExpression` : string
- `Value` : string

## ExcelExportFile

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CreatePDFAfterExporting` : bool
- `DeleteTemplateSheet` : valuetype:465 (System.Nullable`1)<bool>
- `DeleteWorkbookAfterExporting` : bool
- `DeleteWorkbookBeforeExporting` : bool
- `ExcelExportProfile` : class:8180 (HHDev.DataManagement.Core.Entities.ExcelExportProfile)
- `ExcelExportProfileId` : string
- `ExcelExportWorksheets` : class:213 (System.Collections.Generic.List`1)<class:6100 (HHDev.DataManagement.Core.Entities.ExcelExportWorksheet)>
- `ExcelWorkbookTemplate` : class:6120 (HHDev.DataManagement.Core.Entities.AccountOptionsAttachedFile)
- `ExcelWorkbookTemplateId` : string
- `FileNameTemplate` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Scope` : string
- `ShouldExportExpression` : string
- `VBAFunctionToCall` : string

## ExcelExportProfile

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `ExcelExportFiles` : class:213 (System.Collections.Generic.List`1)<class:6096 (HHDev.DataManagement.Core.Entities.ExcelExportFile)>
- `Id` : string
- `IsLocked` : bool
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string

## ExcelExportWorksheet

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `ExcelExportCells` : class:213 (System.Collections.Generic.List`1)<class:8176 (HHDev.DataManagement.Core.Entities.ExcelExportCell)>
- `ExcelExportFile` : class:6096 (HHDev.DataManagement.Core.Entities.ExcelExportFile)
- `ExcelExportFileId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `Scope` : string
- `ShouldExportExpression` : string
- `TemplateWorksheetName` : string
- `Value` : string
- `WorksheetNameTemplate` : string

## HHDMSyncDataSelection

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventId` : string

## HHDMSyncOperation

- `CarId` : string
- `EventId` : string
- `SessionId` : string

## IssueList

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `IssueListAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8200 (HHDev.DataManagement.Core.Entities.IssueListAttachedFile)>
- `IssueListCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8240 (HHDev.DataManagement.Core.Entities.IssueListCollectionItem)>
- `IssueListComponents` : class:213 (System.Collections.Generic.List`1)<class:8292 (HHDev.DataManagement.Core.Entities.IssueListComponent)>
- `IssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8328 (HHDev.DataManagement.Core.Entities.IssueListIssue)>
- `IssueListIssueTypes` : class:213 (System.Collections.Generic.List`1)<class:8484 (HHDev.DataManagement.Core.Entities.IssueListIssueType)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `LastUsedIssueListId` : i4
- `Name` : string

## IssueListCategory

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `IssueListCategoryAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8220 (HHDev.DataManagement.Core.Entities.IssueListCategoryAttachedFile)>
- `IssueListCategoryCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8224 (HHDev.DataManagement.Core.Entities.IssueListCategoryCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `SessionObjectIssues` : class:213 (System.Collections.Generic.List`1)<class:10032 (HHDev.DataManagement.Core.Entities.SessionObjectIssue)>

## IssueListComment

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `IssueListCommentAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8272 (HHDev.DataManagement.Core.Entities.IssueListCommentAttachedFile)>
- `IssueListCommentCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8276 (HHDev.DataManagement.Core.Entities.IssueListCommentCollectionItem)>
- `IssueListIssue` : class:8328 (HHDev.DataManagement.Core.Entities.IssueListIssue)
- `IssueListIssueId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `IssueListCommentAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8272 (HHDev.DataManagement.Core.Entities.IssueListCommentAttachedFile)>
- `IssueListCommentCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8276 (HHDev.DataManagement.Core.Entities.IssueListCommentCollectionItem)>
- `IssueListIssue` : class:8328 (HHDev.DataManagement.Core.Entities.IssueListIssue)
- `IssueListIssueId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)

## IssueListComponent

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Icon` : string
- `Id` : string
- `IssueList` : class:8184 (HHDev.DataManagement.Core.Entities.IssueList)
- `IssueListComponentAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8308 (HHDev.DataManagement.Core.Entities.IssueListComponentAttachedFile)>
- `IssueListComponentCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8312 (HHDev.DataManagement.Core.Entities.IssueListComponentCollectionItem)>
- `IssueListId` : string
- `IssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8328 (HHDev.DataManagement.Core.Entities.IssueListIssue)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Icon` : string
- `Id` : string
- `IssueList` : class:8184 (HHDev.DataManagement.Core.Entities.IssueList)
- `IssueListComponentAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8308 (HHDev.DataManagement.Core.Entities.IssueListComponentAttachedFile)>
- `IssueListComponentCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8312 (HHDev.DataManagement.Core.Entities.IssueListComponentCollectionItem)>
- `IssueListId` : string
- `IssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8328 (HHDev.DataManagement.Core.Entities.IssueListIssue)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string

## IssueListIssue

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `AssignedTo` : class:10708 (HHDev.DataManagement.Core.Entities.User)
- `AssignedToId` : string
- `CarsIssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8428 (HHDev.DataManagement.Core.Entities.CarIssueListIssue)>
- `ChampionshipsIssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8408 (HHDev.DataManagement.Core.Entities.ChampionshipIssueListIssue)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EventsCarsIssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8388 (HHDev.DataManagement.Core.Entities.EventCarIssueListIssue)>
- `EventsIssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8368 (HHDev.DataManagement.Core.Entities.EventIssueListIssue)>
- `Id` : string
- `IssueList` : class:8184 (HHDev.DataManagement.Core.Entities.IssueList)
- `IssueListComments` : class:213 (System.Collections.Generic.List`1)<class:8256 (HHDev.DataManagement.Core.Entities.IssueListComment)>
- `IssueListComponent` : class:8292 (HHDev.DataManagement.Core.Entities.IssueListComponent)
- `IssueListComponentId` : string
- `IssueListId` : string
- `IssueListIssueAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8364 (HHDev.DataManagement.Core.Entities.IssueListIssueAttachedFile)>
- `IssueListIssueCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8468 (HHDev.DataManagement.Core.Entities.IssueListIssueCollectionItem)>
- `IssueListIssueType` : class:8484 (HHDev.DataManagement.Core.Entities.IssueListIssueType)
- `IssueListIssueTypeId` : string
- `IssueListLinkedIssues` : class:213 (System.Collections.Generic.List`1)<class:8520 (HHDev.DataManagement.Core.Entities.IssueListLinkedIssue)>
- `IssueListState` : class:8556 (HHDev.DataManagement.Core.Entities.IssueListState)
- `IssueListStateId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `LooselyLinkedLapId` : string
- `LooselyLinkedLapNumber` : valuetype:465 (System.Nullable`1)<i4>
- `LooselyLinkedRunId` : string
- `LooselyLinkedRunName` : string
- `SessionsIssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8448 (HHDev.DataManagement.Core.Entities.SessionIssueListIssue)>
- `TargetIssueListLinkedIssues` : class:213 (System.Collections.Generic.List`1)<class:8520 (HHDev.DataManagement.Core.Entities.IssueListLinkedIssue)>
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `AssignedTo` : class:10708 (HHDev.DataManagement.Core.Entities.User)
- `AssignedToId` : string
- `CarsIssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8428 (HHDev.DataManagement.Core.Entities.CarIssueListIssue)>
- `ChampionshipsIssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8408 (HHDev.DataManagement.Core.Entities.ChampionshipIssueListIssue)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EventsCarsIssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8388 (HHDev.DataManagement.Core.Entities.EventCarIssueListIssue)>
- `EventsIssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8368 (HHDev.DataManagement.Core.Entities.EventIssueListIssue)>
- `Id` : string
- `IssueList` : class:8184 (HHDev.DataManagement.Core.Entities.IssueList)
- `IssueListComments` : class:213 (System.Collections.Generic.List`1)<class:8256 (HHDev.DataManagement.Core.Entities.IssueListComment)>
- `IssueListComponent` : class:8292 (HHDev.DataManagement.Core.Entities.IssueListComponent)
- `IssueListComponentId` : string
- `IssueListId` : string
- `IssueListIssueAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8364 (HHDev.DataManagement.Core.Entities.IssueListIssueAttachedFile)>
- `IssueListIssueCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8468 (HHDev.DataManagement.Core.Entities.IssueListIssueCollectionItem)>
- `IssueListIssueType` : class:8484 (HHDev.DataManagement.Core.Entities.IssueListIssueType)
- `IssueListIssueTypeId` : string
- `IssueListLinkedIssues` : class:213 (System.Collections.Generic.List`1)<class:8520 (HHDev.DataManagement.Core.Entities.IssueListLinkedIssue)>
- `IssueListState` : class:8556 (HHDev.DataManagement.Core.Entities.IssueListState)
- `IssueListStateId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `LooselyLinkedLapId` : string
- `LooselyLinkedLapNumber` : valuetype:465 (System.Nullable`1)<i4>
- `LooselyLinkedRunId` : string
- `LooselyLinkedRunName` : string
- `SessionsIssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8448 (HHDev.DataManagement.Core.Entities.SessionIssueListIssue)>
- `TargetIssueListLinkedIssues` : class:213 (System.Collections.Generic.List`1)<class:8520 (HHDev.DataManagement.Core.Entities.IssueListLinkedIssue)>

## IssueListIssueType

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `IssueList` : class:8184 (HHDev.DataManagement.Core.Entities.IssueList)
- `IssueListId` : string
- `IssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8328 (HHDev.DataManagement.Core.Entities.IssueListIssue)>
- `IssueListIssueTypeAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8500 (HHDev.DataManagement.Core.Entities.IssueListIssueTypeAttachedFile)>
- `IssueListIssueTypeCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8504 (HHDev.DataManagement.Core.Entities.IssueListIssueTypeCollectionItem)>
- `IssueListWorkflow` : class:8628 (HHDev.DataManagement.Core.Entities.IssueListWorkflow)
- `IssueListWorkflowId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `IssueList` : class:8184 (HHDev.DataManagement.Core.Entities.IssueList)
- `IssueListId` : string
- `IssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8328 (HHDev.DataManagement.Core.Entities.IssueListIssue)>
- `IssueListIssueTypeAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8500 (HHDev.DataManagement.Core.Entities.IssueListIssueTypeAttachedFile)>
- `IssueListIssueTypeCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8504 (HHDev.DataManagement.Core.Entities.IssueListIssueTypeCollectionItem)>
- `IssueListWorkflow` : class:8628 (HHDev.DataManagement.Core.Entities.IssueListWorkflow)
- `IssueListWorkflowId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string

## IssueListLinkedIssue

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `IssueListIssue` : class:8328 (HHDev.DataManagement.Core.Entities.IssueListIssue)
- `IssueListIssueId` : string
- `IssueListLinkedIssueAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8536 (HHDev.DataManagement.Core.Entities.IssueListLinkedIssueAttachedFile)>
- `IssueListLinkedIssueCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8540 (HHDev.DataManagement.Core.Entities.IssueListLinkedIssueCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Target` : class:8328 (HHDev.DataManagement.Core.Entities.IssueListIssue)
- `TargetId` : string
- `TargetType` : valuetype:6064 (HHDev.DataManagement.Core.Entities.eLinkedIssueType)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `IssueListIssue` : class:8328 (HHDev.DataManagement.Core.Entities.IssueListIssue)
- `IssueListIssueId` : string
- `IssueListLinkedIssueAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8536 (HHDev.DataManagement.Core.Entities.IssueListLinkedIssueAttachedFile)>
- `IssueListLinkedIssueCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8540 (HHDev.DataManagement.Core.Entities.IssueListLinkedIssueCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Target` : class:8328 (HHDev.DataManagement.Core.Entities.IssueListIssue)
- `TargetId` : string
- `TargetType` : valuetype:6064 (HHDev.DataManagement.Core.Entities.eLinkedIssueType)

## IssueListState

- `Color` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EndStateIssueListTransitions` : class:213 (System.Collections.Generic.List`1)<class:8592 (HHDev.DataManagement.Core.Entities.IssueListTransition)>
- `Id` : string
- `IssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8328 (HHDev.DataManagement.Core.Entities.IssueListIssue)>
- `IssueListStateAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8572 (HHDev.DataManagement.Core.Entities.IssueListStateAttachedFile)>
- `IssueListStateCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8576 (HHDev.DataManagement.Core.Entities.IssueListStateCollectionItem)>
- `IssueListWorkflow` : class:8628 (HHDev.DataManagement.Core.Entities.IssueListWorkflow)
- `IssueListWorkflowId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `StartStateIssueListTransitions` : class:213 (System.Collections.Generic.List`1)<class:8592 (HHDev.DataManagement.Core.Entities.IssueListTransition)>
- `StartStateIssueListWorkflows` : class:213 (System.Collections.Generic.List`1)<class:8628 (HHDev.DataManagement.Core.Entities.IssueListWorkflow)>
- `Color` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EndStateIssueListTransitions` : class:213 (System.Collections.Generic.List`1)<class:8592 (HHDev.DataManagement.Core.Entities.IssueListTransition)>
- `Id` : string
- `IssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8328 (HHDev.DataManagement.Core.Entities.IssueListIssue)>
- `IssueListStateAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8572 (HHDev.DataManagement.Core.Entities.IssueListStateAttachedFile)>
- `IssueListStateCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8576 (HHDev.DataManagement.Core.Entities.IssueListStateCollectionItem)>
- `IssueListWorkflow` : class:8628 (HHDev.DataManagement.Core.Entities.IssueListWorkflow)
- `IssueListWorkflowId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `StartStateIssueListTransitions` : class:213 (System.Collections.Generic.List`1)<class:8592 (HHDev.DataManagement.Core.Entities.IssueListTransition)>
- `StartStateIssueListWorkflows` : class:213 (System.Collections.Generic.List`1)<class:8628 (HHDev.DataManagement.Core.Entities.IssueListWorkflow)>

## IssueListTransition

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EndState` : class:8556 (HHDev.DataManagement.Core.Entities.IssueListState)
- `EndStateId` : string
- `Id` : string
- `IssueListTransitionAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8608 (HHDev.DataManagement.Core.Entities.IssueListTransitionAttachedFile)>
- `IssueListTransitionCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8612 (HHDev.DataManagement.Core.Entities.IssueListTransitionCollectionItem)>
- `IssueListWorkflow` : class:8628 (HHDev.DataManagement.Core.Entities.IssueListWorkflow)
- `IssueListWorkflowId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `StartState` : class:8556 (HHDev.DataManagement.Core.Entities.IssueListState)
- `StartStateId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EndState` : class:8556 (HHDev.DataManagement.Core.Entities.IssueListState)
- `EndStateId` : string
- `Id` : string
- `IssueListTransitionAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8608 (HHDev.DataManagement.Core.Entities.IssueListTransitionAttachedFile)>
- `IssueListTransitionCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8612 (HHDev.DataManagement.Core.Entities.IssueListTransitionCollectionItem)>
- `IssueListWorkflow` : class:8628 (HHDev.DataManagement.Core.Entities.IssueListWorkflow)
- `IssueListWorkflowId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `StartState` : class:8556 (HHDev.DataManagement.Core.Entities.IssueListState)
- `StartStateId` : string

## IssueListWorkflow

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `IssueListIssueTypes` : class:213 (System.Collections.Generic.List`1)<class:8484 (HHDev.DataManagement.Core.Entities.IssueListIssueType)>
- `IssueListStates` : class:213 (System.Collections.Generic.List`1)<class:8556 (HHDev.DataManagement.Core.Entities.IssueListState)>
- `IssueListTransitions` : class:213 (System.Collections.Generic.List`1)<class:8592 (HHDev.DataManagement.Core.Entities.IssueListTransition)>
- `IssueListWorkflowAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8644 (HHDev.DataManagement.Core.Entities.IssueListWorkflowAttachedFile)>
- `IssueListWorkflowCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8648 (HHDev.DataManagement.Core.Entities.IssueListWorkflowCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `StartState` : class:8556 (HHDev.DataManagement.Core.Entities.IssueListState)
- `StartStateId` : string
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `IssueListIssueTypes` : class:213 (System.Collections.Generic.List`1)<class:8484 (HHDev.DataManagement.Core.Entities.IssueListIssueType)>
- `IssueListStates` : class:213 (System.Collections.Generic.List`1)<class:8556 (HHDev.DataManagement.Core.Entities.IssueListState)>
- `IssueListTransitions` : class:213 (System.Collections.Generic.List`1)<class:8592 (HHDev.DataManagement.Core.Entities.IssueListTransition)>
- `IssueListWorkflowAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8644 (HHDev.DataManagement.Core.Entities.IssueListWorkflowAttachedFile)>
- `IssueListWorkflowCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8648 (HHDev.DataManagement.Core.Entities.IssueListWorkflowCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `StartState` : class:8556 (HHDev.DataManagement.Core.Entities.IssueListState)
- `StartStateId` : string

## JobListCategory

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `JobListCategoryAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8680 (HHDev.DataManagement.Core.Entities.JobListCategoryAttachedFile)>
- `JobListCategoryCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8684 (HHDev.DataManagement.Core.Entities.JobListCategoryCollectionItem)>
- `JobListTemplateItems` : class:213 (System.Collections.Generic.List`1)<class:8736 (HHDev.DataManagement.Core.Entities.JobListTemplateItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `SessionObjectJobs` : class:213 (System.Collections.Generic.List`1)<class:10068 (HHDev.DataManagement.Core.Entities.SessionObjectJob)>
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `JobListCategoryAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8680 (HHDev.DataManagement.Core.Entities.JobListCategoryAttachedFile)>
- `JobListCategoryCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8684 (HHDev.DataManagement.Core.Entities.JobListCategoryCollectionItem)>
- `JobListTemplateItems` : class:213 (System.Collections.Generic.List`1)<class:8736 (HHDev.DataManagement.Core.Entities.JobListTemplateItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `SessionObjectJobs` : class:213 (System.Collections.Generic.List`1)<class:10068 (HHDev.DataManagement.Core.Entities.SessionObjectJob)>

## JobListTemplate

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `JobListTemplateAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8716 (HHDev.DataManagement.Core.Entities.JobListTemplateAttachedFile)>
- `JobListTemplateCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8720 (HHDev.DataManagement.Core.Entities.JobListTemplateCollectionItem)>
- `JobListTemplateItems` : class:213 (System.Collections.Generic.List`1)<class:8736 (HHDev.DataManagement.Core.Entities.JobListTemplateItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `JobListTemplateAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8716 (HHDev.DataManagement.Core.Entities.JobListTemplateAttachedFile)>
- `JobListTemplateCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8720 (HHDev.DataManagement.Core.Entities.JobListTemplateCollectionItem)>
- `JobListTemplateItems` : class:213 (System.Collections.Generic.List`1)<class:8736 (HHDev.DataManagement.Core.Entities.JobListTemplateItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string

## JobListTemplateItem

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `JobListCategory` : class:8664 (HHDev.DataManagement.Core.Entities.JobListCategory)
- `JobListCategoryId` : string
- `JobListTemplate` : class:8700 (HHDev.DataManagement.Core.Entities.JobListTemplate)
- `JobListTemplateId` : string
- `JobListTemplateItemAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8752 (HHDev.DataManagement.Core.Entities.JobListTemplateItemAttachedFile)>
- `JobListTemplateItemCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8756 (HHDev.DataManagement.Core.Entities.JobListTemplateItemCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `UserAssignedTo` : class:10708 (HHDev.DataManagement.Core.Entities.User)
- `UserAssignedToId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `JobListCategory` : class:8664 (HHDev.DataManagement.Core.Entities.JobListCategory)
- `JobListCategoryId` : string
- `JobListTemplate` : class:8700 (HHDev.DataManagement.Core.Entities.JobListTemplate)
- `JobListTemplateId` : string
- `JobListTemplateItemAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8752 (HHDev.DataManagement.Core.Entities.JobListTemplateItemAttachedFile)>
- `JobListTemplateItemCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8756 (HHDev.DataManagement.Core.Entities.JobListTemplateItemCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `UserAssignedTo` : class:10708 (HHDev.DataManagement.Core.Entities.User)
- `UserAssignedToId` : string

## JsonExportFile

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `FileNameTemplate` : string
- `Id` : string
- `JsonExportNodes` : class:213 (System.Collections.Generic.List`1)<class:8776 (HHDev.DataManagement.Core.Entities.JsonExportNode)>
- `JsonExportProfile` : class:8780 (HHDev.DataManagement.Core.Entities.JsonExportProfile)
- `JsonExportProfileId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Scope` : string
- `ShouldExportExpression` : string
- `SkipRootObject` : bool
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `FileNameTemplate` : string
- `Id` : string
- `JsonExportNodes` : class:213 (System.Collections.Generic.List`1)<class:8776 (HHDev.DataManagement.Core.Entities.JsonExportNode)>
- `JsonExportProfile` : class:8780 (HHDev.DataManagement.Core.Entities.JsonExportProfile)
- `JsonExportProfileId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Scope` : string
- `ShouldExportExpression` : string
- `SkipRootObject` : bool

## JsonExportNode

- `Children` : class:457 (System.Collections.Generic.IEnumerable`1)<class:8776 (HHDev.DataManagement.Core.Entities.JsonExportNode)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomScope` : string
- `DoubleDecimalPlaces` : valuetype:465 (System.Nullable`1)<i4>
- `Id` : string
- `IsCustomScope` : bool
- `IsScopeChangeNode` : bool
- `JsonExportFile` : class:8772 (HHDev.DataManagement.Core.Entities.JsonExportFile)
- `JsonExportFileId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Mode` : valuetype:6056 (HHDev.DataManagement.Core.Entities.eJsonNodeMode)
- `Name` : string
- `Order` : i4
- `Parent` : class:8776 (HHDev.DataManagement.Core.Entities.JsonExportNode)
- `ParentId` : string
- `Scope` : string
- `ShouldExportItemExpression` : string
- `ShouldExportNodeExpression` : string
- `SubJsonProfileId` : string
- `Value` : string
- `WrapArrayItemsInObject` : bool
- `Children` : class:457 (System.Collections.Generic.IEnumerable`1)<class:8776 (HHDev.DataManagement.Core.Entities.JsonExportNode)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomScope` : string
- `DoubleDecimalPlaces` : valuetype:465 (System.Nullable`1)<i4>
- `Id` : string
- `IsCustomScope` : bool
- `IsScopeChangeNode` : bool
- `JsonExportFile` : class:8772 (HHDev.DataManagement.Core.Entities.JsonExportFile)
- `JsonExportFileId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Mode` : valuetype:6056 (HHDev.DataManagement.Core.Entities.eJsonNodeMode)
- `Name` : string
- `Order` : i4
- `Parent` : class:8776 (HHDev.DataManagement.Core.Entities.JsonExportNode)
- `ParentId` : string
- `Scope` : string
- `ShouldExportItemExpression` : string
- `ShouldExportNodeExpression` : string
- `SubJsonProfileId` : string
- `Value` : string
- `WrapArrayItemsInObject` : bool

## JsonExportProfile

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `IsLocked` : bool
- `JsonExportFiles` : class:213 (System.Collections.Generic.List`1)<class:8772 (HHDev.DataManagement.Core.Entities.JsonExportFile)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `IsLocked` : bool
- `JsonExportFiles` : class:213 (System.Collections.Generic.List`1)<class:8772 (HHDev.DataManagement.Core.Entities.JsonExportFile)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string

## JsonImportFile

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `JsonImportNodes` : class:213 (System.Collections.Generic.List`1)<class:8788 (HHDev.DataManagement.Core.Entities.JsonImportNode)>
- `JsonImportProfile` : class:8796 (HHDev.DataManagement.Core.Entities.JsonImportProfile)
- `JsonImportProfileId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `MappingNode` : class:8788 (HHDev.DataManagement.Core.Entities.JsonImportNode)
- `MappingNodeId` : string
- `Name` : string
- `Scope` : string
- `ShouldImportExpression` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `JsonImportNodes` : class:213 (System.Collections.Generic.List`1)<class:8788 (HHDev.DataManagement.Core.Entities.JsonImportNode)>
- `JsonImportProfile` : class:8796 (HHDev.DataManagement.Core.Entities.JsonImportProfile)
- `JsonImportProfileId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `MappingNode` : class:8788 (HHDev.DataManagement.Core.Entities.JsonImportNode)
- `MappingNodeId` : string
- `Name` : string
- `Scope` : string
- `ShouldImportExpression` : string

## JsonImportNode

- `Children` : class:457 (System.Collections.Generic.IEnumerable`1)<class:8788 (HHDev.DataManagement.Core.Entities.JsonImportNode)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CreateIfNotExist` : bool
- `CustomScope` : string
- `Id` : string
- `IsCustomScope` : bool
- `IsLookupNode` : bool
- `IsScopeChangeNode` : bool
- `JsonImportFile` : class:8784 (HHDev.DataManagement.Core.Entities.JsonImportFile)
- `JsonImportFileId` : string
- `JsonImportNodeParameterTemplates` : class:213 (System.Collections.Generic.List`1)<class:8792 (HHDev.DataManagement.Core.Entities.JsonImportNodeParameterTemplate)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `MappingNode` : class:8788 (HHDev.DataManagement.Core.Entities.JsonImportNode)
- `MappingNodeId` : string
- `Name` : string
- `Order` : i4
- `Parent` : class:8788 (HHDev.DataManagement.Core.Entities.JsonImportNode)
- `ParentId` : string
- `Scope` : string
- `ShouldImportItemExpression` : string
- `ShouldImportNodeExpression` : string
- `SourceUnit` : string
- `Value` : string
- `ValueManipulationExpression` : string
- `Children` : class:457 (System.Collections.Generic.IEnumerable`1)<class:8788 (HHDev.DataManagement.Core.Entities.JsonImportNode)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CreateIfNotExist` : bool
- `CustomScope` : string
- `Id` : string
- `IsCustomScope` : bool
- `IsLookupNode` : bool
- `IsScopeChangeNode` : bool
- `JsonImportFile` : class:8784 (HHDev.DataManagement.Core.Entities.JsonImportFile)
- `JsonImportFileId` : string
- `JsonImportNodeParameterTemplates` : class:213 (System.Collections.Generic.List`1)<class:8792 (HHDev.DataManagement.Core.Entities.JsonImportNodeParameterTemplate)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `MappingNode` : class:8788 (HHDev.DataManagement.Core.Entities.JsonImportNode)
- `MappingNodeId` : string
- `Name` : string
- `Order` : i4
- `Parent` : class:8788 (HHDev.DataManagement.Core.Entities.JsonImportNode)
- `ParentId` : string
- `Scope` : string
- `ShouldImportItemExpression` : string
- `ShouldImportNodeExpression` : string
- `SourceUnit` : string
- `Value` : string
- `ValueManipulationExpression` : string

## JsonImportNodeParameterTemplate

- `CopyToNewEntity` : bool
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `DefinitionType` : valuetype:460 (HHDev.DataManagement.Core.eCustomPropertyDefinitionType)
- `Dimension` : valuetype:345 (HHDev.Core.Units.eDimension)
- `DisplayName` : string
- `Id` : string
- `JsonImportNode` : class:8788 (HHDev.DataManagement.Core.Entities.JsonImportNode)
- `JsonImportNodeId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `PropertyType` : valuetype:361 (HHDev.Core.Enums.ePropertyType)
- `ReferencedItemId` : string
- `ReferencedNodeId` : string
- `Unit` : string
- `CopyToNewEntity` : bool
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `DefinitionType` : valuetype:460 (HHDev.DataManagement.Core.eCustomPropertyDefinitionType)
- `Dimension` : valuetype:345 (HHDev.Core.Units.eDimension)
- `DisplayName` : string
- `Id` : string
- `JsonImportNode` : class:8788 (HHDev.DataManagement.Core.Entities.JsonImportNode)
- `JsonImportNodeId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `PropertyType` : valuetype:361 (HHDev.Core.Enums.ePropertyType)
- `ReferencedItemId` : string
- `ReferencedNodeId` : string
- `Unit` : string

## JsonImportProfile

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `JsonImportFiles` : class:213 (System.Collections.Generic.List`1)<class:8784 (HHDev.DataManagement.Core.Entities.JsonImportFile)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `JsonImportFiles` : class:213 (System.Collections.Generic.List`1)<class:8784 (HHDev.DataManagement.Core.Entities.JsonImportFile)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string

## Lap

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LapAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8816 (HHDev.DataManagement.Core.Entities.LapAttachedFile)>
- `LapCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8820 (HHDev.DataManagement.Core.Entities.LapCollectionItem)>
- `LapMarker` : class:8840 (HHDev.DataManagement.Core.Entities.LapMarker)
- `LapMarkerId` : string
- `LapSectors` : class:213 (System.Collections.Generic.List`1)<class:8984 (HHDev.DataManagement.Core.Entities.LapSector)>
- `LapSpeedTraps` : class:213 (System.Collections.Generic.List`1)<class:9020 (HHDev.DataManagement.Core.Entities.LapSpeedTrap)>
- `LapTrackStatusMarker` : class:9056 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarker)
- `LapTrackStatusMarkerId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `RunSheet` : class:9796 (HHDev.DataManagement.Core.Entities.RunSheet)
- `RunSheetId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LapAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8816 (HHDev.DataManagement.Core.Entities.LapAttachedFile)>
- `LapCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8820 (HHDev.DataManagement.Core.Entities.LapCollectionItem)>
- `LapMarker` : class:8840 (HHDev.DataManagement.Core.Entities.LapMarker)
- `LapMarkerId` : string
- `LapSectors` : class:213 (System.Collections.Generic.List`1)<class:8984 (HHDev.DataManagement.Core.Entities.LapSector)>
- `LapSpeedTraps` : class:213 (System.Collections.Generic.List`1)<class:9020 (HHDev.DataManagement.Core.Entities.LapSpeedTrap)>
- `LapTrackStatusMarker` : class:9056 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarker)
- `LapTrackStatusMarkerId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `RunSheet` : class:9796 (HHDev.DataManagement.Core.Entities.RunSheet)
- `RunSheetId` : string

## LapKpi

- `AdvancedOptions` : string
- `AutoAxisThresholdPercentage` : valuetype:465 (System.Nullable`1)<r8>
- `AxisMax` : valuetype:465 (System.Nullable`1)<r8>
- `AxisMin` : valuetype:465 (System.Nullable`1)<r8>
- `AxisMode` : valuetype:6024 (HHDev.DataManagement.Core.Entities.eAxisMode)
- `Colour` : string
- `Comments` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `DataAnalysisFolder` : class:7480 (HHDev.DataManagement.Core.Entities.DataAnalysisFolder)
- `DataAnalysisFolderId` : string
- `DisplayName` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `MathChannel` : class:9312 (HHDev.DataManagement.Core.Entities.MathChannel)
- `MathChannelId` : string
- `Name` : string
- `ShouldBeCalculated` : bool
- `Target` : valuetype:465 (System.Nullable`1)<r8>
- `TargetMax` : valuetype:465 (System.Nullable`1)<r8>
- `TargetMin` : valuetype:465 (System.Nullable`1)<r8>
- `AdvancedOptions` : string
- `AutoAxisThresholdPercentage` : valuetype:465 (System.Nullable`1)<r8>
- `AxisMax` : valuetype:465 (System.Nullable`1)<r8>
- `AxisMin` : valuetype:465 (System.Nullable`1)<r8>
- `AxisMode` : valuetype:6024 (HHDev.DataManagement.Core.Entities.eAxisMode)
- `Colour` : string
- `Comments` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `DataAnalysisFolder` : class:7480 (HHDev.DataManagement.Core.Entities.DataAnalysisFolder)
- `DataAnalysisFolderId` : string
- `DisplayName` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `MathChannel` : class:9312 (HHDev.DataManagement.Core.Entities.MathChannel)
- `MathChannelId` : string
- `Name` : string
- `ShouldBeCalculated` : bool
- `Target` : valuetype:465 (System.Nullable`1)<r8>
- `TargetMax` : valuetype:465 (System.Nullable`1)<r8>
- `TargetMin` : valuetype:465 (System.Nullable`1)<r8>

## LapMarker

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LapMarkerAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8856 (HHDev.DataManagement.Core.Entities.LapMarkerAttachedFile)>
- `LapMarkerCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8860 (HHDev.DataManagement.Core.Entities.LapMarkerCollectionItem)>
- `LapMarkersEventObjects` : class:213 (System.Collections.Generic.List`1)<class:8876 (HHDev.DataManagement.Core.Entities.LapMarkersEventObject)>
- `LapMarkersSessionObjects` : class:213 (System.Collections.Generic.List`1)<class:8912 (HHDev.DataManagement.Core.Entities.LapMarkersSessionObject)>
- `LapMarkersTrackConfigurations` : class:213 (System.Collections.Generic.List`1)<class:8948 (HHDev.DataManagement.Core.Entities.LapMarkersTrackConfiguration)>
- `Laps` : class:213 (System.Collections.Generic.List`1)<class:8800 (HHDev.DataManagement.Core.Entities.Lap)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `PlannedLaps` : class:213 (System.Collections.Generic.List`1)<class:9652 (HHDev.DataManagement.Core.Entities.PlannedLap)>
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LapMarkerAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8856 (HHDev.DataManagement.Core.Entities.LapMarkerAttachedFile)>
- `LapMarkerCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8860 (HHDev.DataManagement.Core.Entities.LapMarkerCollectionItem)>
- `LapMarkersEventObjects` : class:213 (System.Collections.Generic.List`1)<class:8876 (HHDev.DataManagement.Core.Entities.LapMarkersEventObject)>
- `LapMarkersSessionObjects` : class:213 (System.Collections.Generic.List`1)<class:8912 (HHDev.DataManagement.Core.Entities.LapMarkersSessionObject)>
- `LapMarkersTrackConfigurations` : class:213 (System.Collections.Generic.List`1)<class:8948 (HHDev.DataManagement.Core.Entities.LapMarkersTrackConfiguration)>
- `Laps` : class:213 (System.Collections.Generic.List`1)<class:8800 (HHDev.DataManagement.Core.Entities.Lap)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `PlannedLaps` : class:213 (System.Collections.Generic.List`1)<class:9652 (HHDev.DataManagement.Core.Entities.PlannedLap)>

## LapMarkersEventObject

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventId` : string
- `Id` : string
- `LapMarker` : class:8840 (HHDev.DataManagement.Core.Entities.LapMarker)
- `LapMarkerId` : string
- `LapMarkersEventObjectAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8892 (HHDev.DataManagement.Core.Entities.LapMarkersEventObjectAttachedFile)>
- `LapMarkersEventObjectCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8896 (HHDev.DataManagement.Core.Entities.LapMarkersEventObjectCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventId` : string
- `Id` : string
- `LapMarker` : class:8840 (HHDev.DataManagement.Core.Entities.LapMarker)
- `LapMarkerId` : string
- `LapMarkersEventObjectAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8892 (HHDev.DataManagement.Core.Entities.LapMarkersEventObjectAttachedFile)>
- `LapMarkersEventObjectCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8896 (HHDev.DataManagement.Core.Entities.LapMarkersEventObjectCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string

## LapMarkersSessionObject

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LapMarker` : class:8840 (HHDev.DataManagement.Core.Entities.LapMarker)
- `LapMarkerId` : string
- `LapMarkersSessionObjectAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8928 (HHDev.DataManagement.Core.Entities.LapMarkersSessionObjectAttachedFile)>
- `LapMarkersSessionObjectCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8932 (HHDev.DataManagement.Core.Entities.LapMarkersSessionObjectCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Session` : class:9836 (HHDev.DataManagement.Core.Entities.Session)
- `SessionId` : string
- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LapMarker` : class:8840 (HHDev.DataManagement.Core.Entities.LapMarker)
- `LapMarkerId` : string
- `LapMarkersSessionObjectAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8928 (HHDev.DataManagement.Core.Entities.LapMarkersSessionObjectAttachedFile)>
- `LapMarkersSessionObjectCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8932 (HHDev.DataManagement.Core.Entities.LapMarkersSessionObjectCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Session` : class:9836 (HHDev.DataManagement.Core.Entities.Session)
- `SessionId` : string

## LapMarkersTrackConfiguration

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LapMarker` : class:8840 (HHDev.DataManagement.Core.Entities.LapMarker)
- `LapMarkerId` : string
- `LapMarkersTrackConfigurationAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8964 (HHDev.DataManagement.Core.Entities.LapMarkersTrackConfigurationAttachedFile)>
- `LapMarkersTrackConfigurationCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8968 (HHDev.DataManagement.Core.Entities.LapMarkersTrackConfigurationCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `TrackConfiguration` : class:10284 (HHDev.DataManagement.Core.Entities.TrackConfiguration)
- `TrackConfigurationId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LapMarker` : class:8840 (HHDev.DataManagement.Core.Entities.LapMarker)
- `LapMarkerId` : string
- `LapMarkersTrackConfigurationAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8964 (HHDev.DataManagement.Core.Entities.LapMarkersTrackConfigurationAttachedFile)>
- `LapMarkersTrackConfigurationCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:8968 (HHDev.DataManagement.Core.Entities.LapMarkersTrackConfigurationCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `TrackConfiguration` : class:10284 (HHDev.DataManagement.Core.Entities.TrackConfiguration)
- `TrackConfigurationId` : string

## LapSector

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `Lap` : class:8800 (HHDev.DataManagement.Core.Entities.Lap)
- `LapId` : string
- `LapSectorAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9000 (HHDev.DataManagement.Core.Entities.LapSectorAttachedFile)>
- `LapSectorCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9004 (HHDev.DataManagement.Core.Entities.LapSectorCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `TrackSectorDefinition` : class:10320 (HHDev.DataManagement.Core.Entities.TrackSectorDefinition)
- `TrackSectorDefinitionId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `Lap` : class:8800 (HHDev.DataManagement.Core.Entities.Lap)
- `LapId` : string
- `LapSectorAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9000 (HHDev.DataManagement.Core.Entities.LapSectorAttachedFile)>
- `LapSectorCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9004 (HHDev.DataManagement.Core.Entities.LapSectorCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `TrackSectorDefinition` : class:10320 (HHDev.DataManagement.Core.Entities.TrackSectorDefinition)
- `TrackSectorDefinitionId` : string

## LapSpeedTrap

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `Lap` : class:8800 (HHDev.DataManagement.Core.Entities.Lap)
- `LapId` : string
- `LapSpeedTrapAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9036 (HHDev.DataManagement.Core.Entities.LapSpeedTrapAttachedFile)>
- `LapSpeedTrapCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9040 (HHDev.DataManagement.Core.Entities.LapSpeedTrapCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `TrackSpeedTrapDefinition` : class:10356 (HHDev.DataManagement.Core.Entities.TrackSpeedTrapDefinition)
- `TrackSpeedTrapDefinitionId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `Lap` : class:8800 (HHDev.DataManagement.Core.Entities.Lap)
- `LapId` : string
- `LapSpeedTrapAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9036 (HHDev.DataManagement.Core.Entities.LapSpeedTrapAttachedFile)>
- `LapSpeedTrapCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9040 (HHDev.DataManagement.Core.Entities.LapSpeedTrapCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `TrackSpeedTrapDefinition` : class:10356 (HHDev.DataManagement.Core.Entities.TrackSpeedTrapDefinition)
- `TrackSpeedTrapDefinitionId` : string

## LapTrackStatusMarker

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `Laps` : class:213 (System.Collections.Generic.List`1)<class:8800 (HHDev.DataManagement.Core.Entities.Lap)>
- `LapTrackStatusMarkerAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9072 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkerAttachedFile)>
- `LapTrackStatusMarkerCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9076 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkerCollectionItem)>
- `LapTrackStatusMarkersEventObjects` : class:213 (System.Collections.Generic.List`1)<class:9092 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersEventObject)>
- `LapTrackStatusMarkersSessionObjects` : class:213 (System.Collections.Generic.List`1)<class:9128 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersSessionObject)>
- `LapTrackStatusMarkersTrackConfigurations` : class:213 (System.Collections.Generic.List`1)<class:9164 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersTrackConfiguration)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `SessionStatuses` : class:213 (System.Collections.Generic.List`1)<class:10104 (HHDev.DataManagement.Core.Entities.SessionStatus)>
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `Laps` : class:213 (System.Collections.Generic.List`1)<class:8800 (HHDev.DataManagement.Core.Entities.Lap)>
- `LapTrackStatusMarkerAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9072 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkerAttachedFile)>
- `LapTrackStatusMarkerCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9076 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkerCollectionItem)>
- `LapTrackStatusMarkersEventObjects` : class:213 (System.Collections.Generic.List`1)<class:9092 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersEventObject)>
- `LapTrackStatusMarkersSessionObjects` : class:213 (System.Collections.Generic.List`1)<class:9128 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersSessionObject)>
- `LapTrackStatusMarkersTrackConfigurations` : class:213 (System.Collections.Generic.List`1)<class:9164 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersTrackConfiguration)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `SessionStatuses` : class:213 (System.Collections.Generic.List`1)<class:10104 (HHDev.DataManagement.Core.Entities.SessionStatus)>

## LapTrackStatusMarkersEventObject

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventId` : string
- `Id` : string
- `LapTrackStatusMarker` : class:9056 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarker)
- `LapTrackStatusMarkerId` : string
- `LapTrackStatusMarkersEventObjectAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9108 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersEventObjectAttachedFile)>
- `LapTrackStatusMarkersEventObjectCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9112 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersEventObjectCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventId` : string
- `Id` : string
- `LapTrackStatusMarker` : class:9056 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarker)
- `LapTrackStatusMarkerId` : string
- `LapTrackStatusMarkersEventObjectAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9108 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersEventObjectAttachedFile)>
- `LapTrackStatusMarkersEventObjectCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9112 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersEventObjectCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string

## LapTrackStatusMarkersSessionObject

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LapTrackStatusMarker` : class:9056 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarker)
- `LapTrackStatusMarkerId` : string
- `LapTrackStatusMarkersSessionObjectAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9144 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersSessionObjectAttachedFile)>
- `LapTrackStatusMarkersSessionObjectCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9148 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersSessionObjectCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Session` : class:9836 (HHDev.DataManagement.Core.Entities.Session)
- `SessionId` : string
- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LapTrackStatusMarker` : class:9056 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarker)
- `LapTrackStatusMarkerId` : string
- `LapTrackStatusMarkersSessionObjectAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9144 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersSessionObjectAttachedFile)>
- `LapTrackStatusMarkersSessionObjectCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9148 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersSessionObjectCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Session` : class:9836 (HHDev.DataManagement.Core.Entities.Session)
- `SessionId` : string

## LapTrackStatusMarkersTrackConfiguration

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LapTrackStatusMarker` : class:9056 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarker)
- `LapTrackStatusMarkerId` : string
- `LapTrackStatusMarkersTrackConfigurationAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9180 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersTrackConfigurationAttachedFile)>
- `LapTrackStatusMarkersTrackConfigurationCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9184 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersTrackConfigurationCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `TrackConfiguration` : class:10284 (HHDev.DataManagement.Core.Entities.TrackConfiguration)
- `TrackConfigurationId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LapTrackStatusMarker` : class:9056 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarker)
- `LapTrackStatusMarkerId` : string
- `LapTrackStatusMarkersTrackConfigurationAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9180 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersTrackConfigurationAttachedFile)>
- `LapTrackStatusMarkersTrackConfigurationCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9184 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersTrackConfigurationCollectionItem)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `TrackConfiguration` : class:10284 (HHDev.DataManagement.Core.Entities.TrackConfiguration)
- `TrackConfigurationId` : string

## MainGraphPanelScopeProfile

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `MainGraphPanelScopeProfileAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9216 (HHDev.DataManagement.Core.Entities.MainGraphPanelScopeProfileAttachedFile)>
- `MainGraphPanelScopeProfileCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9220 (HHDev.DataManagement.Core.Entities.MainGraphPanelScopeProfileCollectionItem)>
- `MainGraphProfile` : class:9272 (HHDev.DataManagement.Core.Entities.MainGraphProfile)
- `MainGraphProfileId` : string
- `Name` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `MainGraphPanelScopeProfileAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9216 (HHDev.DataManagement.Core.Entities.MainGraphPanelScopeProfileAttachedFile)>
- `MainGraphPanelScopeProfileCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9220 (HHDev.DataManagement.Core.Entities.MainGraphPanelScopeProfileCollectionItem)>
- `MainGraphProfile` : class:9272 (HHDev.DataManagement.Core.Entities.MainGraphProfile)
- `MainGraphProfileId` : string
- `Name` : string

## MainGraphPanelTemplate

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `MainGraphPanelTemplateAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9252 (HHDev.DataManagement.Core.Entities.MainGraphPanelTemplateAttachedFile)>
- `MainGraphPanelTemplateCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9256 (HHDev.DataManagement.Core.Entities.MainGraphPanelTemplateCollectionItem)>
- `MainGraphProfile` : class:9272 (HHDev.DataManagement.Core.Entities.MainGraphProfile)
- `MainGraphProfileId` : string
- `Name` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `MainGraphPanelTemplateAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9252 (HHDev.DataManagement.Core.Entities.MainGraphPanelTemplateAttachedFile)>
- `MainGraphPanelTemplateCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9256 (HHDev.DataManagement.Core.Entities.MainGraphPanelTemplateCollectionItem)>
- `MainGraphProfile` : class:9272 (HHDev.DataManagement.Core.Entities.MainGraphProfile)
- `MainGraphProfileId` : string
- `Name` : string

## MainGraphProfile

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `MainGraphPanelScopeProfiles` : class:213 (System.Collections.Generic.List`1)<class:9200 (HHDev.DataManagement.Core.Entities.MainGraphPanelScopeProfile)>
- `MainGraphPanelTemplates` : class:213 (System.Collections.Generic.List`1)<class:9236 (HHDev.DataManagement.Core.Entities.MainGraphPanelTemplate)>
- `MainGraphSeriesAppearanceProfiles` : class:213 (System.Collections.Generic.List`1)<class:9276 (HHDev.DataManagement.Core.Entities.MainGraphSeriesAppearanceProfile)>
- `Name` : string
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `MainGraphPanelScopeProfiles` : class:213 (System.Collections.Generic.List`1)<class:9200 (HHDev.DataManagement.Core.Entities.MainGraphPanelScopeProfile)>
- `MainGraphPanelTemplates` : class:213 (System.Collections.Generic.List`1)<class:9236 (HHDev.DataManagement.Core.Entities.MainGraphPanelTemplate)>
- `MainGraphSeriesAppearanceProfiles` : class:213 (System.Collections.Generic.List`1)<class:9276 (HHDev.DataManagement.Core.Entities.MainGraphSeriesAppearanceProfile)>
- `Name` : string

## MainGraphSeriesAppearanceProfile

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `MainGraphProfile` : class:9272 (HHDev.DataManagement.Core.Entities.MainGraphProfile)
- `MainGraphProfileId` : string
- `MainGraphSeriesAppearanceProfileAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9292 (HHDev.DataManagement.Core.Entities.MainGraphSeriesAppearanceProfileAttachedFile)>
- `MainGraphSeriesAppearanceProfileCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9296 (HHDev.DataManagement.Core.Entities.MainGraphSeriesAppearanceProfileCollectionItem)>
- `Name` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `MainGraphProfile` : class:9272 (HHDev.DataManagement.Core.Entities.MainGraphProfile)
- `MainGraphProfileId` : string
- `MainGraphSeriesAppearanceProfileAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9292 (HHDev.DataManagement.Core.Entities.MainGraphSeriesAppearanceProfileAttachedFile)>
- `MainGraphSeriesAppearanceProfileCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9296 (HHDev.DataManagement.Core.Entities.MainGraphSeriesAppearanceProfileCollectionItem)>
- `Name` : string

## MathChannel

- `Colour` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `DataAnalysisFolder` : class:7480 (HHDev.DataManagement.Core.Entities.DataAnalysisFolder)
- `DataAnalysisFolderId` : string
- `Dimension` : valuetype:345 (HHDev.Core.Units.eDimension)
- `EnforcedFrequency` : valuetype:465 (System.Nullable`1)<i4>
- `Formula` : string
- `Id` : string
- `LapKpis` : class:213 (System.Collections.Generic.List`1)<class:8836 (HHDev.DataManagement.Core.Entities.LapKpi)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `ReturnType` : valuetype:388 (HHDev.DataManagement.Core.eMathExpressionReturnType)
- `ShouldBeCalculated` : bool
- `Target` : valuetype:448 (HHDev.DataManagement.Core.eKpiMathChannelTarget)
- `Unit` : string
- `Colour` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `DataAnalysisFolder` : class:7480 (HHDev.DataManagement.Core.Entities.DataAnalysisFolder)
- `DataAnalysisFolderId` : string
- `Dimension` : valuetype:345 (HHDev.Core.Units.eDimension)
- `EnforcedFrequency` : valuetype:465 (System.Nullable`1)<i4>
- `Formula` : string
- `Id` : string
- `LapKpis` : class:213 (System.Collections.Generic.List`1)<class:8836 (HHDev.DataManagement.Core.Entities.LapKpi)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `ReturnType` : valuetype:388 (HHDev.DataManagement.Core.eMathExpressionReturnType)
- `ShouldBeCalculated` : bool
- `Target` : valuetype:448 (HHDev.DataManagement.Core.eKpiMathChannelTarget)
- `Unit` : string

## MathChannelConstant

- `Colour` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `DataAnalysisFolder` : class:7480 (HHDev.DataManagement.Core.Entities.DataAnalysisFolder)
- `DataAnalysisFolderId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `ShouldBeCalculated` : bool
- `Value` : valuetype:465 (System.Nullable`1)<r8>
- `Colour` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `DataAnalysisFolder` : class:7480 (HHDev.DataManagement.Core.Entities.DataAnalysisFolder)
- `DataAnalysisFolderId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `ShouldBeCalculated` : bool
- `Value` : valuetype:465 (System.Nullable`1)<r8>

## MathChannelFlatModelExpression

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `DataAnalysisFolder` : class:7480 (HHDev.DataManagement.Core.Entities.DataAnalysisFolder)
- `DataAnalysisFolderId` : string
- `Dimension` : valuetype:345 (HHDev.Core.Units.eDimension)
- `DisplayUnit` : string
- `Expression` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `ReturnType` : valuetype:388 (HHDev.DataManagement.Core.eMathExpressionReturnType)
- `Scope` : i4
- `ShouldBeCalculated` : bool
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `DataAnalysisFolder` : class:7480 (HHDev.DataManagement.Core.Entities.DataAnalysisFolder)
- `DataAnalysisFolderId` : string
- `Dimension` : valuetype:345 (HHDev.Core.Units.eDimension)
- `DisplayUnit` : string
- `Expression` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `ReturnType` : valuetype:388 (HHDev.DataManagement.Core.eMathExpressionReturnType)
- `Scope` : i4
- `ShouldBeCalculated` : bool

## NamedAssembly

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `AssemblyIterations` : class:213 (System.Collections.Generic.List`1)<class:6160 (HHDev.DataManagement.Core.Entities.AssemblyIteration)>
- `AssemblyType` : class:5840 (HHDev.DataManagement.Core.Entities.AssemblyType)
- `AssemblyTypeId` : string
- `CarsNamedAssemblies` : class:213 (System.Collections.Generic.List`1)<class:9420 (HHDev.DataManagement.Core.Entities.CarNamedAssembly)>
- `ChampionshipsNamedAssemblies` : class:213 (System.Collections.Generic.List`1)<class:9400 (HHDev.DataManagement.Core.Entities.ChampionshipNamedAssembly)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EventsCarsNamedAssemblies` : class:213 (System.Collections.Generic.List`1)<class:9380 (HHDev.DataManagement.Core.Entities.EventCarNamedAssembly)>
- `EventsNamedAssemblies` : class:213 (System.Collections.Generic.List`1)<class:9360 (HHDev.DataManagement.Core.Entities.EventNamedAssembly)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `NamedAssemblyAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9356 (HHDev.DataManagement.Core.Entities.NamedAssemblyAttachedFile)>
- `NamedAssemblyCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9440 (HHDev.DataManagement.Core.Entities.NamedAssemblyCollectionItem)>
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `AssemblyIterations` : class:213 (System.Collections.Generic.List`1)<class:6160 (HHDev.DataManagement.Core.Entities.AssemblyIteration)>
- `AssemblyType` : class:5840 (HHDev.DataManagement.Core.Entities.AssemblyType)
- `AssemblyTypeId` : string
- `CarsNamedAssemblies` : class:213 (System.Collections.Generic.List`1)<class:9420 (HHDev.DataManagement.Core.Entities.CarNamedAssembly)>
- `ChampionshipsNamedAssemblies` : class:213 (System.Collections.Generic.List`1)<class:9400 (HHDev.DataManagement.Core.Entities.ChampionshipNamedAssembly)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EventsCarsNamedAssemblies` : class:213 (System.Collections.Generic.List`1)<class:9380 (HHDev.DataManagement.Core.Entities.EventCarNamedAssembly)>
- `EventsNamedAssemblies` : class:213 (System.Collections.Generic.List`1)<class:9360 (HHDev.DataManagement.Core.Entities.EventNamedAssembly)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `NamedAssemblyAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9356 (HHDev.DataManagement.Core.Entities.NamedAssemblyAttachedFile)>
- `NamedAssemblyCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9440 (HHDev.DataManagement.Core.Entities.NamedAssemblyCollectionItem)>

## NoteType

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `EventNotes` : class:213 (System.Collections.Generic.List`1)<class:8052 (HHDev.DataManagement.Core.Entities.EventNote)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `EventNotes` : class:213 (System.Collections.Generic.List`1)<class:8052 (HHDev.DataManagement.Core.Entities.EventNote)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string

## ParameterDefinitionGrouping

- `CustomPropertyAssemblyDescriptionsParameterDefinitionGroupings` : class:213 (System.Collections.Generic.List`1)<class:7456 (HHDev.DataManagement.Core.Entities.CustomPropertyAssemblyDescriptionsParameterDefinitionGroupings)>
- `CustomPropertyCollectionsParameterDefinitionGroupings` : class:213 (System.Collections.Generic.List`1)<class:7460 (HHDev.DataManagement.Core.Entities.CustomPropertyCollectionsParameterDefinitionGroupings)>
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `CustomPropertyDescriptionsParameterDefinitionGroupings` : class:213 (System.Collections.Generic.List`1)<class:7464 (HHDev.DataManagement.Core.Entities.CustomPropertyDescriptionsParameterDefinitionGroupings)>
- `CustomPropertyMathParametersParameterDefinitionGroupings` : class:213 (System.Collections.Generic.List`1)<class:7468 (HHDev.DataManagement.Core.Entities.CustomPropertyMathParametersParameterDefinitionGroupings)>
- `CustomPropertyPartDescriptionsParameterDefinitionGroupings` : class:213 (System.Collections.Generic.List`1)<class:7472 (HHDev.DataManagement.Core.Entities.CustomPropertyPartDescriptionsParameterDefinitionGroupings)>
- `Id` : string
- `Name` : string
- `CustomPropertyAssemblyDescriptionsParameterDefinitionGroupings` : class:213 (System.Collections.Generic.List`1)<class:7456 (HHDev.DataManagement.Core.Entities.CustomPropertyAssemblyDescriptionsParameterDefinitionGroupings)>
- `CustomPropertyCollectionsParameterDefinitionGroupings` : class:213 (System.Collections.Generic.List`1)<class:7460 (HHDev.DataManagement.Core.Entities.CustomPropertyCollectionsParameterDefinitionGroupings)>
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `CustomPropertyDescriptionsParameterDefinitionGroupings` : class:213 (System.Collections.Generic.List`1)<class:7464 (HHDev.DataManagement.Core.Entities.CustomPropertyDescriptionsParameterDefinitionGroupings)>
- `CustomPropertyMathParametersParameterDefinitionGroupings` : class:213 (System.Collections.Generic.List`1)<class:7468 (HHDev.DataManagement.Core.Entities.CustomPropertyMathParametersParameterDefinitionGroupings)>
- `CustomPropertyPartDescriptionsParameterDefinitionGroupings` : class:213 (System.Collections.Generic.List`1)<class:7472 (HHDev.DataManagement.Core.Entities.CustomPropertyPartDescriptionsParameterDefinitionGroupings)>
- `Id` : string
- `Name` : string

## Part

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `PartAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9480 (HHDev.DataManagement.Core.Entities.PartAttachedFile)>
- `PartCategory` : class:9484 (HHDev.DataManagement.Core.Entities.PartCategory)
- `PartCategoryId` : string
- `PartCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9520 (HHDev.DataManagement.Core.Entities.PartCollectionItem)>
- `PartItems` : class:213 (System.Collections.Generic.List`1)<class:9536 (HHDev.DataManagement.Core.Entities.PartItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `PartAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9480 (HHDev.DataManagement.Core.Entities.PartAttachedFile)>
- `PartCategory` : class:9484 (HHDev.DataManagement.Core.Entities.PartCategory)
- `PartCategoryId` : string
- `PartCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9520 (HHDev.DataManagement.Core.Entities.PartCollectionItem)>
- `PartItems` : class:213 (System.Collections.Generic.List`1)<class:9536 (HHDev.DataManagement.Core.Entities.PartItem)>

## PartCategory

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `PartCategoryAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9500 (HHDev.DataManagement.Core.Entities.PartCategoryAttachedFile)>
- `PartCategoryCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9504 (HHDev.DataManagement.Core.Entities.PartCategoryCollectionItem)>
- `PartDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `PartDefinitionId` : string
- `PartItemDefinitionId` : string
- `PartItemHistoryDefinitionId` : string
- `PartItemMeasurementDefinitionId` : string
- `Parts` : class:213 (System.Collections.Generic.List`1)<class:9464 (HHDev.DataManagement.Core.Entities.Part)>
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `PartCategoryAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9500 (HHDev.DataManagement.Core.Entities.PartCategoryAttachedFile)>
- `PartCategoryCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9504 (HHDev.DataManagement.Core.Entities.PartCategoryCollectionItem)>
- `PartDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `PartDefinitionId` : string
- `PartItemDefinitionId` : string
- `PartItemHistoryDefinitionId` : string
- `PartItemMeasurementDefinitionId` : string
- `Parts` : class:213 (System.Collections.Generic.List`1)<class:9464 (HHDev.DataManagement.Core.Entities.Part)>

## PartItem

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `Part` : class:9464 (HHDev.DataManagement.Core.Entities.Part)
- `PartId` : string
- `PartItemAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9552 (HHDev.DataManagement.Core.Entities.PartItemAttachedFile)>
- `PartItemCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9556 (HHDev.DataManagement.Core.Entities.PartItemCollectionItem)>
- `PartItemHistories` : class:213 (System.Collections.Generic.List`1)<class:9572 (HHDev.DataManagement.Core.Entities.PartItemHistory)>
- `PartItemMeasurements` : class:213 (System.Collections.Generic.List`1)<class:9608 (HHDev.DataManagement.Core.Entities.PartItemMeasurement)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `Part` : class:9464 (HHDev.DataManagement.Core.Entities.Part)
- `PartId` : string
- `PartItemAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9552 (HHDev.DataManagement.Core.Entities.PartItemAttachedFile)>
- `PartItemCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9556 (HHDev.DataManagement.Core.Entities.PartItemCollectionItem)>
- `PartItemHistories` : class:213 (System.Collections.Generic.List`1)<class:9572 (HHDev.DataManagement.Core.Entities.PartItemHistory)>
- `PartItemMeasurements` : class:213 (System.Collections.Generic.List`1)<class:9608 (HHDev.DataManagement.Core.Entities.PartItemMeasurement)>

## PartItemHistory

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `PartItem` : class:9536 (HHDev.DataManagement.Core.Entities.PartItem)
- `PartItemHistoryAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9588 (HHDev.DataManagement.Core.Entities.PartItemHistoryAttachedFile)>
- `PartItemHistoryCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9592 (HHDev.DataManagement.Core.Entities.PartItemHistoryCollectionItem)>
- `PartItemId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `PartItem` : class:9536 (HHDev.DataManagement.Core.Entities.PartItem)
- `PartItemHistoryAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9588 (HHDev.DataManagement.Core.Entities.PartItemHistoryAttachedFile)>
- `PartItemHistoryCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9592 (HHDev.DataManagement.Core.Entities.PartItemHistoryCollectionItem)>
- `PartItemId` : string

## PartItemMeasurement

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `PartItem` : class:9536 (HHDev.DataManagement.Core.Entities.PartItem)
- `PartItemId` : string
- `PartItemMeasurementAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9624 (HHDev.DataManagement.Core.Entities.PartItemMeasurementAttachedFile)>
- `PartItemMeasurementCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9628 (HHDev.DataManagement.Core.Entities.PartItemMeasurementCollectionItem)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `PartItem` : class:9536 (HHDev.DataManagement.Core.Entities.PartItem)
- `PartItemId` : string
- `PartItemMeasurementAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9624 (HHDev.DataManagement.Core.Entities.PartItemMeasurementAttachedFile)>
- `PartItemMeasurementCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9628 (HHDev.DataManagement.Core.Entities.PartItemMeasurementCollectionItem)>

## PivotChartField

- `AreaInt` : valuetype:465 (System.Nullable`1)<r8>
- `CellFormat` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `DataSource` : string
- `FieldArea` : valuetype:372 (HHDev.DataManagement.Core.ePivotChartFieldArea)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `PivotChartProfile` : class:9648 (HHDev.DataManagement.Core.Entities.PivotChartProfile)
- `PivotChartProfileId` : string
- `SortByField` : string
- `SummaryType` : valuetype:368 (HHDev.DataManagement.Core.ePivotChartSummaryType)
- `Title` : string
- `AreaInt` : valuetype:465 (System.Nullable`1)<r8>
- `CellFormat` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `DataSource` : string
- `FieldArea` : valuetype:372 (HHDev.DataManagement.Core.ePivotChartFieldArea)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `PivotChartProfile` : class:9648 (HHDev.DataManagement.Core.Entities.PivotChartProfile)
- `PivotChartProfileId` : string
- `SortByField` : string
- `SummaryType` : valuetype:368 (HHDev.DataManagement.Core.ePivotChartSummaryType)
- `Title` : string

## PivotChartProfile

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `PivotChartFields` : class:213 (System.Collections.Generic.List`1)<class:9644 (HHDev.DataManagement.Core.Entities.PivotChartField)>
- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `PivotChartFields` : class:213 (System.Collections.Generic.List`1)<class:9644 (HHDev.DataManagement.Core.Entities.PivotChartField)>

## PlannedLap

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LapMarker` : class:8840 (HHDev.DataManagement.Core.Entities.LapMarker)
- `LapMarkerId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `PlannedLapAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9668 (HHDev.DataManagement.Core.Entities.PlannedLapAttachedFile)>
- `PlannedLapCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9672 (HHDev.DataManagement.Core.Entities.PlannedLapCollectionItem)>
- `PlannedRun` : class:9688 (HHDev.DataManagement.Core.Entities.PlannedRun)
- `PlannedRunId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LapMarker` : class:8840 (HHDev.DataManagement.Core.Entities.LapMarker)
- `LapMarkerId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `PlannedLapAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9668 (HHDev.DataManagement.Core.Entities.PlannedLapAttachedFile)>
- `PlannedLapCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9672 (HHDev.DataManagement.Core.Entities.PlannedLapCollectionItem)>
- `PlannedRun` : class:9688 (HHDev.DataManagement.Core.Entities.PlannedRun)
- `PlannedRunId` : string

## PlannedRun

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Driver` : class:7496 (HHDev.DataManagement.Core.Entities.Driver)
- `DriverId` : string
- `FrontBrakeSet` : class:6836 (HHDev.DataManagement.Core.Entities.BrakeSet)
- `FrontBrakeSetId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `PlannedLaps` : class:213 (System.Collections.Generic.List`1)<class:9652 (HHDev.DataManagement.Core.Entities.PlannedLap)>
- `PlannedRunAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9704 (HHDev.DataManagement.Core.Entities.PlannedRunAttachedFile)>
- `PlannedRunCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9708 (HHDev.DataManagement.Core.Entities.PlannedRunCollectionItem)>
- `PlannedRunType` : valuetype:10784 (HHDev.DataManagement.Core.Entities.ePlannedRunType)
- `RearBrakeSet` : class:6836 (HHDev.DataManagement.Core.Entities.BrakeSet)
- `RearBrakeSetId` : string
- `RunPlan` : class:9760 (HHDev.DataManagement.Core.Entities.RunPlan)
- `RunPlanId` : string
- `RunSheet` : class:9796 (HHDev.DataManagement.Core.Entities.RunSheet)
- `Setup` : class:10176 (HHDev.DataManagement.Core.Entities.Setup)
- `SetupId` : string
- `TyreSet` : class:10524 (HHDev.DataManagement.Core.Entities.TyreSet)
- `TyreSetId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Driver` : class:7496 (HHDev.DataManagement.Core.Entities.Driver)
- `DriverId` : string
- `FrontBrakeSet` : class:6836 (HHDev.DataManagement.Core.Entities.BrakeSet)
- `FrontBrakeSetId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `PlannedLaps` : class:213 (System.Collections.Generic.List`1)<class:9652 (HHDev.DataManagement.Core.Entities.PlannedLap)>
- `PlannedRunAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9704 (HHDev.DataManagement.Core.Entities.PlannedRunAttachedFile)>
- `PlannedRunCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9708 (HHDev.DataManagement.Core.Entities.PlannedRunCollectionItem)>
- `PlannedRunType` : valuetype:10784 (HHDev.DataManagement.Core.Entities.ePlannedRunType)
- `RearBrakeSet` : class:6836 (HHDev.DataManagement.Core.Entities.BrakeSet)
- `RearBrakeSetId` : string
- `RunPlan` : class:9760 (HHDev.DataManagement.Core.Entities.RunPlan)
- `RunPlanId` : string
- `RunSheet` : class:9796 (HHDev.DataManagement.Core.Entities.RunSheet)
- `Setup` : class:10176 (HHDev.DataManagement.Core.Entities.Setup)
- `SetupId` : string
- `TyreSet` : class:10524 (HHDev.DataManagement.Core.Entities.TyreSet)
- `TyreSetId` : string

## ReferencePressureRun

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `ReferencePressureRunAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9740 (HHDev.DataManagement.Core.Entities.ReferencePressureRunAttachedFile)>
- `ReferencePressureRunCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9744 (HHDev.DataManagement.Core.Entities.ReferencePressureRunCollectionItem)>
- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `ReferencePressureRunAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9740 (HHDev.DataManagement.Core.Entities.ReferencePressureRunAttachedFile)>
- `ReferencePressureRunCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9744 (HHDev.DataManagement.Core.Entities.ReferencePressureRunCollectionItem)>

## RunPlan

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `DefaultRunPlanSessionCarDatas` : class:213 (System.Collections.Generic.List`1)<class:9856 (HHDev.DataManagement.Core.Entities.SessionCarData)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `PlannedRuns` : class:213 (System.Collections.Generic.List`1)<class:9688 (HHDev.DataManagement.Core.Entities.PlannedRun)>
- `PreviousSessionRunPlanId` : string
- `RunPlanAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9776 (HHDev.DataManagement.Core.Entities.RunPlanAttachedFile)>
- `RunPlanCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9780 (HHDev.DataManagement.Core.Entities.RunPlanCollectionItem)>
- `Session` : class:9836 (HHDev.DataManagement.Core.Entities.Session)
- `SessionId` : string
- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `DefaultRunPlanSessionCarDatas` : class:213 (System.Collections.Generic.List`1)<class:9856 (HHDev.DataManagement.Core.Entities.SessionCarData)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `PlannedRuns` : class:213 (System.Collections.Generic.List`1)<class:9688 (HHDev.DataManagement.Core.Entities.PlannedRun)>
- `PreviousSessionRunPlanId` : string
- `RunPlanAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9776 (HHDev.DataManagement.Core.Entities.RunPlanAttachedFile)>
- `RunPlanCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9780 (HHDev.DataManagement.Core.Entities.RunPlanCollectionItem)>
- `Session` : class:9836 (HHDev.DataManagement.Core.Entities.Session)
- `SessionId` : string

## RunSheet

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Driver` : class:7496 (HHDev.DataManagement.Core.Entities.Driver)
- `DriverId` : string
- `EngineerRunSheetNotes` : class:213 (System.Collections.Generic.List`1)<class:7568 (HHDev.DataManagement.Core.Entities.EngineerRunSheetNote)>
- `FrontBrakeSet` : class:6836 (HHDev.DataManagement.Core.Entities.BrakeSet)
- `FrontBrakeSetId` : string
- `Id` : string
- `KpiStatus` : valuetype:10792 (HHDev.DataManagement.Core.Entities.eKpiStatus)
- `Laps` : class:213 (System.Collections.Generic.List`1)<class:8800 (HHDev.DataManagement.Core.Entities.Lap)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `PlannedRun` : class:9688 (HHDev.DataManagement.Core.Entities.PlannedRun)
- `PlannedRunId` : string
- `RearBrakeSet` : class:6836 (HHDev.DataManagement.Core.Entities.BrakeSet)
- `RearBrakeSetId` : string
- `RunSheetAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9812 (HHDev.DataManagement.Core.Entities.RunSheetAttachedFile)>
- `RunSheetCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9816 (HHDev.DataManagement.Core.Entities.RunSheetCollectionItem)>
- `RunSheetsAmbientMeasurements` : class:213 (System.Collections.Generic.List`1)<class:10796 (HHDev.DataManagement.Core.Entities.RunSheetsAmbientMeasurements)>
- `Session` : class:9836 (HHDev.DataManagement.Core.Entities.Session)
- `SessionId` : string
- `Setup` : class:10176 (HHDev.DataManagement.Core.Entities.Setup)
- `SetupId` : string
- `TrackCondition` : valuetype:465 (System.Nullable`1)<valuetype:1105 (HHDev.Core.NETStandard.Enums.eTrackCondition)>
- `TyreSet` : class:10524 (HHDev.DataManagement.Core.Entities.TyreSet)
- `TyreSetId` : string
- `TyreWearSheets` : class:213 (System.Collections.Generic.List`1)<class:10672 (HHDev.DataManagement.Core.Entities.TyreWearSheet)>
- `WeatherCondition` : valuetype:465 (System.Nullable`1)<valuetype:1101 (HHDev.Core.NETStandard.Enums.eWeatherCondition)>
- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Driver` : class:7496 (HHDev.DataManagement.Core.Entities.Driver)
- `DriverId` : string
- `EngineerRunSheetNotes` : class:213 (System.Collections.Generic.List`1)<class:7568 (HHDev.DataManagement.Core.Entities.EngineerRunSheetNote)>
- `FrontBrakeSet` : class:6836 (HHDev.DataManagement.Core.Entities.BrakeSet)
- `FrontBrakeSetId` : string
- `Id` : string
- `KpiStatus` : valuetype:10792 (HHDev.DataManagement.Core.Entities.eKpiStatus)
- `Laps` : class:213 (System.Collections.Generic.List`1)<class:8800 (HHDev.DataManagement.Core.Entities.Lap)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `PlannedRun` : class:9688 (HHDev.DataManagement.Core.Entities.PlannedRun)
- `PlannedRunId` : string
- `RearBrakeSet` : class:6836 (HHDev.DataManagement.Core.Entities.BrakeSet)
- `RearBrakeSetId` : string
- `RunSheetAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9812 (HHDev.DataManagement.Core.Entities.RunSheetAttachedFile)>
- `RunSheetCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9816 (HHDev.DataManagement.Core.Entities.RunSheetCollectionItem)>
- `RunSheetsAmbientMeasurements` : class:213 (System.Collections.Generic.List`1)<class:10796 (HHDev.DataManagement.Core.Entities.RunSheetsAmbientMeasurements)>
- `Session` : class:9836 (HHDev.DataManagement.Core.Entities.Session)
- `SessionId` : string
- `Setup` : class:10176 (HHDev.DataManagement.Core.Entities.Setup)
- `SetupId` : string
- `TrackCondition` : valuetype:465 (System.Nullable`1)<valuetype:1105 (HHDev.Core.NETStandard.Enums.eTrackCondition)>
- `TyreSet` : class:10524 (HHDev.DataManagement.Core.Entities.TyreSet)
- `TyreSetId` : string
- `TyreWearSheets` : class:213 (System.Collections.Generic.List`1)<class:10672 (HHDev.DataManagement.Core.Entities.TyreWearSheet)>
- `WeatherCondition` : valuetype:465 (System.Nullable`1)<valuetype:1101 (HHDev.Core.NETStandard.Enums.eWeatherCondition)>

## RunSheetsAmbientMeasurements

- `AmbientMeasurement` : class:5820 (HHDev.DataManagement.Core.Entities.AmbientMeasurement)
- `AmbientMeasurementId` : string
- `RunSheet` : class:9796 (HHDev.DataManagement.Core.Entities.RunSheet)
- `RunSheetId` : string

## ServiceReturnClaimCondition

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `EventServiceReturns` : class:213 (System.Collections.Generic.List`1)<class:8088 (HHDev.DataManagement.Core.Entities.EventServiceReturn)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string

## Session

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventId` : string
- `Id` : string
- `LapMarkersSessionObjects` : class:213 (System.Collections.Generic.List`1)<class:8912 (HHDev.DataManagement.Core.Entities.LapMarkersSessionObject)>
- `LapTrackStatusMarkersSessionObjects` : class:213 (System.Collections.Generic.List`1)<class:9128 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersSessionObject)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `RunPlans` : class:213 (System.Collections.Generic.List`1)<class:9760 (HHDev.DataManagement.Core.Entities.RunPlan)>
- `RunSheets` : class:213 (System.Collections.Generic.List`1)<class:9796 (HHDev.DataManagement.Core.Entities.RunSheet)>
- `SessionAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9852 (HHDev.DataManagement.Core.Entities.SessionAttachedFile)>
- `SessionCarDatas` : class:213 (System.Collections.Generic.List`1)<class:9856 (HHDev.DataManagement.Core.Entities.SessionCarData)>
- `SessionCarSetupsManualMileages` : class:213 (System.Collections.Generic.List`1)<class:9892 (HHDev.DataManagement.Core.Entities.SessionCarSetupsManualMileage)>
- `SessionCarSetupsPredictiveMileages` : class:213 (System.Collections.Generic.List`1)<class:9928 (HHDev.DataManagement.Core.Entities.SessionCarSetupsPredictiveMileage)>
- `SessionCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9964 (HHDev.DataManagement.Core.Entities.SessionCollectionItem)>
- `SessionData` : class:9980 (HHDev.DataManagement.Core.Entities.SessionData)
- `SessionObjectIssues` : class:213 (System.Collections.Generic.List`1)<class:10032 (HHDev.DataManagement.Core.Entities.SessionObjectIssue)>
- `SessionObjectJobs` : class:213 (System.Collections.Generic.List`1)<class:10068 (HHDev.DataManagement.Core.Entities.SessionObjectJob)>
- `SessionsIssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8448 (HHDev.DataManagement.Core.Entities.SessionIssueListIssue)>
- `SessionStatuses` : class:213 (System.Collections.Generic.List`1)<class:10104 (HHDev.DataManagement.Core.Entities.SessionStatus)>
- `SessionType` : class:10140 (HHDev.DataManagement.Core.Entities.SessionType)
- `SessionTypeId` : string
- `TrackConfiguration` : class:10284 (HHDev.DataManagement.Core.Entities.TrackConfiguration)
- `TrackConfigurationId` : string

## SessionCarData

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `DefaultRunPlan` : class:9760 (HHDev.DataManagement.Core.Entities.RunPlan)
- `DefaultRunPlanId` : string
- `FuelCountDirection` : valuetype:6048 (HHDev.DataManagement.Core.Entities.eOptionalFuelCountDirection)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `RunPlanMode` : valuetype:6008 (HHDev.DataManagement.Core.Entities.eOptionalRunPlanMode)
- `Session` : class:9836 (HHDev.DataManagement.Core.Entities.Session)
- `SessionCarDataAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9872 (HHDev.DataManagement.Core.Entities.SessionCarDataAttachedFile)>
- `SessionCarDataCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9876 (HHDev.DataManagement.Core.Entities.SessionCarDataCollectionItem)>
- `SessionId` : string

## SessionCarSetupsManualMileage

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `Session` : class:9836 (HHDev.DataManagement.Core.Entities.Session)
- `SessionCarSetupsManualMileageAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9908 (HHDev.DataManagement.Core.Entities.SessionCarSetupsManualMileageAttachedFile)>
- `SessionCarSetupsManualMileageCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9912 (HHDev.DataManagement.Core.Entities.SessionCarSetupsManualMileageCollectionItem)>
- `SessionId` : string
- `Setup` : class:10176 (HHDev.DataManagement.Core.Entities.Setup)
- `SetupId` : string

## SessionCarSetupsPredictiveMileage

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `Session` : class:9836 (HHDev.DataManagement.Core.Entities.Session)
- `SessionCarSetupsPredictiveMileageAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9944 (HHDev.DataManagement.Core.Entities.SessionCarSetupsPredictiveMileageAttachedFile)>
- `SessionCarSetupsPredictiveMileageCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:9948 (HHDev.DataManagement.Core.Entities.SessionCarSetupsPredictiveMileageCollectionItem)>
- `SessionId` : string
- `Setup` : class:10176 (HHDev.DataManagement.Core.Entities.Setup)
- `SetupId` : string

## SessionData

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Session` : class:9836 (HHDev.DataManagement.Core.Entities.Session)
- `SessionDataAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:9996 (HHDev.DataManagement.Core.Entities.SessionDataAttachedFile)>
- `SessionDataCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:10000 (HHDev.DataManagement.Core.Entities.SessionDataCollectionItem)>
- `SessionId` : string

## SessionIssueListIssue

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `IssueListIssue` : class:8328 (HHDev.DataManagement.Core.Entities.IssueListIssue)
- `IssueListIssueId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Session` : class:9836 (HHDev.DataManagement.Core.Entities.Session)
- `SessionId` : string
- `SessionIssueListIssueAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:8464 (HHDev.DataManagement.Core.Entities.SessionIssueListIssueAttachedFile)>
- `SessionIssueListIssueCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:10016 (HHDev.DataManagement.Core.Entities.SessionIssueListIssueCollectionItem)>

## SessionObjectIssue

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `IssueListCategory` : class:8204 (HHDev.DataManagement.Core.Entities.IssueListCategory)
- `IssueListCategoryId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `Session` : class:9836 (HHDev.DataManagement.Core.Entities.Session)
- `SessionId` : string
- `SessionObjectIssueAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10048 (HHDev.DataManagement.Core.Entities.SessionObjectIssueAttachedFile)>
- `SessionObjectIssueCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:10052 (HHDev.DataManagement.Core.Entities.SessionObjectIssueCollectionItem)>

## SessionObjectJob

- `Acknowledged` : bool
- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `JobListCategory` : class:8664 (HHDev.DataManagement.Core.Entities.JobListCategory)
- `JobListCategoryId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `Session` : class:9836 (HHDev.DataManagement.Core.Entities.Session)
- `SessionId` : string
- `SessionObjectJobAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10084 (HHDev.DataManagement.Core.Entities.SessionObjectJobAttachedFile)>
- `SessionObjectJobCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:10088 (HHDev.DataManagement.Core.Entities.SessionObjectJobCollectionItem)>
- `UserAssignedTo` : class:10708 (HHDev.DataManagement.Core.Entities.User)
- `UserAssignedToId` : string

## SessionStatus

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LapTrackStatusMarker` : class:9056 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarker)
- `LapTrackStatusMarkerId` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Session` : class:9836 (HHDev.DataManagement.Core.Entities.Session)
- `SessionId` : string
- `SessionStatusAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10120 (HHDev.DataManagement.Core.Entities.SessionStatusAttachedFile)>
- `SessionStatusCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:10124 (HHDev.DataManagement.Core.Entities.SessionStatusCollectionItem)>

## SessionType

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Sessions` : class:213 (System.Collections.Generic.List`1)<class:9836 (HHDev.DataManagement.Core.Entities.Session)>
- `SessionTypeAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10156 (HHDev.DataManagement.Core.Entities.SessionTypeAttachedFile)>
- `SessionTypeCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:10160 (HHDev.DataManagement.Core.Entities.SessionTypeCollectionItem)>

## Setup

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventCarSetupsManualMileages` : class:213 (System.Collections.Generic.List`1)<class:7876 (HHDev.DataManagement.Core.Entities.EventCarSetupsManualMileage)>
- `EventCarSetupsPredictiveMileages` : class:213 (System.Collections.Generic.List`1)<class:7912 (HHDev.DataManagement.Core.Entities.EventCarSetupsPredictiveMileage)>
- `EventId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `PlannedRuns` : class:213 (System.Collections.Generic.List`1)<class:9688 (HHDev.DataManagement.Core.Entities.PlannedRun)>
- `RunSheets` : class:213 (System.Collections.Generic.List`1)<class:9796 (HHDev.DataManagement.Core.Entities.RunSheet)>
- `SessionCarSetupsManualMileages` : class:213 (System.Collections.Generic.List`1)<class:9892 (HHDev.DataManagement.Core.Entities.SessionCarSetupsManualMileage)>
- `SessionCarSetupsPredictiveMileages` : class:213 (System.Collections.Generic.List`1)<class:9928 (HHDev.DataManagement.Core.Entities.SessionCarSetupsPredictiveMileage)>
- `SetupAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10192 (HHDev.DataManagement.Core.Entities.SetupAttachedFile)>
- `SetupCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:10196 (HHDev.DataManagement.Core.Entities.SetupCollectionItem)>

## Team

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `Cars` : class:213 (System.Collections.Generic.List`1)<class:5864 (HHDev.DataManagement.Core.Entities.Car)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `TeamAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10228 (HHDev.DataManagement.Core.Entities.TeamAttachedFile)>
- `TeamCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:10232 (HHDev.DataManagement.Core.Entities.TeamCollectionItem)>

## Track

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Events` : class:213 (System.Collections.Generic.List`1)<class:6076 (HHDev.DataManagement.Core.Entities.Event)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `TrackAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10264 (HHDev.DataManagement.Core.Entities.TrackAttachedFile)>
- `TrackCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:10268 (HHDev.DataManagement.Core.Entities.TrackCollectionItem)>
- `TrackConfigurations` : class:213 (System.Collections.Generic.List`1)<class:10284 (HHDev.DataManagement.Core.Entities.TrackConfiguration)>

## TrackConfiguration

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `DefaultTrackConfigurationEvents` : class:213 (System.Collections.Generic.List`1)<class:6076 (HHDev.DataManagement.Core.Entities.Event)>
- `Id` : string
- `LapMarkersTrackConfigurations` : class:213 (System.Collections.Generic.List`1)<class:8948 (HHDev.DataManagement.Core.Entities.LapMarkersTrackConfiguration)>
- `LapTrackStatusMarkersTrackConfigurations` : class:213 (System.Collections.Generic.List`1)<class:9164 (HHDev.DataManagement.Core.Entities.LapTrackStatusMarkersTrackConfiguration)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Sessions` : class:213 (System.Collections.Generic.List`1)<class:9836 (HHDev.DataManagement.Core.Entities.Session)>
- `Track` : class:10248 (HHDev.DataManagement.Core.Entities.Track)
- `TrackConfigurationAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10300 (HHDev.DataManagement.Core.Entities.TrackConfigurationAttachedFile)>
- `TrackConfigurationCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:10304 (HHDev.DataManagement.Core.Entities.TrackConfigurationCollectionItem)>
- `TrackId` : string
- `TrackSectorDefinitions` : class:213 (System.Collections.Generic.List`1)<class:10320 (HHDev.DataManagement.Core.Entities.TrackSectorDefinition)>
- `TrackSpeedTrapDefinitions` : class:213 (System.Collections.Generic.List`1)<class:10356 (HHDev.DataManagement.Core.Entities.TrackSpeedTrapDefinition)>

## TrackSectorDefinition

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LapSectors` : class:213 (System.Collections.Generic.List`1)<class:8984 (HHDev.DataManagement.Core.Entities.LapSector)>
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `TrackConfiguration` : class:10284 (HHDev.DataManagement.Core.Entities.TrackConfiguration)
- `TrackConfigurationId` : string
- `TrackSectorDefinitionAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10336 (HHDev.DataManagement.Core.Entities.TrackSectorDefinitionAttachedFile)>
- `TrackSectorDefinitionCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:10340 (HHDev.DataManagement.Core.Entities.TrackSectorDefinitionCollectionItem)>

## TrackSpeedTrapDefinition

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `TrackConfiguration` : class:10284 (HHDev.DataManagement.Core.Entities.TrackConfiguration)
- `TrackConfigurationId` : string
- `TrackSpeedTrapDefinitionAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10372 (HHDev.DataManagement.Core.Entities.TrackSpeedTrapDefinitionAttachedFile)>
- `TrackSpeedTrapDefinitionCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:10376 (HHDev.DataManagement.Core.Entities.TrackSpeedTrapDefinitionCollectionItem)>

## Tyre

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CarsTyres` : class:213 (System.Collections.Generic.List`1)<class:10488 (HHDev.DataManagement.Core.Entities.CarTyre)>
- `ChampionshipsTyres` : class:213 (System.Collections.Generic.List`1)<class:10468 (HHDev.DataManagement.Core.Entities.ChampionshipTyre)>
- `Condition` : valuetype:337 (HHDev.Core.NETStandard.Enums.eTyreCondition)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EventsCarsTyres` : class:213 (System.Collections.Generic.List`1)<class:10448 (HHDev.DataManagement.Core.Entities.EventCarTyre)>
- `EventServiceReturns` : class:213 (System.Collections.Generic.List`1)<class:8088 (HHDev.DataManagement.Core.Entities.EventServiceReturn)>
- `EventsTyres` : class:213 (System.Collections.Generic.List`1)<class:10428 (HHDev.DataManagement.Core.Entities.EventTyre)>
- `FLTyreTyreSets` : class:213 (System.Collections.Generic.List`1)<class:10524 (HHDev.DataManagement.Core.Entities.TyreSet)>
- `FLTyreTyreWearSheets` : class:213 (System.Collections.Generic.List`1)<class:10672 (HHDev.DataManagement.Core.Entities.TyreWearSheet)>
- `FRTyreTyreSets` : class:213 (System.Collections.Generic.List`1)<class:10524 (HHDev.DataManagement.Core.Entities.TyreSet)>
- `FRTyreTyreWearSheets` : class:213 (System.Collections.Generic.List`1)<class:10672 (HHDev.DataManagement.Core.Entities.TyreWearSheet)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `RLTyreTyreSets` : class:213 (System.Collections.Generic.List`1)<class:10524 (HHDev.DataManagement.Core.Entities.TyreSet)>
- `RLTyreTyreWearSheets` : class:213 (System.Collections.Generic.List`1)<class:10672 (HHDev.DataManagement.Core.Entities.TyreWearSheet)>
- `RRTyreTyreSets` : class:213 (System.Collections.Generic.List`1)<class:10524 (HHDev.DataManagement.Core.Entities.TyreSet)>
- `RRTyreTyreWearSheets` : class:213 (System.Collections.Generic.List`1)<class:10672 (HHDev.DataManagement.Core.Entities.TyreWearSheet)>
- `TyreAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10424 (HHDev.DataManagement.Core.Entities.TyreAttachedFile)>
- `TyreCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:10508 (HHDev.DataManagement.Core.Entities.TyreCollectionItem)>
- `TyreSpecification` : class:10596 (HHDev.DataManagement.Core.Entities.TyreSpecification)
- `TyreSpecificationId` : string
- `TyreTransactionTyreItems` : class:213 (System.Collections.Generic.List`1)<class:10804 (HHDev.DataManagement.Core.Entities.TyreTransactionTyreItem)>
- `TyreWearMeasurements` : class:213 (System.Collections.Generic.List`1)<class:10632 (HHDev.DataManagement.Core.Entities.TyreWearMeasurement)>

## TyreSet

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventId` : string
- `FLTyre` : class:10392 (HHDev.DataManagement.Core.Entities.Tyre)
- `FLTyreId` : string
- `FRTyre` : class:10392 (HHDev.DataManagement.Core.Entities.Tyre)
- `FRTyreId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `PlannedRuns` : class:213 (System.Collections.Generic.List`1)<class:9688 (HHDev.DataManagement.Core.Entities.PlannedRun)>
- `RLTyre` : class:10392 (HHDev.DataManagement.Core.Entities.Tyre)
- `RLTyreId` : string
- `RRTyre` : class:10392 (HHDev.DataManagement.Core.Entities.Tyre)
- `RRTyreId` : string
- `RunSheets` : class:213 (System.Collections.Generic.List`1)<class:9796 (HHDev.DataManagement.Core.Entities.RunSheet)>
- `TyreSetAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10540 (HHDev.DataManagement.Core.Entities.TyreSetAttachedFile)>
- `TyreSetCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:10544 (HHDev.DataManagement.Core.Entities.TyreSetCollectionItem)>
- `TyreSetPressureAdjustments` : class:213 (System.Collections.Generic.List`1)<class:10560 (HHDev.DataManagement.Core.Entities.TyreSetPressureAdjustment)>

## TyreSetPressureAdjustment

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `PressureAdjustType` : valuetype:6012 (HHDev.DataManagement.Core.Entities.ePressureAdjustType)
- `TyreSet` : class:10524 (HHDev.DataManagement.Core.Entities.TyreSet)
- `TyreSetId` : string
- `TyreSetPressureAdjustmentAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10576 (HHDev.DataManagement.Core.Entities.TyreSetPressureAdjustmentAttachedFile)>
- `TyreSetPressureAdjustmentCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:10580 (HHDev.DataManagement.Core.Entities.TyreSetPressureAdjustmentCollectionItem)>

## TyreSpecification

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EventLoadListItems` : class:213 (System.Collections.Generic.List`1)<class:6092 (HHDev.DataManagement.Core.Entities.EventLoadListItem)>
- `EventsTyreSpecifications` : class:213 (System.Collections.Generic.List`1)<class:8124 (HHDev.DataManagement.Core.Entities.EventsTyreSpecifications)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `Tyres` : class:213 (System.Collections.Generic.List`1)<class:10392 (HHDev.DataManagement.Core.Entities.Tyre)>
- `TyreSpecificationAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10612 (HHDev.DataManagement.Core.Entities.TyreSpecificationAttachedFile)>
- `TyreSpecificationCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:10616 (HHDev.DataManagement.Core.Entities.TyreSpecificationCollectionItem)>
- `TyreSpecPosition` : valuetype:6016 (HHDev.DataManagement.Core.Entities.eTyreSpecPosition)

## TyreTransaction

- `Id` : string
- `TransactionTime` : valuetype:341 (NodaTime.Instant)
- `TyreTransactionOperationItems` : class:213 (System.Collections.Generic.List`1)<class:10808 (HHDev.DataManagement.Core.Entities.TyreTransactionOperationItem)>
- `TyreTransactionTyreItems` : class:213 (System.Collections.Generic.List`1)<class:10804 (HHDev.DataManagement.Core.Entities.TyreTransactionTyreItem)>
- `UserId` : string

## TyreTransactionOperationItem

- `EventId` : string
- `Id` : string
- `TeamId` : string
- `TransactionType` : valuetype:10812 (HHDev.DataManagement.Core.Entities.eTransactionType)
- `TyreTransaction` : class:10800 (HHDev.DataManagement.Core.Entities.TyreTransaction)
- `TyreTransactionId` : string

## TyreTransactionTyreItem

- `Id` : string
- `Tyre` : class:10392 (HHDev.DataManagement.Core.Entities.Tyre)
- `TyreCondition` : valuetype:337 (HHDev.Core.NETStandard.Enums.eTyreCondition)
- `TyreId` : string
- `TyreTransaction` : class:10800 (HHDev.DataManagement.Core.Entities.TyreTransaction)
- `TyreTransactionId` : string

## TyreWearMeasurement

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventId` : string
- `FLInitialTyreWearMeasurementTyreWearSheets` : class:213 (System.Collections.Generic.List`1)<class:10672 (HHDev.DataManagement.Core.Entities.TyreWearSheet)>
- `FLTyreWearMeasurementTyreWearSheets` : class:213 (System.Collections.Generic.List`1)<class:10672 (HHDev.DataManagement.Core.Entities.TyreWearSheet)>
- `FRInitialTyreWearMeasurementTyreWearSheets` : class:213 (System.Collections.Generic.List`1)<class:10672 (HHDev.DataManagement.Core.Entities.TyreWearSheet)>
- `FRTyreWearMeasurementTyreWearSheets` : class:213 (System.Collections.Generic.List`1)<class:10672 (HHDev.DataManagement.Core.Entities.TyreWearSheet)>
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Position` : valuetype:6020 (HHDev.DataManagement.Core.Entities.eTyrePositionWithNone)
- `RLInitialTyreWearMeasurementTyreWearSheets` : class:213 (System.Collections.Generic.List`1)<class:10672 (HHDev.DataManagement.Core.Entities.TyreWearSheet)>
- `RLTyreWearMeasurementTyreWearSheets` : class:213 (System.Collections.Generic.List`1)<class:10672 (HHDev.DataManagement.Core.Entities.TyreWearSheet)>
- `RRInitialTyreWearMeasurementTyreWearSheets` : class:213 (System.Collections.Generic.List`1)<class:10672 (HHDev.DataManagement.Core.Entities.TyreWearSheet)>
- `RRTyreWearMeasurementTyreWearSheets` : class:213 (System.Collections.Generic.List`1)<class:10672 (HHDev.DataManagement.Core.Entities.TyreWearSheet)>
- `Tyre` : class:10392 (HHDev.DataManagement.Core.Entities.Tyre)
- `TyreId` : string
- `TyreWearMeasurementAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10648 (HHDev.DataManagement.Core.Entities.TyreWearMeasurementAttachedFile)>
- `TyreWearMeasurementCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:10652 (HHDev.DataManagement.Core.Entities.TyreWearMeasurementCollectionItem)>
- `TyreWearMeasurementItems` : class:213 (System.Collections.Generic.List`1)<class:10668 (HHDev.DataManagement.Core.Entities.TyreWearMeasurementItem)>

## TyreWearMeasurementItem

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Order` : i4
- `TyreWearMeasurement` : class:10632 (HHDev.DataManagement.Core.Entities.TyreWearMeasurement)
- `TyreWearMeasurementId` : string
- `Value` : valuetype:465 (System.Nullable`1)<r8>

## TyreWearSheet

- `Car` : class:5864 (HHDev.DataManagement.Core.Entities.Car)
- `CarId` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `Event` : class:6076 (HHDev.DataManagement.Core.Entities.Event)
- `EventId` : string
- `FLInitialTyreWearMeasurement` : class:10632 (HHDev.DataManagement.Core.Entities.TyreWearMeasurement)
- `FLInitialTyreWearMeasurementId` : string
- `FLTyre` : class:10392 (HHDev.DataManagement.Core.Entities.Tyre)
- `FLTyreId` : string
- `FLTyreWearMeasurement` : class:10632 (HHDev.DataManagement.Core.Entities.TyreWearMeasurement)
- `FLTyreWearMeasurementId` : string
- `FRInitialTyreWearMeasurement` : class:10632 (HHDev.DataManagement.Core.Entities.TyreWearMeasurement)
- `FRInitialTyreWearMeasurementId` : string
- `FRTyre` : class:10392 (HHDev.DataManagement.Core.Entities.Tyre)
- `FRTyreId` : string
- `FRTyreWearMeasurement` : class:10632 (HHDev.DataManagement.Core.Entities.TyreWearMeasurement)
- `FRTyreWearMeasurementId` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `RLInitialTyreWearMeasurement` : class:10632 (HHDev.DataManagement.Core.Entities.TyreWearMeasurement)
- `RLInitialTyreWearMeasurementId` : string
- `RLTyre` : class:10392 (HHDev.DataManagement.Core.Entities.Tyre)
- `RLTyreId` : string
- `RLTyreWearMeasurement` : class:10632 (HHDev.DataManagement.Core.Entities.TyreWearMeasurement)
- `RLTyreWearMeasurementId` : string
- `RRInitialTyreWearMeasurement` : class:10632 (HHDev.DataManagement.Core.Entities.TyreWearMeasurement)
- `RRInitialTyreWearMeasurementId` : string
- `RRTyre` : class:10392 (HHDev.DataManagement.Core.Entities.Tyre)
- `RRTyreId` : string
- `RRTyreWearMeasurement` : class:10632 (HHDev.DataManagement.Core.Entities.TyreWearMeasurement)
- `RRTyreWearMeasurementId` : string
- `RunSheet` : class:9796 (HHDev.DataManagement.Core.Entities.RunSheet)
- `RunSheetId` : string
- `TyreWearSheetAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10688 (HHDev.DataManagement.Core.Entities.TyreWearSheetAttachedFile)>
- `TyreWearSheetCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:10692 (HHDev.DataManagement.Core.Entities.TyreWearSheetCollectionItem)>

## User

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `AmbientMeasurements` : class:213 (System.Collections.Generic.List`1)<class:5820 (HHDev.DataManagement.Core.Entities.AmbientMeasurement)>
- `AssignedToIssueListIssues` : class:213 (System.Collections.Generic.List`1)<class:8328 (HHDev.DataManagement.Core.Entities.IssueListIssue)>
- `CustomProperties` : class:5940 (HHDev.DataManagement.Core.Entities.CustomPropertiesContainer)
- `CustomPropertyDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `CustomPropertyDefinitionId` : string
- `EventNotes` : class:213 (System.Collections.Generic.List`1)<class:8052 (HHDev.DataManagement.Core.Entities.EventNote)>
- `EventServiceReturns` : class:213 (System.Collections.Generic.List`1)<class:8088 (HHDev.DataManagement.Core.Entities.EventServiceReturn)>
- `Id` : string
- `UserAssignedToJobListTemplateItems` : class:213 (System.Collections.Generic.List`1)<class:8736 (HHDev.DataManagement.Core.Entities.JobListTemplateItem)>
- `UserAssignedToSessionObjectJobs` : class:213 (System.Collections.Generic.List`1)<class:10068 (HHDev.DataManagement.Core.Entities.SessionObjectJob)>
- `UserAttachedFiles` : class:213 (System.Collections.Generic.List`1)<class:10724 (HHDev.DataManagement.Core.Entities.UserAttachedFile)>
- `UserCollectionItems` : class:213 (System.Collections.Generic.List`1)<class:10728 (HHDev.DataManagement.Core.Entities.UserCollectionItem)>
- `UserId` : string

## ViewCustomColumnColumnDefinition

- `AllowColumnFiltering` : valuetype:6036 (HHDev.DataManagement.Core.Entities.eDefaultBoolean)
- `AllowColumnSorting` : valuetype:6036 (HHDev.DataManagement.Core.Entities.eDefaultBoolean)
- `AllowNullInput` : bool
- `AssemblyIterationFilter` : bool
- `AssemblyIterationSelectorFilterMode` : valuetype:6052 (HHDev.DataManagement.Core.Entities.eAssemblyIterationSelectorFilterMode)
- `AutoDownloadAttachedFileMode` : valuetype:357 (HHDev.Core.Enums.eAutoDownloadMode)
- `BindingMode` : valuetype:6068 (HHDev.DataManagement.Core.Entities.eBindingMode)
- `CellArrangement` : valuetype:353 (HHDev.Core.NETStandard.Enums.eCellArrangement)
- `CellStyleName` : string
- `CellStyleUri` : string
- `ColumnEnabled` : bool
- `ColumnType` : valuetype:5972 (HHDev.DataManagement.Core.Entities.eViewCustomColumnType)
- `ColumnVisibilityBindingPath` : string
- `ComboboxDataSource` : valuetype:349 (HHDev.Core.NETStandard.Enums.eCustomColumnComboBoxDataSource)
- `Content` : string
- `Content2` : string
- `Content3` : string
- `Content4` : string
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `DataTemplateName` : string
- `DataTemplateUri` : string
- `DeleteAfterUploadingAttachedFileMode` : valuetype:357 (HHDev.Core.Enums.eAutoDownloadMode)
- `DisplayFormat` : string
- `DisplayMember` : string
- `EnumType` : string
- `FieldName` : string
- `FieldName2` : string
- `FieldName3` : string
- `FieldName4` : string
- `GroupIndex` : valuetype:465 (System.Nullable`1)<i4>
- `HeaderText` : string
- `Height` : valuetype:465 (System.Nullable`1)<i4>
- `HorizontalContentAlignment` : valuetype:6040 (HHDev.DataManagement.Core.Entities.eEditSettingsHorizontalAlignment)
- `Id` : string
- `IsAttachedFileAutoDownload` : bool
- `IsColumnVisibilityBindingInverted` : bool
- `IsFrozen` : bool
- `IsRepeatColumn` : bool
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `LinkedActionCustomPropertyId` : string
- `LinkedActionCustomPropertyId2` : string
- `LinkedActionCustomPropertyId3` : string
- `LinkedActionCustomPropertyId4` : string
- `LinkedAssemblyCustomPropertyId` : string
- `LinkedAssemblyCustomPropertyId2` : string
- `LinkedAssemblyCustomPropertyId3` : string
- `LinkedAssemblyCustomPropertyId4` : string
- `LinkedCustomPropertyId` : string
- `LinkedCustomPropertyId2` : string
- `LinkedCustomPropertyId3` : string
- `LinkedCustomPropertyId4` : string
- `LinkedMathCustomPropertyId` : string
- `LinkedMathCustomPropertyId2` : string
- `LinkedMathCustomPropertyId3` : string
- `LinkedMathCustomPropertyId4` : string
- `LinkedPartCustomPropertyId` : string
- `LinkedPartCustomPropertyId2` : string
- `LinkedPartCustomPropertyId3` : string
- `LinkedPartCustomPropertyId4` : string
- `Multiline` : bool
- `Name` : string
- `NamedAssemblyFilter` : bool
- `NamedAssemblyFilterMode` : valuetype:6052 (HHDev.DataManagement.Core.Entities.eAssemblyIterationSelectorFilterMode)
- `Order` : i4
- `RepeatedColumnDisplayNameMode` : valuetype:5976 (HHDev.DataManagement.Core.Entities.eViewCustomColumnDisplayNameMode)
- `RepeatQuantity` : valuetype:465 (System.Nullable`1)<i4>
- `RepeatQuantityBindingPath` : string
- `RepeatQuantityMode` : valuetype:6032 (HHDev.DataManagement.Core.Entities.eRepeatQuantityMode)
- `ShowAllPartItems` : bool
- `ShowMultiHeader` : bool
- `SortOrder` : valuetype:6072 (HHDev.DataManagement.Core.Entities.eColumnSortOrder)
- `SourcePath` : string
- `SourcePath2` : string
- `SourcePath3` : string
- `SourcePath4` : string
- `StyleOptions` : string
- `StyleOptions2` : string
- `StyleOptions3` : string
- `StyleOptions4` : string
- `UseExpressionBindingForColumnVisibilityBindingPath` : bool
- `UseExpressionBindingForFieldName` : bool
- `UseExpressionBindingForFieldName2` : bool
- `UseExpressionBindingForFieldName3` : bool
- `UseExpressionBindingForFieldName4` : bool
- `UseExpressionBindingForRepeatQuantity` : bool
- `UseExpressionBindingForSourcePath` : bool
- `UseExpressionBindingForSourcePath2` : bool
- `UseExpressionBindingForSourcePath3` : bool
- `UseExpressionBindingForSourcePath4` : bool
- `ValueMember` : string
- `ViewCustomColumnProfile` : class:10752 (HHDev.DataManagement.Core.Entities.ViewCustomColumnProfile)
- `ViewCustomColumnProfileId` : string
- `Width` : i4
- `WidthMode` : valuetype:6028 (HHDev.DataManagement.Core.Entities.eColumnWidthMode)

## ViewCustomColumnOrderItem

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `ViewCustomColumnProfile` : class:10752 (HHDev.DataManagement.Core.Entities.ViewCustomColumnProfile)
- `ViewCustomColumnProfileId` : string

## ViewCustomColumnProfile

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `IsDefault` : bool
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `LinkedDefinition` : class:5904 (HHDev.DataManagement.Core.Entities.CustomPropertyDefinition)
- `LinkedDefinitionId` : string
- `Name` : string
- `UseColumnOrder` : bool
- `ViewCustomColumnColumnDefinitions` : class:213 (System.Collections.Generic.List`1)<class:10744 (HHDev.DataManagement.Core.Entities.ViewCustomColumnColumnDefinition)>
- `ViewCustomColumnOrderItems` : class:213 (System.Collections.Generic.List`1)<class:10748 (HHDev.DataManagement.Core.Entities.ViewCustomColumnOrderItem)>

## XmlExportAttribute

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `ShouldExportExpression` : string
- `Value` : string
- `XmlExportNode` : class:10764 (HHDev.DataManagement.Core.Entities.XmlExportNode)
- `XmlExportNodeId` : string
- `XmlValueType` : valuetype:6060 (HHDev.DataManagement.Core.Entities.eXmlValueTypes)

## XmlExportFile

- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `FileNameTemplate` : string
- `Id` : string
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Scope` : string
- `ShouldExportExpression` : string
- `XmlExportNodes` : class:213 (System.Collections.Generic.List`1)<class:10764 (HHDev.DataManagement.Core.Entities.XmlExportNode)>
- `XmlExportProfile` : class:10768 (HHDev.DataManagement.Core.Entities.XmlExportProfile)
- `XmlExportProfileId` : string

## XmlExportNode

- `Children` : class:457 (System.Collections.Generic.IEnumerable`1)<class:10764 (HHDev.DataManagement.Core.Entities.XmlExportNode)>
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `IsScopeChangeNode` : bool
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `Order` : i4
- `Parent` : class:10764 (HHDev.DataManagement.Core.Entities.XmlExportNode)
- `ParentId` : string
- `Scope` : string
- `ShouldExportExpression` : string
- `ShouldExportItemExpression` : string
- `Value` : string
- `XmlExportAttributes` : class:213 (System.Collections.Generic.List`1)<class:10756 (HHDev.DataManagement.Core.Entities.XmlExportAttribute)>
- `XmlExportFile` : class:10760 (HHDev.DataManagement.Core.Entities.XmlExportFile)
- `XmlExportFileId` : string
- `XmlValueType` : valuetype:6060 (HHDev.DataManagement.Core.Entities.eXmlValueTypes)

## XmlExportProfile

- `AccountId` : string
- `AccountOptions` : class:6104 (HHDev.DataManagement.Core.Entities.AccountOptions)
- `CreatedBy` : string
- `CreatedDate` : valuetype:341 (NodaTime.Instant)
- `Id` : string
- `IsLocked` : bool
- `LastModifiedBy` : string
- `LastModifiedDate` : valuetype:341 (NodaTime.Instant)
- `Name` : string
- `XmlExportFiles` : class:213 (System.Collections.Generic.List`1)<class:10760 (HHDev.DataManagement.Core.Entities.XmlExportFile)>

## eAmbientMeasurementDataSource

- `HandMeasurement` : valuetype:5836 (HHDev.DataManagement.Core.Entities.eAmbientMeasurementDataSource) = `1`
- `Imported` : valuetype:5836 (HHDev.DataManagement.Core.Entities.eAmbientMeasurementDataSource) = `2`
- `TimingFeed` : valuetype:5836 (HHDev.DataManagement.Core.Entities.eAmbientMeasurementDataSource) = `3`
- `value__` : i4
- `WeatherStation` : valuetype:5836 (HHDev.DataManagement.Core.Entities.eAmbientMeasurementDataSource) = `0`

## eAssemblyIterationSelectorFilterMode

- `All` : valuetype:6052 (HHDev.DataManagement.Core.Entities.eAssemblyIterationSelectorFilterMode) = `0`
- `Car` : valuetype:6052 (HHDev.DataManagement.Core.Entities.eAssemblyIterationSelectorFilterMode) = `3`
- `Championship` : valuetype:6052 (HHDev.DataManagement.Core.Entities.eAssemblyIterationSelectorFilterMode) = `4`
- `Event` : valuetype:6052 (HHDev.DataManagement.Core.Entities.eAssemblyIterationSelectorFilterMode) = `1`
- `EventCar` : valuetype:6052 (HHDev.DataManagement.Core.Entities.eAssemblyIterationSelectorFilterMode) = `2`
- `value__` : i4

## eAssemblyParameterAssociationMode

- `All` : valuetype:5892 (HHDev.DataManagement.Core.Entities.eAssemblyParameterAssociationMode) = `0`
- `Car` : valuetype:5892 (HHDev.DataManagement.Core.Entities.eAssemblyParameterAssociationMode) = `3`
- `Championship` : valuetype:5892 (HHDev.DataManagement.Core.Entities.eAssemblyParameterAssociationMode) = `4`
- `Event` : valuetype:5892 (HHDev.DataManagement.Core.Entities.eAssemblyParameterAssociationMode) = `1`
- `EventCar` : valuetype:5892 (HHDev.DataManagement.Core.Entities.eAssemblyParameterAssociationMode) = `2`
- `value__` : i4

## eAxisMode

- `Auto` : valuetype:6024 (HHDev.DataManagement.Core.Entities.eAxisMode) = `0`
- `Manual` : valuetype:6024 (HHDev.DataManagement.Core.Entities.eAxisMode) = `1`
- `value__` : i4
- `WithinXOfMax` : valuetype:6024 (HHDev.DataManagement.Core.Entities.eAxisMode) = `3`
- `WithinXOfMin` : valuetype:6024 (HHDev.DataManagement.Core.Entities.eAxisMode) = `2`

## eBindingMode

- `Default` : valuetype:6068 (HHDev.DataManagement.Core.Entities.eBindingMode) = `0`
- `OneTime` : valuetype:6068 (HHDev.DataManagement.Core.Entities.eBindingMode) = `3`
- `OneWay` : valuetype:6068 (HHDev.DataManagement.Core.Entities.eBindingMode) = `2`
- `OneWayToSource` : valuetype:6068 (HHDev.DataManagement.Core.Entities.eBindingMode) = `4`
- `TwoWay` : valuetype:6068 (HHDev.DataManagement.Core.Entities.eBindingMode) = `1`
- `value__` : i4

## eBrakeDiscPosition

- `All` : valuetype:5980 (HHDev.DataManagement.Core.Entities.eBrakeDiscPosition) = `2`
- `Front` : valuetype:5980 (HHDev.DataManagement.Core.Entities.eBrakeDiscPosition) = `0`
- `Rear` : valuetype:5980 (HHDev.DataManagement.Core.Entities.eBrakeDiscPosition) = `1`
- `value__` : i4

## eBrakePadPosition

- `All` : valuetype:5984 (HHDev.DataManagement.Core.Entities.eBrakePadPosition) = `2`
- `Front` : valuetype:5984 (HHDev.DataManagement.Core.Entities.eBrakePadPosition) = `0`
- `Rear` : valuetype:5984 (HHDev.DataManagement.Core.Entities.eBrakePadPosition) = `1`
- `value__` : i4

## eBrakeSetPosition

- `All` : valuetype:5988 (HHDev.DataManagement.Core.Entities.eBrakeSetPosition) = `2`
- `Front` : valuetype:5988 (HHDev.DataManagement.Core.Entities.eBrakeSetPosition) = `0`
- `Rear` : valuetype:5988 (HHDev.DataManagement.Core.Entities.eBrakeSetPosition) = `1`
- `value__` : i4

## eColumnSortOrder

- `Ascending` : valuetype:6072 (HHDev.DataManagement.Core.Entities.eColumnSortOrder) = `1`
- `Descending` : valuetype:6072 (HHDev.DataManagement.Core.Entities.eColumnSortOrder) = `2`
- `None` : valuetype:6072 (HHDev.DataManagement.Core.Entities.eColumnSortOrder) = `0`
- `value__` : i4

## eColumnWidthMode

- `Absolute` : valuetype:6028 (HHDev.DataManagement.Core.Entities.eColumnWidthMode) = `0`
- `Relative` : valuetype:6028 (HHDev.DataManagement.Core.Entities.eColumnWidthMode) = `1`
- `value__` : i4

## eDefaultBoolean

- `Default` : valuetype:6036 (HHDev.DataManagement.Core.Entities.eDefaultBoolean) = `2`
- `False` : valuetype:6036 (HHDev.DataManagement.Core.Entities.eDefaultBoolean) = `0`
- `True` : valuetype:6036 (HHDev.DataManagement.Core.Entities.eDefaultBoolean) = `1`
- `value__` : i4

## eEditSettingsHorizontalAlignment

- `Center` : valuetype:6040 (HHDev.DataManagement.Core.Entities.eEditSettingsHorizontalAlignment) = `0`
- `Default` : valuetype:6040 (HHDev.DataManagement.Core.Entities.eEditSettingsHorizontalAlignment) = `4`
- `Left` : valuetype:6040 (HHDev.DataManagement.Core.Entities.eEditSettingsHorizontalAlignment) = `1`
- `Right` : valuetype:6040 (HHDev.DataManagement.Core.Entities.eEditSettingsHorizontalAlignment) = `2`
- `Stretch` : valuetype:6040 (HHDev.DataManagement.Core.Entities.eEditSettingsHorizontalAlignment) = `3`
- `value__` : i4

## eFuelCountDirection

- `Decreasing` : valuetype:6044 (HHDev.DataManagement.Core.Entities.eFuelCountDirection) = `0`
- `Increasing` : valuetype:6044 (HHDev.DataManagement.Core.Entities.eFuelCountDirection) = `1`
- `value__` : i4

## eJsonNodeMode

- `Array` : valuetype:6056 (HHDev.DataManagement.Core.Entities.eJsonNodeMode) = `1`
- `Auto` : valuetype:6056 (HHDev.DataManagement.Core.Entities.eJsonNodeMode) = `0`
- `Boolean` : valuetype:6056 (HHDev.DataManagement.Core.Entities.eJsonNodeMode) = `5`
- `Double` : valuetype:6056 (HHDev.DataManagement.Core.Entities.eJsonNodeMode) = `6`
- `Integer` : valuetype:6056 (HHDev.DataManagement.Core.Entities.eJsonNodeMode) = `4`
- `JsonProfile` : valuetype:6056 (HHDev.DataManagement.Core.Entities.eJsonNodeMode) = `8`
- `JsonSnippet` : valuetype:6056 (HHDev.DataManagement.Core.Entities.eJsonNodeMode) = `7`
- `Null` : valuetype:6056 (HHDev.DataManagement.Core.Entities.eJsonNodeMode) = `3`
- `Object` : valuetype:6056 (HHDev.DataManagement.Core.Entities.eJsonNodeMode) = `2`
- `value__` : i4

## eKpiStatus

- `Failed` : valuetype:10792 (HHDev.DataManagement.Core.Entities.eKpiStatus) = `3`
- `NotRun` : valuetype:10792 (HHDev.DataManagement.Core.Entities.eKpiStatus) = `0`
- `Queued` : valuetype:10792 (HHDev.DataManagement.Core.Entities.eKpiStatus) = `5`
- `Run` : valuetype:10792 (HHDev.DataManagement.Core.Entities.eKpiStatus) = `1`
- `RunWithErrors` : valuetype:10792 (HHDev.DataManagement.Core.Entities.eKpiStatus) = `2`
- `Started` : valuetype:10792 (HHDev.DataManagement.Core.Entities.eKpiStatus) = `4`
- `value__` : i4

## eLinkedIssueType

- `Blocks` : valuetype:6064 (HHDev.DataManagement.Core.Entities.eLinkedIssueType) = `1`
- `Clones` : valuetype:6064 (HHDev.DataManagement.Core.Entities.eLinkedIssueType) = `3`
- `Duplicates` : valuetype:6064 (HHDev.DataManagement.Core.Entities.eLinkedIssueType) = `5`
- `IsBlockedBy` : valuetype:6064 (HHDev.DataManagement.Core.Entities.eLinkedIssueType) = `0`
- `IsClonedBy` : valuetype:6064 (HHDev.DataManagement.Core.Entities.eLinkedIssueType) = `2`
- `IsDuplicatedBy` : valuetype:6064 (HHDev.DataManagement.Core.Entities.eLinkedIssueType) = `4`
- `RelatesTo` : valuetype:6064 (HHDev.DataManagement.Core.Entities.eLinkedIssueType) = `6`
- `value__` : i4

## eMileageComputationMode

- `Auto` : valuetype:5996 (HHDev.DataManagement.Core.Entities.eMileageComputationMode) = `0`
- `Manual` : valuetype:5996 (HHDev.DataManagement.Core.Entities.eMileageComputationMode) = `1`
- `ManualEventEntry` : valuetype:5996 (HHDev.DataManagement.Core.Entities.eMileageComputationMode) = `3`
- `ManualSessionEntry` : valuetype:5996 (HHDev.DataManagement.Core.Entities.eMileageComputationMode) = `4`
- `Off` : valuetype:5996 (HHDev.DataManagement.Core.Entities.eMileageComputationMode) = `2`
- `value__` : i4

## eMileageLockMode

- `Auto` : valuetype:6004 (HHDev.DataManagement.Core.Entities.eMileageLockMode) = `0`
- `Locked` : valuetype:6004 (HHDev.DataManagement.Core.Entities.eMileageLockMode) = `1`
- `Unlocked` : valuetype:6004 (HHDev.DataManagement.Core.Entities.eMileageLockMode) = `2`
- `value__` : i4

## eOptionalFuelCountDirection

- `Decreasing` : valuetype:6048 (HHDev.DataManagement.Core.Entities.eOptionalFuelCountDirection) = `1`
- `Increasing` : valuetype:6048 (HHDev.DataManagement.Core.Entities.eOptionalFuelCountDirection) = `2`
- `Inherit` : valuetype:6048 (HHDev.DataManagement.Core.Entities.eOptionalFuelCountDirection) = `0`
- `value__` : i4

## eOptionalRunPlanMode

- `Inherit` : valuetype:6008 (HHDev.DataManagement.Core.Entities.eOptionalRunPlanMode) = `0`
- `Lap` : valuetype:6008 (HHDev.DataManagement.Core.Entities.eOptionalRunPlanMode) = `2`
- `Run` : valuetype:6008 (HHDev.DataManagement.Core.Entities.eOptionalRunPlanMode) = `1`
- `value__` : i4

## ePlannedRunCalculationType

- `Electric` : valuetype:10788 (HHDev.DataManagement.Core.Entities.ePlannedRunCalculationType) = `1`
- `Gasoline` : valuetype:10788 (HHDev.DataManagement.Core.Entities.ePlannedRunCalculationType) = `0`
- `value__` : i4

## ePlannedRunType

- `BlankRow` : valuetype:10784 (HHDev.DataManagement.Core.Entities.ePlannedRunType) = `1`
- `Live` : valuetype:10784 (HHDev.DataManagement.Core.Entities.ePlannedRunType) = `2`
- `Normal` : valuetype:10784 (HHDev.DataManagement.Core.Entities.ePlannedRunType) = `0`
- `TimeFiller` : valuetype:10784 (HHDev.DataManagement.Core.Entities.ePlannedRunType) = `3`
- `value__` : i4

## ePredictiveMileageComputationMode

- `ManualEventEntry` : valuetype:6000 (HHDev.DataManagement.Core.Entities.ePredictiveMileageComputationMode) = `1`
- `ManualSessionEntry` : valuetype:6000 (HHDev.DataManagement.Core.Entities.ePredictiveMileageComputationMode) = `2`
- `Off` : valuetype:6000 (HHDev.DataManagement.Core.Entities.ePredictiveMileageComputationMode) = `0`
- `RunPlan` : valuetype:6000 (HHDev.DataManagement.Core.Entities.ePredictiveMileageComputationMode) = `3`
- `value__` : i4

## ePressureAdjustType

- `Adjustment` : valuetype:6012 (HHDev.DataManagement.Core.Entities.ePressureAdjustType) = `1`
- `Cold` : valuetype:6012 (HHDev.DataManagement.Core.Entities.ePressureAdjustType) = `0`
- `Measurement` : valuetype:6012 (HHDev.DataManagement.Core.Entities.ePressureAdjustType) = `2`
- `value__` : i4

## eRepeatQuantityMode

- `Databound` : valuetype:6032 (HHDev.DataManagement.Core.Entities.eRepeatQuantityMode) = `0`
- `Fixed` : valuetype:6032 (HHDev.DataManagement.Core.Entities.eRepeatQuantityMode) = `1`
- `value__` : i4

## eRunPlanMode

- `Lap` : valuetype:5992 (HHDev.DataManagement.Core.Entities.eRunPlanMode) = `1`
- `Run` : valuetype:5992 (HHDev.DataManagement.Core.Entities.eRunPlanMode) = `0`
- `value__` : i4

## eTransactionType

- `AddToEvent` : valuetype:10812 (HHDev.DataManagement.Core.Entities.eTransactionType) = `1`
- `AddToSystem` : valuetype:10812 (HHDev.DataManagement.Core.Entities.eTransactionType) = `0`
- `IssueToTeam` : valuetype:10812 (HHDev.DataManagement.Core.Entities.eTransactionType) = `2`
- `ReturnFromTeam` : valuetype:10812 (HHDev.DataManagement.Core.Entities.eTransactionType) = `3`
- `value__` : i4

## eTyrePositionWithNone

- `FrontLeft` : valuetype:6020 (HHDev.DataManagement.Core.Entities.eTyrePositionWithNone) = `1`
- `FrontRight` : valuetype:6020 (HHDev.DataManagement.Core.Entities.eTyrePositionWithNone) = `2`
- `None` : valuetype:6020 (HHDev.DataManagement.Core.Entities.eTyrePositionWithNone) = `0`
- `RearLeft` : valuetype:6020 (HHDev.DataManagement.Core.Entities.eTyrePositionWithNone) = `3`
- `RearRight` : valuetype:6020 (HHDev.DataManagement.Core.Entities.eTyrePositionWithNone) = `4`
- `value__` : i4

## eTyreSpecPosition

- `All` : valuetype:6016 (HHDev.DataManagement.Core.Entities.eTyreSpecPosition) = `0`
- `Front` : valuetype:6016 (HHDev.DataManagement.Core.Entities.eTyreSpecPosition) = `1`
- `Rear` : valuetype:6016 (HHDev.DataManagement.Core.Entities.eTyreSpecPosition) = `2`
- `value__` : i4

## eViewCustomColumnDisplayNameMode

- `Bound` : valuetype:5976 (HHDev.DataManagement.Core.Entities.eViewCustomColumnDisplayNameMode) = `0`
- `Constant` : valuetype:5976 (HHDev.DataManagement.Core.Entities.eViewCustomColumnDisplayNameMode) = `1`
- `value__` : i4

## eViewCustomColumnType

- `ActionButton` : valuetype:5972 (HHDev.DataManagement.Core.Entities.eViewCustomColumnType) = `19`
- `AssemblyParameter` : valuetype:5972 (HHDev.DataManagement.Core.Entities.eViewCustomColumnType) = `6`
- `Button` : valuetype:5972 (HHDev.DataManagement.Core.Entities.eViewCustomColumnType) = `12`
- `Checkbox` : valuetype:5972 (HHDev.DataManagement.Core.Entities.eViewCustomColumnType) = `11`
- `Colour` : valuetype:5972 (HHDev.DataManagement.Core.Entities.eViewCustomColumnType) = `4`
- `ComboBox` : valuetype:5972 (HHDev.DataManagement.Core.Entities.eViewCustomColumnType) = `5`
- `ConditionalMathParameter` : valuetype:5972 (HHDev.DataManagement.Core.Entities.eViewCustomColumnType) = `16`
- `DataTemplate` : valuetype:5972 (HHDev.DataManagement.Core.Entities.eViewCustomColumnType) = `13`
- `Date` : valuetype:5972 (HHDev.DataManagement.Core.Entities.eViewCustomColumnType) = `8`
- `DateTime` : valuetype:5972 (HHDev.DataManagement.Core.Entities.eViewCustomColumnType) = `9`
- `Duration` : valuetype:5972 (HHDev.DataManagement.Core.Entities.eViewCustomColumnType) = `10`
- `EnumComboBox` : valuetype:5972 (HHDev.DataManagement.Core.Entities.eViewCustomColumnType) = `7`
- `MathParameter` : valuetype:5972 (HHDev.DataManagement.Core.Entities.eViewCustomColumnType) = `2`
- `MultipleAttachedFiles` : valuetype:5972 (HHDev.DataManagement.Core.Entities.eViewCustomColumnType) = `18`
- `NamedAssemblySelector` : valuetype:5972 (HHDev.DataManagement.Core.Entities.eViewCustomColumnType) = `20`
- `Parameter` : valuetype:5972 (HHDev.DataManagement.Core.Entities.eViewCustomColumnType) = `0`
- `PartItemParameter` : valuetype:5972 (HHDev.DataManagement.Core.Entities.eViewCustomColumnType) = `14`
- `PartParameter` : valuetype:5972 (HHDev.DataManagement.Core.Entities.eViewCustomColumnType) = `1`
- `SingleAttachedFile` : valuetype:5972 (HHDev.DataManagement.Core.Entities.eViewCustomColumnType) = `17`
- `Text` : valuetype:5972 (HHDev.DataManagement.Core.Entities.eViewCustomColumnType) = `3`
- `UserSelector` : valuetype:5972 (HHDev.DataManagement.Core.Entities.eViewCustomColumnType) = `15`
- `value__` : i4

## eXmlValueTypes

- `Constant` : valuetype:6060 (HHDev.DataManagement.Core.Entities.eXmlValueTypes) = `0`
- `value__` : i4
- `Variable` : valuetype:6060 (HHDev.DataManagement.Core.Entities.eXmlValueTypes) = `1`

## ConflictDefinition

- `Items` : class:85 (System.Collections.Generic.List`1)<class:344 (HHDev.Sync.Core.ConflictResolution.ConflictDefinitionItem)>
- `MessageType` : class:49 (System.Type)
- `UpdateType` : valuetype:221 (HHDev.Core.NETStandard.Enums.eUpdateType)

## ConflictDefinitionItem

- `CustomConflictResolver` : class:413 (System.Func`3)<class:156 (HHDev.Sync.Core.Messages.SyncableMessage),class:156 (HHDev.Sync.Core.Messages.SyncableMessage),class:332 (HHDev.Sync.Core.ConflictResolution.ConflictAnalysisResult)>
- `DeleteConflictAction` : valuetype:340 (HHDev.Sync.Core.ConflictResolution.eDeleteConflictAction)
- `MessageProperty` : string
- `OtherMessageProperty` : string
- `OtherMessageType` : class:49 (System.Type)
- `UpdateType` : valuetype:221 (HHDev.Core.NETStandard.Enums.eUpdateType)

## ConflictResolutionFunctions

- `_logger` : class:369 (HHDev.Core.NETStandard.Logging.ExtendedLogger)

## eConflictType

- `DeleteDelete` : valuetype:324 (HHDev.Sync.Core.ConflictResolution.eConflictType) = `4`
- `DeleteInsert` : valuetype:324 (HHDev.Sync.Core.ConflictResolution.eConflictType) = `6`
- `DeleteUpdate` : valuetype:324 (HHDev.Sync.Core.ConflictResolution.eConflictType) = `2`
- `InsertDelete` : valuetype:324 (HHDev.Sync.Core.ConflictResolution.eConflictType) = `5`
- `InsertInsert` : valuetype:324 (HHDev.Sync.Core.ConflictResolution.eConflictType) = `7`
- `None` : valuetype:324 (HHDev.Sync.Core.ConflictResolution.eConflictType) = `0`
- `UpdateDelete` : valuetype:324 (HHDev.Sync.Core.ConflictResolution.eConflictType) = `3`
- `UpdateUpdate` : valuetype:324 (HHDev.Sync.Core.ConflictResolution.eConflictType) = `1`
- `value__` : i4

## eDeleteConflictAction

- `IgnoreNonDelete` : valuetype:340 (HHDev.Sync.Core.ConflictResolution.eDeleteConflictAction) = `1`
- `UpdatePayload` : valuetype:340 (HHDev.Sync.Core.ConflictResolution.eDeleteConflictAction) = `0`
- `value__` : i4

## eInsertInsetConflictResultType

- `Error` : valuetype:380 (HHDev.Sync.Core.ConflictResolution.eInsertInsetConflictResultType) = `0`
- `IgnoreMessages` : valuetype:380 (HHDev.Sync.Core.ConflictResolution.eInsertInsetConflictResultType) = `1`
- `value__` : i4

## eResolutionType

- `IgnoreIncoming` : valuetype:328 (HHDev.Sync.Core.ConflictResolution.eResolutionType) = `2`
- `None` : valuetype:328 (HHDev.Sync.Core.ConflictResolution.eResolutionType) = `0`
- `RemoveLocal` : valuetype:328 (HHDev.Sync.Core.ConflictResolution.eResolutionType) = `1`
- `ReplaceIncomingPayload` : valuetype:328 (HHDev.Sync.Core.ConflictResolution.eResolutionType) = `8`
- `ReplaceLocalPayload` : valuetype:328 (HHDev.Sync.Core.ConflictResolution.eResolutionType) = `4`
- `ResolveIncomingPayload` : valuetype:328 (HHDev.Sync.Core.ConflictResolution.eResolutionType) = `32`
- `ResolveLocalPayload` : valuetype:328 (HHDev.Sync.Core.ConflictResolution.eResolutionType) = `16`
- `value__` : i4

## AbstractSyncDataSelection

- `AccountId` : string
- `DatabaseId` : string
- `Id` : string
- `SyncDataSelectionStatus` : valuetype:12 (HHDev.Sync.Core.eSyncDataSelectionStatus)
- `SyncOperationTime` : string

## SyncInfo

- `Key` : string
- `Value` : string

## SyncOperation

- `AccountId` : string
- `Id` : string
- `IsPlaceHolder` : bool
- `ItemId` : string
- `MessageTypeShort` : string
- `Payload` : string
- `Sequence` : i4
- `SourceDatabaseId` : string
- `SyncOperationTime` : valuetype:133 (System.DateTime)
- `UpdateType` : valuetype:221 (HHDev.Core.NETStandard.Enums.eUpdateType)
- `UserId` : string

## BaseMessage

- `.ctor` : 
- `BlacklistedIds` : valuetype:25 (System.Guid)[]
- `SenderId` : valuetype:25 (System.Guid)
- `TargetControlIds` : valuetype:25 (System.Guid)[]
- `TargetId` : valuetype:25 (System.Guid)
- `TraceId` : valuetype:25 (System.Guid)
- `get_BlacklistedIds` : 
- `get_SenderId` : 
- `get_TargetControlIds` : 
- `get_TargetId` : 
- `get_TraceId` : 
- `set_BlacklistedIds` : 
- `set_SenderId` : 
- `set_TargetControlIds` : 
- `set_TargetId` : 
- `set_TraceId` : 

## BulkUpdateMessage

- `.ctor` : 
- `Messages` : class:85 (System.Collections.Generic.List`1)<class:268 (HHDev.Sync.Core.Messages.Interfaces.IMessage)>
- `get_Messages` : 
- `set_Messages` : 
- `ToString` : 

## CustomPropertyPayload

- `CollectionItemAttachedFilesAdded` : class:85 (System.Collections.Generic.List`1)<class:236 (HHDev.Sync.Core.Messages.Payloads.CustomAttachedFileUpdate)>
- `CollectionItemAttachedFilesDeleted` : class:85 (System.Collections.Generic.List`1)<class:240 (HHDev.Sync.Core.Messages.Payloads.CustomAttachedFileDelete)>
- `CollectionItemAttachedFilesUpdated` : class:85 (System.Collections.Generic.List`1)<class:236 (HHDev.Sync.Core.Messages.Payloads.CustomAttachedFileUpdate)>
- `CollectionItemsAdded` : class:85 (System.Collections.Generic.List`1)<class:220 (HHDev.Sync.Core.Messages.Payloads.CustomCollectionItemUpdate)>
- `CollectionItemsDeleted` : class:85 (System.Collections.Generic.List`1)<class:224 (HHDev.Sync.Core.Messages.Payloads.CustomCollectionItemDelete)>
- `CollectionItemsUpdated` : class:85 (System.Collections.Generic.List`1)<class:220 (HHDev.Sync.Core.Messages.Payloads.CustomCollectionItemUpdate)>
- `CollectionOrderUpdates` : class:85 (System.Collections.Generic.List`1)<class:228 (HHDev.Sync.Core.Messages.Payloads.CollectionOrderUpdate)>
- `CustomProperties` : class:85 (System.Collections.Generic.List`1)<class:40 (HHDev.Sync.Core.Models.SyncPayloadCustomProperty)>
- `CustomPropertyDefinitionId` : string

## PropertyPayload

- `_logger` : class:369 (HHDev.Core.NETStandard.Logging.ExtendedLogger)

## SyncPayload

- `Properties` : class:85 (System.Collections.Generic.List`1)<class:365 (HHDev.Core.NETStandard.Messaging.Payloads.PayloadProperty)>

## ReceiptAcknowledgementMessage

- `.ctor` : 
- `AcknowledgementItems` : class:85 (System.Collections.Generic.List`1)<class:136 (HHDev.Sync.Core.Messages.ReceiptAcknowledgementItem)>
- `get_AcknowledgementItems` : 
- `set_AcknowledgementItems` : 
- `ToString` : 

## RefreshTokenRequestMessage

- `.ctor` : 
- `ClientId` : string
- `CorrelationId` : valuetype:25 (System.Guid)
- `RefreshToken` : string
- `Scope` : string
- `get_ClientId` : 
- `get_CorrelationId` : 
- `get_RefreshToken` : 
- `get_Scope` : 
- `set_ClientId` : 
- `set_CorrelationId` : 
- `set_RefreshToken` : 
- `set_Scope` : 
- `ToString` : 

## RefreshTokenResponseMessage

- `.ctor` : 
- `AccessToken` : string
- `AccessTokenExpiry` : valuetype:133 (System.DateTime)
- `CorrelationId` : valuetype:25 (System.Guid)
- `Error` : string
- `FailureKind` : valuetype:60 (HHDev.Sync.Core.Messages.eTokenRefreshFailure)
- `IdentityToken` : string
- `RefreshToken` : string
- `Success` : bool
- `get_AccessToken` : 
- `get_AccessTokenExpiry` : 
- `get_CorrelationId` : 
- `get_Error` : 
- `get_FailureKind` : 
- `get_IdentityToken` : 
- `get_RefreshToken` : 
- `get_Success` : 
- `set_AccessToken` : 
- `set_AccessTokenExpiry` : 
- `set_CorrelationId` : 
- `set_Error` : 
- `set_FailureKind` : 
- `set_IdentityToken` : 
- `set_RefreshToken` : 
- `set_Success` : 
- `ToString` : 

## RequestPendingSyncOperationsMessage

- `.ctor` : 
- `BatchSize` : valuetype:197 (System.Nullable`1)<i4>
- `LimitMessagesSent` : bool
- `MessageSendLimit` : i4
- `RequestPendingSyncOperationsDataSelections` : class:85 (System.Collections.Generic.List`1)<class:144 (HHDev.Sync.Core.Messages.IPendingOperationDataSelection)>
- `get_BatchSize` : 
- `get_LimitMessagesSent` : 
- `get_MessageSendLimit` : 
- `get_RequestPendingSyncOperationsDataSelections` : 
- `set_BatchSize` : 
- `set_LimitMessagesSent` : 
- `set_MessageSendLimit` : 
- `set_RequestPendingSyncOperationsDataSelections` : 
- `ToString` : 

## SyncMessageBuilder

- `AccountId` : valuetype:25 (System.Guid)
- `ItemId` : string
- `SenderId` : valuetype:25 (System.Guid)
- `SourceDatabaseId` : valuetype:25 (System.Guid)
- `SyncOperationId` : valuetype:25 (System.Guid)
- `SyncOperationTime` : valuetype:197 (System.Nullable`1)<valuetype:133 (System.DateTime)>
- `TargetId` : valuetype:25 (System.Guid)
- `UserId` : valuetype:25 (System.Guid)
- `get_AccountId` : 
- `get_ItemId` : 
- `get_SenderId` : 
- `get_SourceDatabaseId` : 
- `get_SyncOperationId` : 
- `get_SyncOperationTime` : 
- `get_TargetId` : 
- `get_UserId` : 
- `NewMessage` : 
- `set_AccountId` : 
- `set_ItemId` : 
- `set_SenderId` : 
- `set_SourceDatabaseId` : 
- `set_SyncOperationId` : 
- `set_SyncOperationTime` : 
- `set_TargetId` : 
- `set_UserId` : 
- `WithAccountId` : 
- `WithItemId` : 
- `WithSenderId` : 
- `WithTargetId` : 

## SyncOperationMessage

- `AccountId` : valuetype:25 (System.Guid)
- `BatchIndex` : i4
- `DataSelectionId` : valuetype:25 (System.Guid)
- `IsFinalBatch` : bool
- `IsLimitReached` : bool
- `IsPendingOperationsResponse` : bool
- `SyncMessages` : class:249 (System.Collections.Generic.IReadOnlyList`1)<class:156 (HHDev.Sync.Core.Messages.SyncableMessage)>

## SyncableMessage

- `_accountId` : valuetype:25 (System.Guid)
- `_itemId` : string
- `_senderId` : valuetype:25 (System.Guid)
- `_sourceDatabaseId` : valuetype:25 (System.Guid)
- `_syncOperationId` : valuetype:25 (System.Guid)
- `_syncOperationTime` : valuetype:133 (System.DateTime)
- `_targetId` : valuetype:25 (System.Guid)
- `_traceId` : valuetype:25 (System.Guid)
- `_userId` : valuetype:25 (System.Guid)
- `BlacklistedIds` : valuetype:25 (System.Guid)[]
- `ParentTraceId` : valuetype:197 (System.Nullable`1)<valuetype:25 (System.Guid)>
- `RawPayload` : object
- `TargetControlIds` : valuetype:25 (System.Guid)[]

## UserAuthMessage

- `.ctor` : 
- `ClientFlags` : class:85 (System.Collections.Generic.List`1)<string>
- `ClientSoftwareKey` : string
- `ClientVersion` : string
- `DatabaseId` : string
- `JwtToken` : string
- `Password` : string
- `SyncAuthMode` : valuetype:20 (HHDev.Sync.Core.eSyncAuthMode)
- `Username` : string
- `get_ClientFlags` : 
- `get_ClientSoftwareKey` : 
- `get_ClientVersion` : 
- `get_DatabaseId` : 
- `get_JwtToken` : 
- `get_Password` : 
- `get_SyncAuthMode` : 
- `get_Username` : 
- `set_ClientFlags` : 
- `set_ClientSoftwareKey` : 
- `set_ClientVersion` : 
- `set_DatabaseId` : 
- `set_JwtToken` : 
- `set_Password` : 
- `set_SyncAuthMode` : 
- `set_Username` : 
- `ToString` : 

## UserAuthResponseMessage

- `.ctor` : 
- `AccountIds` : string[]
- `AuthenticatedWithServer` : bool
- `IsAllowedToSync` : bool
- `MessageString` : string
- `UserId` : string
- `Username` : string
- `get_AccountIds` : 
- `get_AuthenticatedWithServer` : 
- `get_IsAllowedToSync` : 
- `get_MessageString` : 
- `get_UserId` : 
- `get_Username` : 
- `set_AccountIds` : 
- `set_AuthenticatedWithServer` : 
- `set_IsAllowedToSync` : 
- `set_MessageString` : 
- `set_UserId` : 
- `set_Username` : 
- `ToString` : 

## eTokenRefreshFailure

- `None` : valuetype:60 (HHDev.Sync.Core.Messages.eTokenRefreshFailure) = `0`
- `Permanent` : valuetype:60 (HHDev.Sync.Core.Messages.eTokenRefreshFailure) = `1`
- `Transient` : valuetype:60 (HHDev.Sync.Core.Messages.eTokenRefreshFailure) = `2`
- `value__` : i4

## SyncGlobals

- `.cctor` : 
- `MessageSerializer` : class:276 (HHDev.Sync.Core.Messages.Interfaces.IMessageSerializer)
- `DATETIME_FORMAT` : string = `yyyy-MM-dd HH:mm:ss.FFFFFFF`
- `DelimiterBytes` : u1[]
- `get_MessageSerializer` : 
- `get_ServerMessageId` : 
- `GRACEFUL_SHUTDOWN_HANDSHAKE_FLAG` : string = `GracefulShutdownHandshake`
- `HEARTBEAT_MSG` : string = `heartbeat<EOM>`
- `HEARTBEAT_STR` : string = `heartbeat`
- `HeartbeatBytes` : u1[]
- `HeartbeatMessageBytes` : u1[]
- `MSG_DELIMITER` : string = `<EOM>`
- `set_MessageSerializer` : 
- `SYNC_DATA_SELECTION_TABLE_NAME` : string = `SyncDataSelection`

## eBatchOperation

- `Add` : valuetype:24 (HHDev.Sync.Core.eBatchOperation) = `0`
- `Delete` : valuetype:24 (HHDev.Sync.Core.eBatchOperation) = `1`
- `value__` : i4

## eDatabaseError

- `FailedLocalOperation` : valuetype:16 (HHDev.Sync.Core.eDatabaseError) = `1`
- `FailedLocalPush` : valuetype:16 (HHDev.Sync.Core.eDatabaseError) = `2`
- `Unhandled` : valuetype:16 (HHDev.Sync.Core.eDatabaseError) = `0`
- `value__` : i4

## eSyncAuthMode

- `Basic` : valuetype:20 (HHDev.Sync.Core.eSyncAuthMode) = `1`
- `Bearer` : valuetype:20 (HHDev.Sync.Core.eSyncAuthMode) = `0`
- `value__` : i4

## eSyncDataSelectionStatus

- `Accepted` : valuetype:12 (HHDev.Sync.Core.eSyncDataSelectionStatus) = `1`
- `Completed` : valuetype:12 (HHDev.Sync.Core.eSyncDataSelectionStatus) = `5`
- `Failed` : valuetype:12 (HHDev.Sync.Core.eSyncDataSelectionStatus) = `3`
- `Ignored` : valuetype:12 (HHDev.Sync.Core.eSyncDataSelectionStatus) = `4`
- `Rejected` : valuetype:12 (HHDev.Sync.Core.eSyncDataSelectionStatus) = `2`
- `RequestDelete` : valuetype:12 (HHDev.Sync.Core.eSyncDataSelectionStatus) = `6`
- `Sent` : valuetype:12 (HHDev.Sync.Core.eSyncDataSelectionStatus) = `0`
- `value__` : i4
