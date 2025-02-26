namespace sap.capire.freightorder.attachments.service;

using { sap.freightorder.db as db } from '../db/schema';




service freightorder {


    entity SrvFreightOrder @readonly as projection on db.DBFreightOrder ;

//  @Capabilities : { UpdateRestrictions : {
//      $Type : 'Capabilities.UpdateRestrictionsType',
//      Updatable: true
//  }, 
//  DeleteRestrictions : {
//      $Type : 'Capabilities.DeleteRestrictionsType',
//      Deletable:false
//  },
//  InsertRestrictions : {
//      $Type : 'Capabilities.InsertRestrictionsType',
//      Insertable:false
//  }
//  }
    entity SrvFreightOrderItem as projection on db.DBFreightOrderItem;


    

}



annotate freightorder.SrvFreightOrderItem with @Capabilities : { 
    InsertRestrictions.Insertable: false,
    UpdateRestrictions.Updatable: true,
    DeleteRestrictions.Deletable: false
 } ;

 annotate freightorder.SrvFreightOrderItem with @odata.draft.enabled @fiori.draft.enabled;
 



// annotate freightorder with @(requires: 'admin') ;


