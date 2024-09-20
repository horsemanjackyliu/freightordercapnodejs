namespace sap.capire.freightorder.attachments.db;

entity FreightOrder {

  @Core.Computed : true
  @Common.Label : 'Transportation Order UUID'
  key TransportationOrderUUID : UUID not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Document'
  TransportationOrder : String(20) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Document Type'
  @Common.Heading : 'Business Document Type'
  @Common.QuickInfo : 'Business Document Type'
  TransportationOrderType : String(4) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Document Category'
  @Common.Heading : 'Business Document Category'
  @Common.QuickInfo : 'Business Document Category'
  TransportationOrderCategory : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Shipping Type'
  TransportationShippingType : String(3) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Transportation Mode'
  TransportationMode : String(2) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'TrM Category'
  @Common.Heading : 'TrM Cat.'
  @Common.QuickInfo : 'Transportation Mode Category'
  TransportationModeCategory : String(1) not null;
  @Common.Label : 'BP GUID'
  @Common.Heading : 'Business Partner GUID'
  @Common.QuickInfo : 'Business Partner GUID'
  CarrierUUID : UUID;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Carrier'
  Carrier : String(10) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'SCAC'
  @Common.Heading : 'Standard Carrier Alpha Code'
  @Common.QuickInfo : 'Standard Carrier Alpha Code'
  StandardCarrierAlphaCode : String(4) not null;
  @Common.Label : 'Executing Carrier UUID'
  TranspOrdExecutingCarrierUUID : UUID;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Executing Carrier'
  TranspOrdExecutingCarrier : String(10) not null;
  @Common.Label : 'BP GUID'
  @Common.Heading : 'Business Partner GUID'
  @Common.QuickInfo : 'Business Partner GUID'
  ShipperUUID : UUID;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Shipper'
  Shipper : String(10) not null;
  @Core.Computed : true
  @Common.Label : 'Address ID'
  @Common.QuickInfo : 'Unique Identifier for Address (APC_V_ADDRESS_ID)'
  ShipperAddressID : String(40) not null;
  @Common.Label : 'BP GUID'
  @Common.Heading : 'Business Partner GUID'
  @Common.QuickInfo : 'Business Partner GUID'
  ConsigneeUUID : UUID;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Ship-to Party'
  Consignee : String(10) not null;
  @Core.Computed : true
  @Common.Label : 'Address ID'
  @Common.QuickInfo : 'Unique Identifier for Address (APC_V_ADDRESS_ID)'
  ConsigneeAddressID : String(40) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Purch. Organization'
  @Common.Heading : 'Purchasing Organization'
  @Common.QuickInfo : 'Purchasing Organization'
  TranspPurgOrg : String(8) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Org. ID'
  @Common.Heading : 'Org. Unit ID'
  @Common.QuickInfo : 'Organizational Unit: External ID'
  TranspPurgOrgExtID : String(20) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Purchasing Group'
  TranspPurgGroup : String(8) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Org. ID'
  @Common.Heading : 'Org. Unit ID'
  @Common.QuickInfo : 'Organizational Unit: External ID'
  TranspPurgGroupExtID : String(20) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Procuring Comp. Cde'
  @Common.Heading : 'Company Code Procuring the Transportation Service'
  @Common.QuickInfo : 'Company Code Procuring the Transportation Service'
  PurgOrgCompanyCode : String(4) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Acct w/ Carrier'
  @Common.Heading : 'Account Number with Carrier'
  @Common.QuickInfo : 'Account Number with the Executing Carrier'
  CarrierAccountNumber : String(14) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Means of Transport'
  TranspMeansOfTransport : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Partner Ref. Number'
  @Common.Heading : 'Partner Reference Number'
  @Common.QuickInfo : 'Partner Reference Number'
  TranspOrdPartnerReference : String(35) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Person Responsible'
  TranspOrdResponsiblePerson : String(12) not null;
  @Core.Computed : true
  @Common.Label : 'Mult. Exec. Parties'
  @Common.Heading : 'Multiple Executing Parties'
  @Common.QuickInfo : 'Multiple Executing Parties'
  TranspOrdHasMltplExectgPties : Boolean not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Inv. Carrier Level'
  @Common.Heading : 'Invoicing Carrier Level'
  @Common.QuickInfo : 'Invoicing Carrier Level'
  TranspOrdInvoicingCarrierLevel : String(2) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Life Cycle Status'
  TranspOrdLifeCycleStatus : String(2) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Subcontr. Status'
  @Common.Heading : 'Subcontracting Status'
  @Common.QuickInfo : 'Subcontracting Status'
  TranspOrderSubcontrgSts : String(2) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Confirm. Status'
  @Common.Heading : 'Confirmation Status'
  @Common.QuickInfo : 'Confirmation Status'
  TransportationOrderConfSts : String(2) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Execution Status'
  TransportationOrderExecSts : String(2) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Goods Mvmt. Status'
  @Common.Heading : 'GM Status'
  @Common.QuickInfo : 'Delivery Goods Movement Status'
  TranspOrdGoodsMovementStatus : String(1) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Whse Proc. Status'
  @Common.Heading : 'Warehouse Processing Status'
  @Common.QuickInfo : 'Warehouse Processing Status'
  TranspOrdWhseProcessingStatus : String(1) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Dangerous Goods Sts'
  @Common.Heading : 'Dngrs Goods Sts'
  @Common.QuickInfo : 'Dangerous Goods Status'
  TranspOrderDngrsGdsSts : String(1) not null;
  @Core.Computed : true
  @Common.Label : 'Execution Block'
  TranspOrdExecutionIsBlocked : Boolean not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Creation Type'
  TransportationOrderCrtnType : String(2) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Created By'
  CreatedByUser : String(12) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Core.Computed : true
  @Common.Label : 'Created on Timestamp'
  @Common.Heading : 'Created On'
  CreationDateTime : DateTime;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Changed By'
  LastChangedByUser : String(12) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Core.Computed : true
  @Common.Label : 'Created on Timestamp'
  @Common.Heading : 'Created On'
  ChangedDateTime : DateTime;
  FreightOrderItems: Composition of many  FreightOrderItem on FreightOrderItems.TransportationOrderUUID = $self.TransportationOrderUUID;    

}


