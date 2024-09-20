/* checksum : 2fbe2d8de687586f3948560b61a44bd6 */
@cds.external : true
type CE_FREIGHTORDER_0001.D_FreightUnitAssignParameter {
  @Common.Label : 'Freight Unit UUID'
  FreightUnitUUID : UUID;
};

@cds.external : true
type CE_FREIGHTORDER_0001.D_FreightUnitUnassignParameter {
  @Common.Label : 'Freight Unit UUID'
  FreightUnitUUID : UUID;
};

@cds.external : true
type CE_FREIGHTORDER_0001.SAP__Message {
  code : LargeString not null;
  message : LargeString not null;
  target : LargeString;
  additionalTargets : many LargeString not null;
  transition : Boolean not null;
  @odata.Type : 'Edm.Byte'
  numericSeverity : Integer not null;
  longtextUrl : LargeString;
};

@cds.external : true
@CodeList.CurrencyCodes : {
  Url: '../../../../default/iwbep/common/0001/$metadata',
  CollectionPath: 'Currencies'
}
@CodeList.UnitsOfMeasure : {
  Url: '../../../../default/iwbep/common/0001/$metadata',
  CollectionPath: 'UnitsOfMeasure'
}
@Aggregation.ApplySupported : {
  Transformations: [ 'aggregate', 'groupby', 'filter' ],
  Rollup: #None
}
@Common.ApplyMultiUnitBehaviorForSortingAndFiltering : true
@Capabilities.FilterFunctions : [
  'eq',
  'ne',
  'gt',
  'ge',
  'lt',
  'le',
  'and',
  'or',
  'contains',
  'startswith',
  'endswith',
  'any',
  'all'
]
@Capabilities.SupportedFormats : [ 'application/json', 'application/pdf' ]
@PDF.Features : {
  DocumentDescriptionReference: '../../../../default/iwbep/common/0001/$metadata',
  DocumentDescriptionCollection: 'MyDocumentDescriptions',
  ArchiveFormat: true,
  Border: true,
  CoverPage: true,
  FitToPage: true,
  FontName: true,
  FontSize: true,
  Margin: true,
  Padding: true,
  Signature: true,
  HeaderFooter: true,
  ResultSizeDefault: 20000,
  ResultSizeMaximum: 20000,
  IANATimezoneFormat: true,
  Treeview: true
}
@Capabilities.KeyAsSegmentSupported : true
@Capabilities.AsynchronousRequestsSupported : true
service CE_FREIGHTORDER_0001 {};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order'
@Common.Messages : SAP__Messages
@Capabilities.NavigationRestrictions.RestrictedProperties : [
  {
    NavigationProperty: _FreightOrderBusinessPartner,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _FreightOrderDocumentReference,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _FreightOrderItem,
    InsertRestrictions: { Insertable: true }
  }
]
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [
  '_CarrierAddrDfltRprstn',
  '_ConsigneeAddrDfltRprstn',
  '_ExectgCarrierAddrDfltRprstn',
  '_FreightOrderBusinessPartner',
  '_FreightOrderCharge',
  '_FreightOrderDocumentReference',
  '_FreightOrderEvent',
  '_FreightOrderItem',
  '_FreightOrderStop',
  '_FrtOrdMainBPAddrDfltRprstn',
  '_ShipperAddrDfltRprstn'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
@Core.OptimisticConcurrency : [ 'ChangedDateTime' ]
entity CE_FREIGHTORDER_0001.FreightOrder {
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
  SAP__Messages : many CE_FREIGHTORDER_0001.SAP__Message not null;
  _CarrierAddrDfltRprstn : Association to one CE_FREIGHTORDER_0001.FrtOrdMainBPAddrDfltRprstn {  };
  _ConsigneeAddrDfltRprstn : Association to one CE_FREIGHTORDER_0001.FrtOrdMainBPAddrDfltRprstn {  };
  _ExectgCarrierAddrDfltRprstn : Association to one CE_FREIGHTORDER_0001.FrtOrdMainBPAddrDfltRprstn {  };
  @Common.Composition : true
  _FreightOrderBusinessPartner : Composition of many CE_FREIGHTORDER_0001.FreightOrderBusinessPartner {  };
  @Common.Composition : true
  _FreightOrderCharge : Composition of one CE_FREIGHTORDER_0001.FreightOrderCharge {  };
  @Common.Composition : true
  _FreightOrderDocumentReference : Composition of many CE_FREIGHTORDER_0001.FreightOrderDocumentReference {  };
  @Common.Composition : true
  _FreightOrderEvent : Composition of many CE_FREIGHTORDER_0001.FreightOrderEvent {  };
  @Common.Composition : true
  _FreightOrderItem : Composition of many CE_FREIGHTORDER_0001.FreightOrderItem {  };
  @Common.Composition : true
  _FreightOrderStop : Composition of many CE_FREIGHTORDER_0001.FreightOrderStop {  };
  @Common.Composition : true
  _FrtOrdMainBPAddrDfltRprstn : Composition of many CE_FREIGHTORDER_0001.FrtOrdMainBPAddrDfltRprstn {  };
  _ShipperAddrDfltRprstn : Association to one CE_FREIGHTORDER_0001.FrtOrdMainBPAddrDfltRprstn {  };
} actions {
  action CreateFreightOrder(
    _it : many $self not null,
    @Common.FieldControl : #Mandatory
    @Common.IsUpperCase : true
    @Common.Label : 'Document Type'
    @Common.Heading : 'Business Document Type'
    @Common.QuickInfo : 'Business Document Type'
    TransportationOrderType : String(4) not null,
    @Common.IsUpperCase : true
    @Common.Label : 'Document'
    TransportationOrder : String(20) not null
  ) returns CE_FREIGHTORDER_0001.FreightOrder not null;
  action UnassignFreightUnit(
    _it : $self not null,
    _FreightUnits : many CE_FREIGHTORDER_0001.D_FreightUnitUnassignParameter not null
  );
  action CalculateTransportationCharges(
    _it : $self not null
  );
  action CancelFreightOrder(
    _it : $self not null
  );
  action AssignFreightUnit(
    _it : $self not null,
    // @Common.IsUpperCase : true
    @Common.Label : 'UUID of TO Item'
    @Common.Heading : 'UUID of Transportation Order Item with Conversion Exit'
    @Common.QuickInfo : 'UUID of Transportation Order Item with Conversion Exit'
    TransportationOrderItemUUID : UUID,
    _FreightUnits : many CE_FREIGHTORDER_0001.D_FreightUnitAssignParameter not null
  );
  action ReportEvent(
    _it : $self not null,
    @Common.FieldControl : #Mandatory
    @Common.IsUpperCase : true
    @Common.Label : 'Event'
    @Common.QuickInfo : 'Event Occurring for a Transportation Activity'
    TranspOrdEventCode : String(20) not null,
    @Common.FieldControl : #Mandatory
    // @Common.IsUpperCase : true
    @Common.Label : 'UUID of TO Stop'
    @Common.Heading : 'UUID of Stop of Transport. Order with Conversion Exit'
    @Common.QuickInfo : 'UUID of Stop of Transportation Order with Conversion Exit'
    TransportationOrderStopUUID : UUID,
    @odata.Precision : 0
    @odata.Type : 'Edm.DateTimeOffset'
    // @Common.IsUpperCase : true
    @Common.Label : 'Event Actual Date Time'
    @Common.QuickInfo : 'Transportation Order Event Actual Date Time'
    TranspOrdEvtActualDateTime : DateTime,
    @odata.Precision : 0
    @odata.Type : 'Edm.DateTimeOffset'
    // @Common.IsUpperCase : true
    @Common.Label : 'Event Estimated Date Time'
    @Common.QuickInfo : 'Transportation Order Event Estimated Date Time'
    TranspOrdEvtEstimatedDateTime : DateTime
  );
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Business Partner'
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder', '_FrtOrdBPAddrDfltRprstn' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
@Core.OptimisticConcurrency : [ '_FreightOrder/ChangedDateTime' ]
entity CE_FREIGHTORDER_0001.FreightOrderBusinessPartner {
  @Core.Computed : true
  @Common.Label : 'NodeID'
  key TransportationOrderBusPartUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'Transportation Order UUID'
  TransportationOrderUUID : UUID not null;
  @Common.Label : 'BP GUID'
  @Common.Heading : 'Business Partner GUID'
  @Common.QuickInfo : 'Business Partner GUID'
  BusinessPartnerUUID : UUID;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Ship-to Party'
  BusinessPartner : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Partner Function'
  @Common.Heading : 'Function'
  TranspOrdBizPartnerFunction : String(2) not null;
  @Core.Computed : true
  @Common.Label : 'Address ID'
  @Common.QuickInfo : 'Unique Identifier for Address (APC_V_ADDRESS_ID)'
  TranspOrdBizPartnerAddressID : String(40) not null;
  SAP__Messages : many CE_FREIGHTORDER_0001.SAP__Message not null;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  @Common.Composition : true
  _FrtOrdBPAddrDfltRprstn : Composition of one CE_FREIGHTORDER_0001.FrtOrdBPAddrDfltRprstn {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Charge'
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder', '_FreightOrderChargeItem' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: TranspChrgTotalAmtInDocCrcy,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: TranspChrgTotalAmtInLoclCrcy,
    AllowedExpressions: 'MultiValue'
  }
]
entity CE_FREIGHTORDER_0001.FreightOrderCharge {
  @Core.Computed : true
  @Common.Label : 'Charge Object UUID'
  @Common.QuickInfo : 'Transportation Charge Object UUID'
  key TransportationChargesObjUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'NodeID'
  TransportationOrderUUID : UUID not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Posting Status'
  TranspChargePostingStatus : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Charge Calc. Status'
  @Common.Heading : 'Charge Calculation Status'
  @Common.QuickInfo : 'Charge Calculation Status'
  TranspChargeCalcStatus : String(2) not null;
  @Common.IsCurrency : true
  @Common.IsUpperCase : true
  @Common.Label : 'Document Currency'
  TranspChargeDocumentCurrency : String(3) not null;
  @Measures.ISOCurrency : TranspChargeDocumentCurrency
  @Common.Label : 'Total Amount in Document Currency'
  TranspChrgTotalAmtInDocCrcy : Decimal(precision: 31) not null;
  @Common.IsCurrency : true
  @Common.IsUpperCase : true
  @Common.Label : 'Local Currency'
  TranspChargeLocalCurrency : String(3) not null;
  @Measures.ISOCurrency : TranspChargeLocalCurrency
  @Common.Label : 'Total Amount in Local Currency'
  @Common.QuickInfo : 'Total amount in Local Currency'
  TranspChrgTotalAmtInLoclCrcy : Decimal(precision: 31) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Calc. Date Timestamp'
  @Common.Heading : 'Calculation Date Timestamp'
  @Common.QuickInfo : 'Calculation Date Timestamp'
  TranspChargeCalculationDateTme : DateTime;
  @Common.Label : 'Doc. Exch. Rate Date'
  @Common.Heading : 'Exchange Date for Document Currency Conversion'
  @Common.QuickInfo : 'Exchange Rate Date for Document Currency Conversion'
  ExchangeRateDate : Date;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  @Common.Composition : true
  _FreightOrderChargeItem : Composition of many CE_FREIGHTORDER_0001.FreightOrderChargeItem {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Charge Item'
@Common.Messages : SAP__Messages
@Capabilities.NavigationRestrictions.RestrictedProperties : [
  {
    NavigationProperty: _FrtOrdChrgElement,
    InsertRestrictions: { Insertable: true }
  }
]
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder', '_FreightOrderCharge', '_FrtOrdChrgElement', '_FrtOrdChrgItmExchRate' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
@Core.OptimisticConcurrency : [ '_FreightOrder/ChangedDateTime' ]
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: TranspChrgItmTotAmtInDocCrcy,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: TranspChrgItmTotAmtInLoclCrcy,
    AllowedExpressions: 'MultiValue'
  }
]
entity CE_FREIGHTORDER_0001.FreightOrderChargeItem {
  @Core.Computed : true
  @Common.Label : 'Charge Item UUID'
  @Common.QuickInfo : 'Transportation Charge Item UUID'
  key TranspChargeItemUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'NodeID'
  TransportationChargesObjUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'NodeID'
  TransportationOrderUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'NodeID'
  TranspChargeCalcLevelRefUUID : UUID;
  @Core.Computed : true
  @Common.Label : 'UUID Internal'
  @Common.QuickInfo : 'Internal Universally Unique Identifier'
  TransportationAgreementUUID : UUID;
  @Core.Computed : true
  @Common.Label : 'BP GUID'
  @Common.Heading : 'Business Partner GUID'
  @Common.QuickInfo : 'Business Partner GUID'
  BusinessPartnerUUID : UUID;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Calculation Level'
  TranspChargeCalcLevel : String(1) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Charge Item Invoicing Status'
  @Common.QuickInfo : 'Transportation Charge Item Invoicing Status'
  TranspChargePostingStatus : String(2) not null;
  @Common.IsCurrency : true
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Currency'
  TranspChrgItemDocCurrency : String(3) not null;
  @Core.Computed : true
  @Measures.ISOCurrency : TranspChrgItemDocCurrency
  @Common.Label : 'Total Amount in Document Currency'
  TranspChrgItmTotAmtInDocCrcy : Decimal(precision: 31) not null;
  @Common.IsCurrency : true
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Currency'
  TranspChrgItemLoclCurrency : String(3) not null;
  @Core.Computed : true
  @Measures.ISOCurrency : TranspChrgItemLoclCurrency
  @Common.Label : 'Total Amount in Local Currency'
  @Common.QuickInfo : 'Total amount in Local Currency'
  TranspChrgItmTotAmtInLoclCrcy : Decimal(precision: 31) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Calc. Date Timestamp'
  @Common.Heading : 'Calculation Date Timestamp'
  @Common.QuickInfo : 'Calculation Date Timestamp'
  TranspChargeItemCalcDateTme : DateTime;
  @Core.Computed : true
  @Common.Label : 'Doc. Exch. Rate Date'
  @Common.Heading : 'Exchange Date for Document Currency Conversion'
  @Common.QuickInfo : 'Exchange Rate Date for Document Currency Conversion'
  ExchangeRateDate : Date;
  @Core.Computed : true
  @Common.Label : 'Posting Date'
  TranspChargePostingDate : Date;
  @Core.Computed : true
  @Common.Label : 'Man.-Chgd Calc. Date'
  @Common.Heading : 'Manually-Changed Calc. Date'
  @Common.QuickInfo : 'Manually-Changed Calculation Date'
  TranspChrgCalcDteTmeIsChanged : Boolean not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Terms of Payment'
  @Common.QuickInfo : 'Key for Terms of Payment'
  PaymentTerms : String(4) not null;
  SAP__Messages : many CE_FREIGHTORDER_0001.SAP__Message not null;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  _FreightOrderCharge : Association to one CE_FREIGHTORDER_0001.FreightOrderCharge {  };
  @Common.Composition : true
  _FrtOrdChrgElement : Composition of many CE_FREIGHTORDER_0001.FrtOrdChrgElement {  };
  @Common.Composition : true
  _FrtOrdChrgItmExchRate : Composition of many CE_FREIGHTORDER_0001.FrtOrdChrgItmExchRate {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Document Reference'
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
@Core.OptimisticConcurrency : [ '_FreightOrder/ChangedDateTime' ]
entity CE_FREIGHTORDER_0001.FreightOrderDocumentReference {
  @Core.Computed : true
  @Common.Label : 'NodeID'
  key TransportationOrderDocRefUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'Transportation Order UUID'
  TransportationOrderUUID : UUID not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Business Tr. Doc. ID'
  @Common.Heading : 'Business Transaction Document ID'
  @Common.QuickInfo : 'Bus. Trans. Document ID'
  TranspOrdDocReferenceID : String(35) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Document Type'
  @Common.Heading : 'Document Type for Business Transaction'
  @Common.QuickInfo : 'Document Type for Business Transaction'
  TranspOrdDocReferenceType : String(5) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Item'
  TranspOrdDocReferenceItmID : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'BTD Item Type Code'
  @Common.Heading : 'Business Transaction Document Item Type Code'
  @Common.QuickInfo : 'Business Transaction Document Item Type Code'
  TranspOrdDocReferenceItmType : String(5) not null;
  @Common.Label : 'Business Tr. DocDate'
  @Common.Heading : 'Business Transaction Document Date'
  @Common.QuickInfo : 'Business Transaction Document Date'
  TranspOrdDocumentReferenceDate : Date;
  @Common.Label : 'Issuing Party'
  @Common.Heading : 'Issuing Party of Bus. Trans. Document'
  @Common.QuickInfo : 'Issuing Party of Business Transaction Document'
  TranspOrdDocRefIssuerName : String(40) not null;
  SAP__Messages : many CE_FREIGHTORDER_0001.SAP__Message not null;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Event'
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity CE_FREIGHTORDER_0001.FreightOrderEvent {
  @Core.Computed : true
  @Common.Label : 'NodeID'
  key TransportationOrderEventUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'Transportation Order UUID'
  TransportationOrderUUID : UUID not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Execution'
  @Common.QuickInfo : 'Transportation Order Execution ID'
  TransportationOrderEvent : String(10) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Event'
  @Common.QuickInfo : 'Event Occurring for a Transportation Activity'
  TranspOrdEventCode : String(20) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Core.Computed : true
  @Common.Label : 'Event Actual Date Time'
  @Common.QuickInfo : 'Transportation Order Event Actual Date Time'
  TranspOrdEvtActualDateTime : DateTime;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Event Actual Time Zone'
  @Common.QuickInfo : 'Transp Order Event Actual Time Zone'
  TranspOrdEvtActualDateTimeZone : String(6) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Core.Computed : true
  @Common.Label : 'Event Estimated Date Time'
  @Common.QuickInfo : 'Transportation Order Event Estimated Date Time'
  TranspOrdEvtEstimatedDateTime : DateTime;
  @Core.Computed : true
  @Common.Label : 'Location Additional UUID'
  @Common.QuickInfo : 'Location Additonal UUID (RAW 16)'
  LocationAdditionalUUID : UUID;
  @Core.Computed : true
  @Common.Label : 'UUID of TO Stop'
  @Common.Heading : 'UUID of Stop of Transport. Order with Conversion Exit'
  @Common.QuickInfo : 'UUID of Stop of Transportation Order with Conversion Exit'
  TransportationOrderStopUUID : UUID;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Created By'
  CreatedByUser : String(12) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Core.Computed : true
  @Common.Label : 'Creation Date Time'
  CreationDateTime : DateTime;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Changed By'
  LastChangedByUser : String(12) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Core.Computed : true
  @Common.Label : 'Changed Date Time'
  @Common.QuickInfo : 'Changed On'
  ChangedDateTime : DateTime;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Item'
@Common.Messages : SAP__Messages
@Capabilities.NavigationRestrictions.RestrictedProperties : [
  {
    NavigationProperty: _FreightOrderItemDocRef,
    InsertRestrictions: { Insertable: true }
  },
  {
    NavigationProperty: _FreightOrderItemSeal,
    InsertRestrictions: { Insertable: true }
  }
]
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.RequiredProperties : [ 'TranspOrdItemType', 'TranspOrdItemParentItemUUID' ]
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [
  '_ConsigneeAddrDfltRprstn',
  '_FreightOrder',
  '_FreightOrderItemCommodityCode',
  '_FreightOrderItemDocRef',
  '_FreightOrderItemSeal',
  '_FrtOrdItmMainBPAddrDfltRprstn',
  '_ShipperAddrDfltRprstn'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
@Core.OptimisticConcurrency : [ '_FreightOrder/ChangedDateTime' ]
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: TranspEquipCapacityLength,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: TranspEquipCapacityWidth,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: TranspEquipCapacityHeight,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: TranspEquipCapacityWeight,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: TranspEquipCapacityVolume,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: TranspOrdItmMinTemp,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: TranspOrdItmMaxTemp,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: TranspOrdItemQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: TranspOrdItemGrossWeight,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: TranspOrdItemGrossVolume,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: TranspOrdItemNetWeight,
    AllowedExpressions: 'MultiValue'
  }
]
entity CE_FREIGHTORDER_0001.FreightOrderItem {
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
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Dangerous Goods Sts'
  @Common.Heading : 'Dngrs Goods Sts'
  @Common.QuickInfo : 'Dangerous Goods Status'
  TranspOrdItemDngrsGdsSts : String(1) not null;
  SAP__Messages : many CE_FREIGHTORDER_0001.SAP__Message not null;
  _ConsigneeAddrDfltRprstn : Association to one CE_FREIGHTORDER_0001.FrtOrdItmMainBPAddrDfltRprstn {  };
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  @Common.Composition : true
  _FreightOrderItemCommodityCode : Composition of many CE_FREIGHTORDER_0001.FreightOrderItemCommodityCode {  };
  @Common.Composition : true
  _FreightOrderItemDocRef : Composition of many CE_FREIGHTORDER_0001.FreightOrderItemDocRef {  };
  @Common.Composition : true
  _FreightOrderItemSeal : Composition of many CE_FREIGHTORDER_0001.FreightOrderItemSeal {  };
  @Common.Composition : true
  _FrtOrdItmMainBPAddrDfltRprstn : Composition of many CE_FREIGHTORDER_0001.FrtOrdItmMainBPAddrDfltRprstn {  };
  _ShipperAddrDfltRprstn : Association to one CE_FREIGHTORDER_0001.FrtOrdItmMainBPAddrDfltRprstn {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Item Commodity Code'
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder', '_FreightOrderItem' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity CE_FREIGHTORDER_0001.FreightOrderItemCommodityCode {
  @Core.Computed : true
  @Common.Label : 'TranspOrd Item Commodity Code'
  @Common.QuickInfo : 'Transportation Order Item Commodity Code'
  key TranspOrdItemCommodityCodeUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'UUID of TO Item'
  @Common.Heading : 'UUID of Transportation Order Item with Conversion Exit'
  @Common.QuickInfo : 'UUID of Transportation Order Item with Conversion Exit'
  TransportationOrderItemUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'Transportation Order UUID'
  TransportationOrderUUID : UUID not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Commodity Code'
  TranspOrdItemCommodityCode : String(30) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Numbering Scheme'
  @Common.Heading : 'Numbering Scheme for Commodity Codes for Transportation'
  @Common.QuickInfo : 'Numbering Scheme for Commodity Codes for Transportation'
  TrOrdItmCmmdtyCodeNmbrngSchm : String(10) not null;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  _FreightOrderItem : Association to one CE_FREIGHTORDER_0001.FreightOrderItem {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Item Document Reference'
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder', '_FreightOrderItem' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
@Core.OptimisticConcurrency : [ '_FreightOrder/ChangedDateTime' ]
entity CE_FREIGHTORDER_0001.FreightOrderItemDocRef {
  @Core.Computed : true
  @Common.Label : 'TranspOrd Item Document Reference'
  @Common.Heading : 'Transportation Order Item Document Reference'
  @Common.QuickInfo : 'Transportation Order Item Document Reference'
  key TranspOrdItemDocReferenceUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'UUID of TO Item'
  @Common.Heading : 'UUID of Transportation Order Item with Conversion Exit'
  @Common.QuickInfo : 'UUID of Transportation Order Item with Conversion Exit'
  TransportationOrderItemUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'Transportation Order UUID'
  TransportationOrderUUID : UUID not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Business Tr. Doc. ID'
  @Common.Heading : 'Business Transaction Document ID'
  @Common.QuickInfo : 'Bus. Trans. Document ID'
  TranspOrdItemDocReferenceID : String(35) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Document Type'
  @Common.Heading : 'Document Type for Business Transaction'
  @Common.QuickInfo : 'Document Type for Business Transaction'
  TranspOrdItemDocReferenceType : String(5) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Item'
  TranspOrdItmDocReferenceItemID : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'BTD Item Type Code'
  @Common.Heading : 'Business Transaction Document Item Type Code'
  @Common.QuickInfo : 'Business Transaction Document Item Type Code'
  TranspOrdItmDocRefItemType : String(5) not null;
  @Common.Label : 'Business Tr. DocDate'
  @Common.Heading : 'Business Transaction Document Date'
  @Common.QuickInfo : 'Business Transaction Document Date'
  TranspOrdItmDocRefDate : Date;
  @Common.Label : 'Issuing Party'
  @Common.Heading : 'Issuing Party of Bus. Trans. Document'
  @Common.QuickInfo : 'Issuing Party of Business Transaction Document'
  TranspOrdItemDocRefIssuerName : String(40) not null;
  SAP__Messages : many CE_FREIGHTORDER_0001.SAP__Message not null;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  _FreightOrderItem : Association to one CE_FREIGHTORDER_0001.FreightOrderItem {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Item Seal'
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder', '_FreightOrderItem' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
@Core.OptimisticConcurrency : [ '_FreightOrder/ChangedDateTime' ]
entity CE_FREIGHTORDER_0001.FreightOrderItemSeal {
  @Core.Computed : true
  @Common.Label : 'Transportation Order Item Seal UUID'
  key TranspOrdItemSealUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'UUID of TO Item'
  @Common.Heading : 'UUID of Transportation Order Item with Conversion Exit'
  @Common.QuickInfo : 'UUID of Transportation Order Item with Conversion Exit'
  TransportationOrderItemUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'Transportation Order UUID'
  TransportationOrderUUID : UUID not null;
  @Common.Label : 'Seal Number'
  TranspOrdItemSealNumber : String(15) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Created on Timestamp'
  @Common.Heading : 'Created On'
  TranspOrdItemSealingDateTime : DateTime;
  SAP__Messages : many CE_FREIGHTORDER_0001.SAP__Message not null;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  _FreightOrderItem : Association to one CE_FREIGHTORDER_0001.FreightOrderItem {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Stage'
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [
  '_ExectgCarrierAddrDfltRprstn',
  '_FreightOrder',
  '_FreightOrderStop',
  '_FrtOrdStageBPAddrDfltRprstn',
  '_InvcgCarrierAddrDfltRprstn'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
@Core.OptimisticConcurrency : [ '_FreightOrder/ChangedDateTime' ]
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: TranspOrdStageDistance,
    AllowedExpressions: 'MultiValue'
  }
]
entity CE_FREIGHTORDER_0001.FreightOrderStage {
  @Core.Computed : true
  @Common.Label : 'NodeID'
  key TransportationOrderStageUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'Transportation Order UUID'
  TransportationOrderUUID : UUID not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Successor'
  TransportationOrderStage : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Stage Type'
  TranspOrdStageType : String(3) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Stage Category'
  TranspOrdStageCategory : String(1) not null;
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
  @Common.IsUpperCase : true
  @Common.Label : 'Stage Level'
  @Common.Heading : 'Stage Invoicing Carrier Level'
  @Common.QuickInfo : 'Stage Invoicing Carrier Level'
  TranspOrdStgeInvcgCarrLvl : String(2) not null;
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
  TranspOrdStageSCACCode : String(4) not null;
  @Core.Computed : true
  @Common.Label : 'InvoicingCarrierUUID'
  @Common.QuickInfo : 'TransportationOrderStageInvoicingCarrier UUID'
  TranspOrdStgeInvcgCarrUUID : UUID;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Invoicing Carrier'
  TranspOrdStageInvoicingCarrier : String(10) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'SCAC'
  @Common.Heading : 'Standard Carrier Alpha Code'
  @Common.QuickInfo : 'Standard Carrier Alpha Code'
  TranspOrdStgeInvcgSCACCode : String(4) not null;
  @Measures.Unit : TranspOrdStageDistanceUnit
  @Common.Label : 'Stage Distance'
  @Common.QuickInfo : 'Transportation Order Stage Distance'
  TranspOrdStageDistance : Decimal(28, 6) not null;
  @Common.IsUnit : true
  @Core.Computed : true
  @Common.Label : 'Stage Distance Unit'
  @Common.QuickInfo : 'Transportation Order Stage Distance Unit'
  TranspOrdStageDistanceUnit : String(3) not null;
  @Common.Label : 'Transp. Dur. (Days)'
  @Common.Heading : 'Trsp. Dur.'
  @Common.QuickInfo : 'Transportation Time of a Transportation Lane (in hhmmss)'
  TranspOrdStageNetDuration : Decimal(precision: 11) not null;
  @Core.Computed : true
  @Common.Label : 'NodeID'
  TranspOrdStageSrceStopUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'TO Stop Key'
  @Common.Heading : 'Key of a Stop of a Transportation Order'
  @Common.QuickInfo : 'Key of a Stop of a Transportation Order'
  TranspOrdStageDestStopUUID : UUID;
  SAP__Messages : many CE_FREIGHTORDER_0001.SAP__Message not null;
  _ExectgCarrierAddrDfltRprstn : Association to one CE_FREIGHTORDER_0001.FrtOrdStgeBPAddrDfltRprstn {  };
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  _FreightOrderStop : Association to one CE_FREIGHTORDER_0001.FreightOrderStop {  };
  @Common.Composition : true
  _FrtOrdStageBPAddrDfltRprstn : Composition of many CE_FREIGHTORDER_0001.FrtOrdStgeBPAddrDfltRprstn {  };
  _InvcgCarrierAddrDfltRprstn : Association to one CE_FREIGHTORDER_0001.FrtOrdStgeBPAddrDfltRprstn {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Stop'
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder', '_FreightOrderStage', '_FrtOrdStopLocAddrDfltRprstn' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
@Core.OptimisticConcurrency : [ '_FreightOrder/ChangedDateTime' ]
entity CE_FREIGHTORDER_0001.FreightOrderStop {
  @Core.Computed : true
  @Common.Label : 'NodeID'
  key TransportationOrderStopUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'Transportation Order UUID'
  TransportationOrderUUID : UUID not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Stop'
  TransportationOrderStop : String(10) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Stop Category'
  TranspOrdStopCategory : String(1) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Role of the Stop'
  TranspOrdStopRole : String(2) not null;
  @Common.Label : 'Location Additional UUID'
  @Common.QuickInfo : 'Location Additonal UUID (RAW 16)'
  LocationAdditionalUUID : UUID;
  @Core.Computed : true
  @Common.Label : 'Location'
  LocationId : String(20) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'UN/LOCODE'
  @Common.QuickInfo : 'United Nations Code for Trade and Transport Locations'
  LocationUNCode : String(5) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'IATA: Location'
  @Common.Heading : 'IATA: Loc.'
  @Common.QuickInfo : 'International Air Transport Association: Location'
  LocationIATACode : String(3) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Created on Timestamp'
  @Common.Heading : 'Created On'
  TranspOrdStopPlanTranspDteTme : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Core.Computed : true
  @Common.Label : 'Actual Event Date/Time'
  @Common.QuickInfo : 'Actual Date/Time of Event'
  TranspOrdStopDteTme : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Created on Timestamp'
  @Common.Heading : 'Created On'
  TranspOrdStopApptStrtDteTme : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Created on Timestamp'
  @Common.Heading : 'Created On'
  TranspOrdStopApptEndDteTme : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Created on Timestamp'
  @Common.Heading : 'Created On'
  TranspStopCarrConfStrtDteTme : DateTime;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Common.Label : 'Created on Timestamp'
  @Common.Heading : 'Created On'
  TranspStopCarrConfEndDteTme : DateTime;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Stop Position'
  @Common.Heading : 'Stop Position in Transportation Stop Sequence'
  @Common.QuickInfo : 'Stop Position in Transportation Stop Sequence'
  TranspOrdStopSequencePosition : String(1) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Handling Exec. Sts'
  @Common.Heading : 'Handling Execution Status at Stop Level'
  @Common.QuickInfo : 'Handling Execution Status at Stop Level'
  TranspOrdStopHndlgExecStatus : String(2) not null;
  @Core.Computed : true
  @Common.Label : 'Execution Block'
  TranspOrdStopExecIsBlocked : Boolean not null;
  SAP__Messages : many CE_FREIGHTORDER_0001.SAP__Message not null;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  @Common.Composition : true
  _FreightOrderStage : Composition of many CE_FREIGHTORDER_0001.FreightOrderStage {  };
  @Common.Composition : true
  _FrtOrdStopLocAddrDfltRprstn : Composition of one CE_FREIGHTORDER_0001.FrtOrdStopLocAddrDfltRprstn {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order BP Addr Addl Rprstn'
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder', '_FrtOrdBPAddrDfltRprstn' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity CE_FREIGHTORDER_0001.FrtOrdBPAddrAddlRprstn {
  @Core.Computed : true
  @Common.Label : 'NodeID'
  key TransportationOrderBusPartUUID : UUID not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Address Version'
  @Common.Heading : 'Version'
  @Common.QuickInfo : 'Version ID for International Addresses'
  key AddressRepresentationCode : String(1) not null;
  @Core.Computed : true
  @Common.Label : 'Transportation Order UUID'
  TransportationOrderUUID : UUID not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Address Number'
  @Common.Heading : 'Addr. No.'
  AddressID : String(10) not null;
  @Common.Label : 'Full Name'
  @Common.QuickInfo : 'Full Name of Person'
  AddresseeFullName : String(80) not null;
  @Common.Label : 'City'
  CityName : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Postal Code'
  @Common.Heading : 'Post. Code'
  @Common.QuickInfo : 'City Postal Code'
  PostalCode : String(10) not null;
  @Common.Label : 'Street'
  StreetName : String(60) not null;
  @Common.Label : 'House Number'
  @Common.Heading : 'House No.'
  HouseNumber : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Country/Region Key'
  @Common.Heading : 'C/R'
  Country : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Region'
  @Common.Heading : 'Rg'
  @Common.QuickInfo : 'Region (State, Province, County)'
  Region : String(3) not null;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  _FrtOrdBPAddrDfltRprstn : Association to one CE_FREIGHTORDER_0001.FrtOrdBPAddrDfltRprstn {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order BP Addr Dflt Rprstn'
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder', '_FreightOrderBusinessPartner', '_FrtOrdBPAddrAddlRprstn' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: EmailAddress,
    AllowedExpressions: 'MultiValue'
  }
]
entity CE_FREIGHTORDER_0001.FrtOrdBPAddrDfltRprstn {
  @Core.Computed : true
  @Common.Label : 'NodeID'
  key TransportationOrderBusPartUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'Transportation Order UUID'
  TransportationOrderUUID : UUID not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Address Number'
  @Common.Heading : 'Addr. No.'
  AddressID : String(10) not null;
  @Common.Label : 'Full Name'
  @Common.QuickInfo : 'Full Name of Person'
  AddresseeFullName : String(80) not null;
  @Common.Label : 'City'
  CityName : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Postal Code'
  @Common.Heading : 'Post. Code'
  @Common.QuickInfo : 'City Postal Code'
  PostalCode : String(10) not null;
  @Common.Label : 'Street'
  StreetName : String(60) not null;
  @Common.Label : 'House Number'
  @Common.Heading : 'House No.'
  HouseNumber : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Country/Region Key'
  @Common.Heading : 'C/R'
  Country : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Region'
  @Common.Heading : 'Rg'
  @Common.QuickInfo : 'Region (State, Province, County)'
  Region : String(3) not null;
  @Common.Label : 'Email Address'
  EmailAddress : String(241) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Telephone Number'
  @Common.QuickInfo : 'Complete Number: Dialing Code+Number+Extension'
  InternationalPhoneNumber : String(30) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Telephone Number'
  @Common.QuickInfo : 'Complete Number: Dialing Code+Number+Extension'
  InternationalMobilePhoneNumber : String(30) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Fax Number'
  @Common.QuickInfo : 'Complete Number: Dialing Code+Number+Extension'
  InternationalFaxNumber : String(30) not null;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  _FreightOrderBusinessPartner : Association to one CE_FREIGHTORDER_0001.FreightOrderBusinessPartner {  };
  @Common.Composition : true
  _FrtOrdBPAddrAddlRprstn : Composition of many CE_FREIGHTORDER_0001.FrtOrdBPAddrAddlRprstn {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Charge Calculation Base'
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder', '_FrtOrdChrgElement' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
@Core.OptimisticConcurrency : [ '_FreightOrder/ChangedDateTime' ]
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: TranspScaleItemQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: TranspScaleItemAmount,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: TranspDataSourceQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: TranspDataSourceAmount,
    AllowedExpressions: 'MultiValue'
  }
]
entity CE_FREIGHTORDER_0001.FrtOrdChrgCalcBase {
  @Core.Computed : true
  @Common.Label : 'NodeID'
  key TranspChrgCalcBaseUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'NodeID'
  TranspChargeItemElementUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'NodeID'
  TransportationOrderUUID : UUID not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Calc. Base'
  @Common.Heading : 'Calculation Base'
  @Common.QuickInfo : 'Calculation Base'
  TranspChrgCalculationBase : String(15) not null;
  @Common.IsUnit : true
  @Core.Computed : true
  @Common.Label : 'UoM'
  @Common.Heading : 'Unit of Measure'
  @Common.QuickInfo : 'Unit of Measure'
  TranspScaleItemQuantityUnit : String(3) not null;
  @Core.Computed : true
  @Measures.Unit : TranspScaleItemQuantityUnit
  @Common.Label : 'Quantity'
  TranspScaleItemQuantity : Decimal(31, 14) not null;
  @Common.IsCurrency : true
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Currency (SAP-Internal)'
  @Common.Heading : 'Curr.'
  TranspScaleItemCurrency : String(3) not null;
  @Core.Computed : true
  @Measures.ISOCurrency : TranspScaleItemCurrency
  @Common.Label : 'Scale Item Amount'
  TranspScaleItemAmount : Decimal(precision: 31) not null;
  @Core.Computed : true
  @Common.Label : 'Non-Numeric Calc Qty'
  @Common.Heading : 'Non-Numeric Calculation Quantity'
  @Common.QuickInfo : 'Non-Numeric Calculation Quantity'
  TranspScaleItemValueChar : String(255) not null;
  @Common.IsUnit : true
  @Common.Label : 'UoM'
  @Common.Heading : 'Unit of Measure'
  @Common.QuickInfo : 'Unit of Measure'
  TranspDataSourceQtyUnit : String(3) not null;
  @Measures.Unit : TranspDataSourceQtyUnit
  @Common.Label : 'Quantity'
  TranspDataSourceQuantity : Decimal(31, 14) not null;
  @Common.IsCurrency : true
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Currency (SAP-Internal)'
  @Common.Heading : 'Curr.'
  TranspDataSourceCurrency : String(3) not null;
  @Core.Computed : true
  @Measures.ISOCurrency : TranspDataSourceCurrency
  @Common.Label : 'Data Source Amount'
  TranspDataSourceAmount : Decimal(precision: 31) not null;
  @Core.Computed : true
  @Common.Label : 'Non-Numeric Calc Qty'
  @Common.Heading : 'Non-Numeric Calculation Quantity'
  @Common.QuickInfo : 'Non-Numeric Calculation Quantity'
  TranspDataSourceValueChar : String(255) not null;
  SAP__Messages : many CE_FREIGHTORDER_0001.SAP__Message not null;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  _FrtOrdChrgElement : Association to one CE_FREIGHTORDER_0001.FrtOrdChrgElement {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Charge Calculation Rule'
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder', '_FrtOrdChrgElement' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
@Core.OptimisticConcurrency : [ '_FreightOrder/ChangedDateTime' ]
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: TranspRateCalcRuleQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: TranspChrgDataSourceQuantity,
    AllowedExpressions: 'MultiValue'
  }
]
entity CE_FREIGHTORDER_0001.FrtOrdChrgCalcRule {
  @Core.Computed : true
  @Common.Label : 'NodeID'
  key TranspChrgCalcRuleUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'NodeID'
  TranspChargeItemElementUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'NodeID'
  TransportationOrderUUID : UUID not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Calc. Base'
  @Common.Heading : 'Calculation Base'
  @Common.QuickInfo : 'Calculation Base'
  TranspChrgCalculationBase : String(15) not null;
  @Common.IsUnit : true
  @Common.Label : 'UoM'
  @Common.Heading : 'Unit of Measure'
  @Common.QuickInfo : 'Unit of Measure'
  TranspRateCalcRuleQtyUnit : String(3) not null;
  @Measures.Unit : TranspRateCalcRuleQtyUnit
  @Common.Label : 'Quantity'
  TranspRateCalcRuleQuantity : Decimal(31, 14) not null;
  @Measures.Unit : TranspRateCalcRuleQtyUnit
  @Common.Label : 'Quantity'
  TranspChrgDataSourceQuantity : Decimal(31, 14) not null;
  SAP__Messages : many CE_FREIGHTORDER_0001.SAP__Message not null;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  _FrtOrdChrgElement : Association to one CE_FREIGHTORDER_0001.FrtOrdChrgElement {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Charge Element'
@Common.Messages : SAP__Messages
@Capabilities.NavigationRestrictions.RestrictedProperties : [
  {
    NavigationProperty: _FrtOrdChrgCalcRule,
    InsertRestrictions: { Insertable: true }
  }
]
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.RequiredProperties : [ 'TranspChargeType' ]
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [
  '_FreightOrder',
  '_FreightOrderChargeItem',
  '_FrtOrdChrgCalcBase',
  '_FrtOrdChrgCalcRule',
  '_FrtOrdChrgElmntExchRate'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
@Core.OptimisticConcurrency : [ '_FreightOrder/ChangedDateTime' ]
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: TranspChargeCalcAmtInCalcCrcy,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: TranspRateAmountInRateCrcy,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: TransportationRateAmountPct,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: TranspChrgAmountInDocCurrency,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property: TranspChrgAmountInLoclCurrency,
    AllowedExpressions: 'MultiValue'
  }
]
entity CE_FREIGHTORDER_0001.FrtOrdChrgElement {
  @Core.Computed : true
  @Common.Label : 'Charge Item Element UUID'
  @Common.QuickInfo : 'Transportation Charge Item Element UUID'
  key TranspChargeItemElementUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'NodeID'
  TranspChargeItemUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'NodeID'
  TransportationOrderUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'Rate UUID Internal'
  @Common.QuickInfo : 'Rate UUID'
  TransportationRateUUID : UUID;
  @Core.Computed : true
  @Common.IsDigitSequence : true
  @Common.Label : 'Calc. Sheet Line No.'
  @Common.Heading : 'Calculation Sheet Line Number'
  @Common.QuickInfo : 'Calculation Sheet Line Number'
  TranspCalculationSheetItem : String(6) not null;
  @Core.Immutable : true
  @Common.IsUpperCase : true
  @Common.Label : 'Charge Type'
  TranspChargeType : String(15) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Calc. Resol. Base'
  @Common.Heading : 'Calculation Resolution Base'
  @Common.QuickInfo : 'Calculation Resolution Base'
  TranspCalcResolutionBase : String(20) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Calc. Date Ty.'
  @Common.Heading : 'Calculation Date Type'
  @Common.QuickInfo : 'Calculation Date Type'
  TranspCalculationDateType : String(10) not null;
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  @Core.Computed : true
  @Common.Label : 'Calc. Date Timestamp'
  @Common.Heading : 'Calculation Date Timestamp'
  @Common.QuickInfo : 'Calculation Date Timestamp'
  TranspChargeCalculationDateTme : DateTime;
  @Common.IsCurrency : true
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Calculated Amount Currency'
  @Common.QuickInfo : 'Transportation Charge Calculated Amount Currency'
  TranspChargeCalculationCrcy : String(3) not null;
  @Core.Computed : true
  @Measures.ISOCurrency : TranspChargeCalculationCrcy
  @Common.Label : 'Transportation Charge Calculated Amount'
  TranspChargeCalcAmtInCalcCrcy : Decimal(precision: 31) not null;
  @Common.IsCurrency : true
  @Common.IsUpperCase : true
  @Common.Label : 'Rate Amount Currency'
  TransportationRateCurrency : String(3) not null;
  @Measures.ISOCurrency : TransportationRateCurrency
  @Common.Label : 'Rate Amount in Rate Currency'
  TranspRateAmountInRateCrcy : Decimal(precision: 31) not null;
  @Common.IsUnit : true
  @Common.Label : 'UoM'
  @Common.Heading : 'Unit of Measure'
  @Common.QuickInfo : 'Unit of Measure'
  TransportationRatePctUnit : String(3) not null;
  @Measures.Unit : TransportationRatePctUnit
  @Common.Label : 'Percentage Rate Amount'
  TransportationRateAmountPct : Decimal(31, 2) not null;
  @Core.Computed : true
  @Common.Label : 'Man.-Chgd Rate Amt'
  @Common.Heading : 'Manually-Changed Rate Amount'
  @Common.QuickInfo : 'Manually-Changed Rate Amount'
  TranspRateAmtIsManuallyChanged : Boolean not null;
  @Core.Computed : true
  @Common.IsDigitSequence : true
  @Common.Label : 'Ref.-From Line No.'
  @Common.Heading : 'Reference-From Line Number'
  @Common.QuickInfo : 'Reference-From Line Number'
  TranspChrgLineNumber : String(6) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Ref.-From Line No.'
  @Common.Heading : 'Reference-From Line Number'
  @Common.QuickInfo : 'Reference-From Line Number'
  TranspChrgRefFromLineNumber : String(6) not null;
  @Common.IsDigitSequence : true
  @Common.Label : 'Ref.-To Line No.'
  @Common.Heading : 'Reference-To Line Number'
  @Common.QuickInfo : 'Reference-To Line Number'
  TranspChrgRefToLineNumber : String(6) not null;
  @Common.IsCurrency : true
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Document Currency'
  TranspChargeDocumentCurrency : String(3) not null;
  @Core.Computed : true
  @Measures.ISOCurrency : TranspChargeDocumentCurrency
  @Common.Label : 'Final Amount in Document Currency'
  TranspChrgAmountInDocCurrency : Decimal(precision: 31) not null;
  @Common.IsCurrency : true
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Charge Local Currency'
  @Common.QuickInfo : 'Transportation Charge Local Currency'
  TranspChargeLocalCurrency : String(3) not null;
  @Core.Computed : true
  @Measures.ISOCurrency : TranspChargeLocalCurrency
  @Common.Label : 'Final Amount In Local Currency'
  TranspChrgAmountInLoclCurrency : Decimal(precision: 31) not null;
  @Core.Computed : true
  @Common.Label : 'UUID Internal'
  @Common.QuickInfo : 'Internal Universally Unique Identifier'
  TranspIndexRateTableUUID : UUID;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Rate Table'
  TransportationRate : String(20) not null;
  @Core.Computed : true
  @Common.Label : 'Mandatory'
  TranspChargeIsMandatory : Boolean not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Dim. Wt Prof.'
  @Common.Heading : 'Dimensional Weight Profile'
  @Common.QuickInfo : 'Dimensional Weight Profile'
  TranspDimnWeightProfile : String(10) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Calc. Method Type'
  @Common.Heading : 'Calculation Method Type'
  @Common.QuickInfo : 'Calculation Method Type'
  TranspCalculationMethodType : String(1) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Calc. Method'
  @Common.Heading : 'Calculation Method'
  @Common.QuickInfo : 'Calculation Method'
  TranspCalculationMethodName : String(20) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Charge Calc. Status'
  @Common.Heading : 'Charge Calculation Status'
  @Common.QuickInfo : 'Charge Calculation Status'
  TranspChargeCalcStatus : String(2) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Invoicing Status'
  TranspChargePostingStatus : String(2) not null;
  SAP__Messages : many CE_FREIGHTORDER_0001.SAP__Message not null;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  _FreightOrderChargeItem : Association to one CE_FREIGHTORDER_0001.FreightOrderChargeItem {  };
  @Common.Composition : true
  _FrtOrdChrgCalcBase : Composition of many CE_FREIGHTORDER_0001.FrtOrdChrgCalcBase {  };
  @Common.Composition : true
  _FrtOrdChrgCalcRule : Composition of many CE_FREIGHTORDER_0001.FrtOrdChrgCalcRule {  };
  @Common.Composition : true
  _FrtOrdChrgElmntExchRate : Composition of many CE_FREIGHTORDER_0001.FrtOrdChrgElmntExchRate {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Charge Element Exch. Rate'
@Common.Messages : SAP__Messages
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder', '_FrtOrdChrgElement' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
@Core.OptimisticConcurrency : [ '_FreightOrder/ChangedDateTime' ]
entity CE_FREIGHTORDER_0001.FrtOrdChrgElmntExchRate {
  @Core.Computed : true
  @Common.Label : 'NodeID'
  key TranspChrgExchangeRateUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'NodeID'
  TranspChargeItemElementUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'NodeID'
  TransportationOrderUUID : UUID not null;
  @Common.IsCurrency : true
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Currency (SAP-Internal)'
  @Common.Heading : 'Curr.'
  SourceCurrency : String(3) not null;
  @Common.IsCurrency : true
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Currency (SAP-Internal)'
  @Common.Heading : 'Curr.'
  TargetCurrency : String(3) not null;
  @Common.Label : 'Exchange Rate'
  TranspChrgExchangeRate : Decimal(28, 14) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Exchange Rate Type'
  TranspChrgExchangeRateType : String(4) not null;
  @Common.Label : 'Exch Rate Quote Dte'
  @Common.Heading : 'Exchange Rate Quote Date'
  @Common.QuickInfo : 'Exchange Rate Quote Date'
  ExchangeRateDate : Date;
  @Core.Computed : true
  @Common.Label : 'Man.-Chgd Ex Rt Date'
  @Common.Heading : 'Manually-Changed Exchange Rate Date'
  @Common.QuickInfo : 'Manually-Changed Exchange Rate Date'
  TranspExchRateDateIsMnllyChgd : Boolean not null;
  @Core.Computed : true
  @Common.Label : 'Boolean Variable (X = True, - = False, Space = Unknown)'
  TranspExchRateIsManuallyChgd : Boolean not null;
  SAP__Messages : many CE_FREIGHTORDER_0001.SAP__Message not null;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  _FrtOrdChrgElement : Association to one CE_FREIGHTORDER_0001.FrtOrdChrgElement {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Charge Item Exchange Rate'
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder', '_FreightOrderChargeItem' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity CE_FREIGHTORDER_0001.FrtOrdChrgItmExchRate {
  @Core.Computed : true
  @Common.Label : 'NodeID'
  key TranspChrgExchangeRateUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'NodeID'
  TranspChargeItemUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'NodeID'
  TransportationOrderUUID : UUID not null;
  @Common.IsCurrency : true
  @Common.IsUpperCase : true
  @Common.Label : 'Currency (SAP-Internal)'
  @Common.Heading : 'Curr.'
  SourceCurrency : String(3) not null;
  @Common.IsCurrency : true
  @Common.IsUpperCase : true
  @Common.Label : 'Currency (SAP-Internal)'
  @Common.Heading : 'Curr.'
  TargetCurrency : String(3) not null;
  @Common.Label : 'Exchange Rate'
  TranspChrgExchangeRate : Decimal(28, 14) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Exchange Rate Type'
  TranspChrgExchangeRateType : String(4) not null;
  @Common.Label : 'Exch Rate Quote Dte'
  @Common.Heading : 'Exchange Rate Quote Date'
  @Common.QuickInfo : 'Exchange Rate Quote Date'
  ExchangeRateDate : Date;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  _FreightOrderChargeItem : Association to one CE_FREIGHTORDER_0001.FreightOrderChargeItem {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Itm Main BP Addr Ad Rpn'
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder', '_FrtOrdItmMainBPAddrDfltRprstn' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity CE_FREIGHTORDER_0001.FrtOrdItmMainBPAddrAddlRprstn {
  @Core.Computed : true
  @Common.Label : 'UUID of TO Item'
  @Common.Heading : 'UUID of Transportation Order Item with Conversion Exit'
  @Common.QuickInfo : 'UUID of Transportation Order Item with Conversion Exit'
  key TransportationOrderItemUUID : UUID not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Partner Function'
  @Common.Heading : 'Function'
  key TranspOrdBizPartnerFunction : String(2) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Address Version'
  @Common.Heading : 'Version'
  @Common.QuickInfo : 'Version ID for International Addresses'
  key AddressRepresentationCode : String(1) not null;
  @Core.Computed : true
  @Common.Label : 'Transportation Order UUID'
  TransportationOrderUUID : UUID not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Address Number'
  @Common.Heading : 'Addr. No.'
  AddressID : String(10) not null;
  @Common.Label : 'Full Name'
  @Common.QuickInfo : 'Full Name of Person'
  AddresseeFullName : String(80) not null;
  @Common.Label : 'City'
  CityName : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Postal Code'
  @Common.Heading : 'Post. Code'
  @Common.QuickInfo : 'City Postal Code'
  PostalCode : String(10) not null;
  @Common.Label : 'Street'
  StreetName : String(60) not null;
  @Common.Label : 'House Number'
  @Common.Heading : 'House No.'
  HouseNumber : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Country/Region Key'
  @Common.Heading : 'C/R'
  Country : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Region'
  @Common.Heading : 'Rg'
  @Common.QuickInfo : 'Region (State, Province, County)'
  Region : String(3) not null;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  _FrtOrdItmMainBPAddrDfltRprstn : Association to one CE_FREIGHTORDER_0001.FrtOrdItmMainBPAddrDfltRprstn {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Itm Main BP Addr Df Rpn'
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder', '_FreightOrderItem', '_FrtOrdItmMainBPAddrAddlRprstn' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: EmailAddress,
    AllowedExpressions: 'MultiValue'
  }
]
entity CE_FREIGHTORDER_0001.FrtOrdItmMainBPAddrDfltRprstn {
  @Core.Computed : true
  @Common.Label : 'UUID of TO Item'
  @Common.Heading : 'UUID of Transportation Order Item with Conversion Exit'
  @Common.QuickInfo : 'UUID of Transportation Order Item with Conversion Exit'
  key TransportationOrderItemUUID : UUID not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Partner Function'
  @Common.Heading : 'Function'
  key TranspOrdBizPartnerFunction : String(2) not null;
  @Core.Computed : true
  @Common.Label : 'Transportation Order UUID'
  TransportationOrderUUID : UUID not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Address Number'
  @Common.Heading : 'Addr. No.'
  AddressID : String(10) not null;
  @Common.Label : 'Full Name'
  @Common.QuickInfo : 'Full Name of Person'
  AddresseeFullName : String(80) not null;
  @Common.Label : 'City'
  CityName : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Postal Code'
  @Common.Heading : 'Post. Code'
  @Common.QuickInfo : 'City Postal Code'
  PostalCode : String(10) not null;
  @Common.Label : 'Street'
  StreetName : String(60) not null;
  @Common.Label : 'House Number'
  @Common.Heading : 'House No.'
  HouseNumber : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Country/Region Key'
  @Common.Heading : 'C/R'
  Country : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Region'
  @Common.Heading : 'Rg'
  @Common.QuickInfo : 'Region (State, Province, County)'
  Region : String(3) not null;
  @Common.Label : 'Email Address'
  EmailAddress : String(241) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Telephone Number'
  @Common.QuickInfo : 'Complete Number: Dialing Code+Number+Extension'
  InternationalPhoneNumber : String(30) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Telephone Number'
  @Common.QuickInfo : 'Complete Number: Dialing Code+Number+Extension'
  InternationalMobilePhoneNumber : String(30) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Fax Number'
  @Common.QuickInfo : 'Complete Number: Dialing Code+Number+Extension'
  InternationalFaxNumber : String(30) not null;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  _FreightOrderItem : Association to one CE_FREIGHTORDER_0001.FreightOrderItem {  };
  @Common.Composition : true
  _FrtOrdItmMainBPAddrAddlRprstn : Composition of many CE_FREIGHTORDER_0001.FrtOrdItmMainBPAddrAddlRprstn {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Main BP Addr Addl Rprstn'
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder', '_FrtOrdMainBPAddrDfltRprstn' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity CE_FREIGHTORDER_0001.FrtOrdMainBPAddrAddlRprstn {
  @Core.Computed : true
  @Common.Label : 'Transportation Order UUID'
  key TransportationOrderUUID : UUID not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Partner Function'
  @Common.Heading : 'Function'
  key TranspOrdBizPartnerFunction : String(2) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Address Version'
  @Common.Heading : 'Version'
  @Common.QuickInfo : 'Version ID for International Addresses'
  key AddressRepresentationCode : String(1) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Address Number'
  @Common.Heading : 'Addr. No.'
  AddressID : String(10) not null;
  @Common.Label : 'Full Name'
  @Common.QuickInfo : 'Full Name of Person'
  AddresseeFullName : String(80) not null;
  @Common.Label : 'City'
  CityName : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Postal Code'
  @Common.Heading : 'Post. Code'
  @Common.QuickInfo : 'City Postal Code'
  PostalCode : String(10) not null;
  @Common.Label : 'Street'
  StreetName : String(60) not null;
  @Common.Label : 'House Number'
  @Common.Heading : 'House No.'
  HouseNumber : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Country/Region Key'
  @Common.Heading : 'C/R'
  Country : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Region'
  @Common.Heading : 'Rg'
  @Common.QuickInfo : 'Region (State, Province, County)'
  Region : String(3) not null;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  _FrtOrdMainBPAddrDfltRprstn : Association to one CE_FREIGHTORDER_0001.FrtOrdMainBPAddrDfltRprstn {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Main BP Addr Dflt Rprstn'
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder', '_FrtOrdMainBPAddrAddlRprstn' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: EmailAddress,
    AllowedExpressions: 'MultiValue'
  }
]
entity CE_FREIGHTORDER_0001.FrtOrdMainBPAddrDfltRprstn {
  @Core.Computed : true
  @Common.Label : 'Transportation Order UUID'
  key TransportationOrderUUID : UUID not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Partner Function'
  @Common.Heading : 'Function'
  key TranspOrdBizPartnerFunction : String(2) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Address Number'
  @Common.Heading : 'Addr. No.'
  AddressID : String(10) not null;
  @Common.Label : 'Full Name'
  @Common.QuickInfo : 'Full Name of Person'
  AddresseeFullName : String(80) not null;
  @Common.Label : 'City'
  CityName : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Postal Code'
  @Common.Heading : 'Post. Code'
  @Common.QuickInfo : 'City Postal Code'
  PostalCode : String(10) not null;
  @Common.Label : 'Street'
  StreetName : String(60) not null;
  @Common.Label : 'House Number'
  @Common.Heading : 'House No.'
  HouseNumber : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Country/Region Key'
  @Common.Heading : 'C/R'
  Country : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Region'
  @Common.Heading : 'Rg'
  @Common.QuickInfo : 'Region (State, Province, County)'
  Region : String(3) not null;
  @Common.Label : 'Email Address'
  EmailAddress : String(241) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Telephone Number'
  @Common.QuickInfo : 'Complete Number: Dialing Code+Number+Extension'
  InternationalPhoneNumber : String(30) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Telephone Number'
  @Common.QuickInfo : 'Complete Number: Dialing Code+Number+Extension'
  InternationalMobilePhoneNumber : String(30) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Fax Number'
  @Common.QuickInfo : 'Complete Number: Dialing Code+Number+Extension'
  InternationalFaxNumber : String(30) not null;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  @Common.Composition : true
  _FrtOrdMainBPAddrAddlRprstn : Composition of many CE_FREIGHTORDER_0001.FrtOrdMainBPAddrAddlRprstn {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Stage BP Addr Addl Rpn'
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder', '_FrtOrdStgeBPAddrDfltRprstn' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity CE_FREIGHTORDER_0001.FrtOrdStgeBPAddrAddlRprstn {
  @Core.Computed : true
  @Common.Label : 'NodeID'
  key TransportationOrderStageUUID : UUID not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Partner Function'
  @Common.Heading : 'Function'
  key TranspOrdBizPartnerFunction : String(2) not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Address Version'
  @Common.Heading : 'Version'
  @Common.QuickInfo : 'Version ID for International Addresses'
  key AddressRepresentationCode : String(1) not null;
  @Core.Computed : true
  @Common.Label : 'Transportation Order UUID'
  TransportationOrderUUID : UUID not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Address Number'
  @Common.Heading : 'Addr. No.'
  AddressID : String(10) not null;
  @Common.Label : 'Full Name'
  @Common.QuickInfo : 'Full Name of Person'
  AddresseeFullName : String(80) not null;
  @Common.Label : 'City'
  CityName : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Postal Code'
  @Common.Heading : 'Post. Code'
  @Common.QuickInfo : 'City Postal Code'
  PostalCode : String(10) not null;
  @Common.Label : 'Street'
  StreetName : String(60) not null;
  @Common.Label : 'House Number'
  @Common.Heading : 'House No.'
  HouseNumber : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Country/Region Key'
  @Common.Heading : 'C/R'
  Country : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Region'
  @Common.Heading : 'Rg'
  @Common.QuickInfo : 'Region (State, Province, County)'
  Region : String(3) not null;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  _FrtOrdStgeBPAddrDfltRprstn : Association to one CE_FREIGHTORDER_0001.FrtOrdStgeBPAddrDfltRprstn {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Stage BP Addr Dflt Rpn'
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder', '_FreightOrderStage', '_FrtOrdStgeBPAddrAddlRprstn' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
@Capabilities.FilterRestrictions.FilterExpressionRestrictions : [
  {
    Property: EmailAddress,
    AllowedExpressions: 'MultiValue'
  }
]
entity CE_FREIGHTORDER_0001.FrtOrdStgeBPAddrDfltRprstn {
  @Core.Computed : true
  @Common.Label : 'NodeID'
  key TransportationOrderStageUUID : UUID not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Partner Function'
  @Common.Heading : 'Function'
  key TranspOrdBizPartnerFunction : String(2) not null;
  @Core.Computed : true
  @Common.Label : 'Transportation Order UUID'
  TransportationOrderUUID : UUID not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Address Number'
  @Common.Heading : 'Addr. No.'
  AddressID : String(10) not null;
  @Common.Label : 'Full Name'
  @Common.QuickInfo : 'Full Name of Person'
  AddresseeFullName : String(80) not null;
  @Common.Label : 'City'
  CityName : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Postal Code'
  @Common.Heading : 'Post. Code'
  @Common.QuickInfo : 'City Postal Code'
  PostalCode : String(10) not null;
  @Common.Label : 'Street'
  StreetName : String(60) not null;
  @Common.Label : 'House Number'
  @Common.Heading : 'House No.'
  HouseNumber : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Country/Region Key'
  @Common.Heading : 'C/R'
  Country : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Region'
  @Common.Heading : 'Rg'
  @Common.QuickInfo : 'Region (State, Province, County)'
  Region : String(3) not null;
  @Common.Label : 'Email Address'
  EmailAddress : String(241) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Telephone Number'
  @Common.QuickInfo : 'Complete Number: Dialing Code+Number+Extension'
  InternationalPhoneNumber : String(30) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Telephone Number'
  @Common.QuickInfo : 'Complete Number: Dialing Code+Number+Extension'
  InternationalMobilePhoneNumber : String(30) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Fax Number'
  @Common.QuickInfo : 'Complete Number: Dialing Code+Number+Extension'
  InternationalFaxNumber : String(30) not null;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  _FreightOrderStage : Association to one CE_FREIGHTORDER_0001.FreightOrderStage {  };
  @Common.Composition : true
  _FrtOrdStgeBPAddrAddlRprstn : Composition of many CE_FREIGHTORDER_0001.FrtOrdStgeBPAddrAddlRprstn {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Stop Loc Addr Addl Rpn'
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder', '_FrtOrdStopLocAddrDfltRprstn' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity CE_FREIGHTORDER_0001.FrtOrdStopLocAddrAddlRprstn {
  @Core.Computed : true
  @Common.Label : 'NodeID'
  key TransportationOrderStopUUID : UUID not null;
  @Core.Computed : true
  @Common.IsUpperCase : true
  @Common.Label : 'Address Version'
  @Common.Heading : 'Version'
  @Common.QuickInfo : 'Version ID for International Addresses'
  key AddressRepresentationCode : String(1) not null;
  @Core.Computed : true
  @Common.Label : 'Transportation Order UUID'
  TransportationOrderUUID : UUID not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Address Number'
  @Common.Heading : 'Addr. No.'
  AddressID : String(10) not null;
  @Common.Label : 'Full Name'
  @Common.QuickInfo : 'Full Name of Person'
  AddresseeFullName : String(80) not null;
  @Common.Label : 'City'
  CityName : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Postal Code'
  @Common.Heading : 'Post. Code'
  @Common.QuickInfo : 'City Postal Code'
  PostalCode : String(10) not null;
  @Common.Label : 'Street'
  StreetName : String(60) not null;
  @Common.Label : 'House Number'
  @Common.Heading : 'House No.'
  HouseNumber : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Country/Region Key'
  @Common.Heading : 'C/R'
  Country : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Region'
  @Common.Heading : 'Rg'
  @Common.QuickInfo : 'Region (State, Province, County)'
  Region : String(3) not null;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  _FrtOrdStopLocAddrDfltRprstn : Association to one CE_FREIGHTORDER_0001.FrtOrdStopLocAddrDfltRprstn {  };
};

@cds.external : true
@cds.persistence.skip : true
@Common.Label : 'Freight Order Stop Loc Addr Dflt Rpn'
@Capabilities.SearchRestrictions.Searchable : false
@Capabilities.InsertRestrictions.Insertable : false
@Capabilities.DeleteRestrictions.Deletable : false
@Capabilities.UpdateRestrictions.Updatable : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties : [ '_FreightOrder', '_FreightOrderStop', '_FrtOrdStopLocAddrAddlRprstn' ]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported : true
entity CE_FREIGHTORDER_0001.FrtOrdStopLocAddrDfltRprstn {
  @Core.Computed : true
  @Common.Label : 'NodeID'
  key TransportationOrderStopUUID : UUID not null;
  @Core.Computed : true
  @Common.Label : 'Transportation Order UUID'
  TransportationOrderUUID : UUID not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Address Number'
  @Common.Heading : 'Addr. No.'
  AddressID : String(10) not null;
  @Common.Label : 'Full Name'
  @Common.QuickInfo : 'Full Name of Person'
  AddresseeFullName : String(80) not null;
  @Common.Label : 'City'
  CityName : String(40) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Postal Code'
  @Common.Heading : 'Post. Code'
  @Common.QuickInfo : 'City Postal Code'
  PostalCode : String(10) not null;
  @Common.Label : 'Street'
  StreetName : String(60) not null;
  @Common.Label : 'House Number'
  @Common.Heading : 'House No.'
  HouseNumber : String(10) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Country/Region Key'
  @Common.Heading : 'C/R'
  Country : String(3) not null;
  @Common.IsUpperCase : true
  @Common.Label : 'Region'
  @Common.Heading : 'Rg'
  @Common.QuickInfo : 'Region (State, Province, County)'
  Region : String(3) not null;
  _FreightOrder : Association to one CE_FREIGHTORDER_0001.FreightOrder {  };
  _FreightOrderStop : Association to one CE_FREIGHTORDER_0001.FreightOrderStop {  };
  @Common.Composition : true
  _FrtOrdStopLocAddrAddlRprstn : Composition of many CE_FREIGHTORDER_0001.FrtOrdStopLocAddrAddlRprstn {  };
};