entity FreightOrderItem  {


  @Core.Computed : true
  @Common.Label : 'UUID of TO Item'
  @Common.Heading : 'UUID of Transportation Order Item with Conversion Exit'
  @Common.QuickInfo : 'UUID of Transportation Order Item with Conversion Exit'
  key TransportationOrderItemUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'Transportation Order UUID'
  TransportationOrderUUID : UUID not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Item'
  TranspOrdItem : String(10) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Item Type'
  @Common.Heading : 'Item Type of Transportation Order'
  @Common.QuickInfo : 'Transportation Order Item Type'
  TranspOrdItemType : String(4) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Item Category'
  TranspOrdItemCategory : String(3) not null;
  @Core.Immutable : true
  @Common.Label : 'TO Item Key'
  @Common.Heading : 'Key of Transportation Order Item'
  @Common.QuickInfo : 'Key of Transportation Order Item'
  TranspOrdItemParentItemUUID : UUID not null;
  @Common.Label : 'Item Description'
  TranspOrdItemDesc : String(40) not null;
  @Core.Computed : true
  @Common.Label : 'Main Cargo Item'
  IsMainCargoItem : Boolean not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Sorting ID of Item'
  @Common.Heading : 'Sorting ID of Business Document Item'
  @Common.QuickInfo : 'Sorting ID of Business Document Item'
  TranspOrdItemSorting : String(6) not null;
  @Core.Immutable : true
  @Common.Label : 'TO Stop Key'
  @Common.Heading : 'Key of a Stop of a Transportation Order'
  @Common.QuickInfo : 'Key of a Stop of a Transportation Order'
  SourceStopUUID : UUID;
  @Core.Immutable : true
  @Common.Label : 'TO Stop Key'
  @Common.Heading : 'Key of a Stop of a Transportation Order'
  @Common.QuickInfo : 'Key of a Stop of a Transportation Order'
  DestinationStopUUID : UUID;
  @Core.Computed : true
  @Common.Label : 'Shipper UUID'
  @Common.QuickInfo : 'Shipper Universally Unique Identifier'
  ShipperUUID : UUID;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Shipper'
  Shipper : String(10) not null;
  @Core.Computed : true
  @Common.Label : 'Address ID'
  @Common.QuickInfo : 'Unique Identifier for Address (APC_V_ADDRESS_ID)'
  ShipperAddressID : String(40) not null;
  @Core.Computed : true
  @Common.Label : 'Ship-to Party UUID'
  ConsigneeUUID : UUID;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Ship-to Party'
  Consignee : String(10) not null;
  @Core.Computed : true
  @Common.Label : 'Address ID'
  @Common.QuickInfo : 'Unique Identifier for Address (APC_V_ADDRESS_ID)'
  ConsigneeAddressID : String(40) not null;
  @Core.Computed : true
  @Common.Label : 'Freight Unit UUID'
  FreightUnitUUID : UUID;
  @Core.Computed : true
  @Common.Label : 'NodeID'
  PredecessorTransportationOrder : UUID;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Base Document'
  @Common.Heading : 'Base Business Transaction Document'
  @Common.QuickInfo : 'Base Business Transaction Document'
  TranspBaseDocument : String(35) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Base Document Type'
  @Common.Heading : 'Base Document Type for Business Transaction'
  @Common.QuickInfo : 'Base Document Type for Business Transaction'
  TranspBaseDocumentType : String(5) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Base Doc. Item'
  @Common.Heading : 'Base Document Item for Business Transaction'
  @Common.QuickInfo : 'Base Document Item for Business Transaction'
  TranspBaseDocumentItem : String(10) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Base Doc. Item Type'
  @Common.Heading : 'Base Document Item Type f. Business Transaction'
  @Common.QuickInfo : 'Base Document Item Type Code for Business Transaction'
  TranspBaseDocumentItemType : String(5) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Equipment Group'
  TransportationEquipmentGroup : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Equipment Type'
  TransportationEquipmentType : String(10) not null;
  @Common.Label : 'Shipper-Owned Cont.'
  @Common.Heading : 'Shipper-Owned Container'
  @Common.QuickInfo : 'Shipper-Owned Container'
  TranspEquipmentIsShipperOwned : Boolean not null;
  @Common.Label : 'Registration No.'
  @Common.Heading : 'Registration Number'
  @Common.QuickInfo : 'Registration Number'
  TranspEquipmentPlateNumber : String(20) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Country/Region Key'
  @Common.Heading : 'C/R'
  TranspEquipRegistrationCountry : String(3) not null;
  @Core.Computed : true
  @Measures.Unit : TranspEquipCapacityUnit
  @Common.Label : 'Length'
  TranspEquipCapacityLength : Decimal(13, 3) not null;
  @Core.Computed : true
  @Measures.Unit : TranspEquipCapacityUnit
  @Common.Label : 'Width'
  TranspEquipCapacityWidth : Decimal(13, 3) not null;
  @Core.Computed : true
  @Measures.Unit : TranspEquipCapacityUnit
  @Common.Label : 'Height'
  TranspEquipCapacityHeight : Decimal(13, 3) not null;
  @Common.IsUnit : true
  @Core.Computed : true
  @Common.Label : 'Unit of Measure'
  @Common.QuickInfo : 'Unit of measure for length, width and height'
  TranspEquipCapacityUnit : String(3) not null;
  @Core.Computed : true
  @Measures.Unit : TranspEquipCapacityWeightUnit
  @Common.Label : 'Item Gross Weight'
  @Common.QuickInfo : 'Transportation Order Item Gross Weight'
  TranspEquipCapacityWeight : Decimal(31, 14) not null;
  @Common.IsUnit : true
  @Core.Computed : true
  @Common.Label : 'Gr. Wt UoM'
  @Common.Heading : 'Gross Weight Unit of Measure'
  @Common.QuickInfo : 'Gross Weight Unit of Measure'
  TranspEquipCapacityWeightUnit : String(3) not null;
  @Core.Computed : true
  @Measures.Unit : TranspEquipCapacityVolumeUnit
  @Common.Label : 'Item Gross Volume'
  @Common.QuickInfo : 'Transp Order Item Gross Volume'
  TranspEquipCapacityVolume : Decimal(31, 14) not null;
  @Common.IsUnit : true
  @Core.Computed : true
  @Common.Label : 'Gross Vol. UoM'
  @Common.Heading : 'Gross Volume Unit of Measure'
  @Common.QuickInfo : 'Gross Volume Unit of Measure'
  TranspEquipCapacityVolumeUnit : String(3) not null;
  @Common.Label : 'Package ID'
  TranspOrdItemPackageID : String(35) not null;
  @Core.Computed : true
  @Common.Label : 'Product GUID'
  ProductUUID : UUID;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Product'
  ProductID : String(18) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Material Freight Grp'
  @Common.Heading : 'MatFrtGp'
  @Common.QuickInfo : 'Material Freight Group'
  MaterialFreightGroup : String(8) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Transportation Group'
  TransportationGroup : String(4) not null;
  @Core.Computed : true
  @Measures.Unit : TranspOrdItemTemperatureUnit
  @Common.Label : 'Min. Temperature'
  @Common.Heading : 'Minimum Temperature'
  @Common.QuickInfo : 'Minimum Temperature'
  TranspOrdItmMinTemp : Decimal(7, 2) not null;
  @Core.Computed : true
  @Measures.Unit : TranspOrdItemTemperatureUnit
  @Common.Label : 'Max. Temperature'
  @Common.Heading : 'Maximum Temperature'
  @Common.QuickInfo : 'Maximum Temperature'
  TranspOrdItmMaxTemp : Decimal(7, 2) not null;
  @Common.IsUnit : true
  @Core.Computed : true
  @Common.Label : 'Temperature UoM'
  @Common.Heading : 'Unit of Measure of Temperatu'
  @Common.QuickInfo : 'Unit of Measure of Temperature'
  TranspOrdItemTemperatureUnit : String(3) not null;
  @Measures.Unit : TranspOrdItemQuantityUnit
  @Common.Label : 'Item Quantity'
  @Common.QuickInfo : 'Transportation Order Item Quantity'
  TranspOrdItemQuantity : Decimal(31, 14) not null;
  @Common.IsUnit : true
  @Common.Label : 'Item Quantity Unit'
  @Common.QuickInfo : 'Transportation Order Item Quantity Unit'
  TranspOrdItemQuantityUnit : String(3) not null;
  @Measures.Unit : TranspOrdItemGrossWeightUnit
  @Common.Label : 'Item Gross Weight'
  @Common.QuickInfo : 'Transportation Order Item Gross Weight'
  TranspOrdItemGrossWeight : Decimal(31, 14) not null;
  @Common.IsUnit : true
  @Common.Label : 'Item Gross Weight Unit'
  @Common.QuickInfo : 'Transportation Order Item Gross Weight Unit'
  TranspOrdItemGrossWeightUnit : String(3) not null;
  @Measures.Unit : TranspOrdItemGrossVolumeUnit
  @Common.Label : 'Item Gross Volume'
  @Common.QuickInfo : 'Transp Order Item Gross Volume'
  TranspOrdItemGrossVolume : Decimal(31, 14) not null;
  @Common.IsUnit : true
  @Common.Label : 'Item Gross Volume Unit'
  @Common.QuickInfo : 'Transportation Order Item Gross Volume Unit'
  TranspOrdItemGrossVolumeUnit : String(3) not null;
  @Core.Computed : true
  @Measures.Unit : TranspOrdItemNetWeightUnit
  @Common.Label : 'Item Net Weight'
  @Common.QuickInfo : 'Transportation Order Item Net Weight'
  TranspOrdItemNetWeight : Decimal(31, 14) not null;
  @Common.IsUnit : true
  @Core.Computed : true
  @Common.Label : 'Item Net Weight Unit'
  @Common.QuickInfo : 'Transportation Order Item Net Weight Unit'
  TranspOrdItemNetWeightUnit : String(3) not null;
  
    
}


entity FreightOrderItemAttachments {

 @Common.Label : 'Transportation Order UUID'
  key TransportationOrderUUID : UUID not null;
  key AttachmentNumb: Integer not null;
  CmisObjId : String(36);  


}


