namespace sap.capire.freightorder.attachments.service;

using { sap.capire.freightorder.attachments.db as db } from '../db/schema';




service freightorder {

    @readonly

    entity SrvFreightOrder as projection on db.DBFreightOrder ;

 @Capabilities : { UpdateRestrictions : {
     $Type : 'Capabilities.UpdateRestrictionsType',
     Updatable: true
 }, 
 DeleteRestrictions : {
     $Type : 'Capabilities.DeleteRestrictionsType',
     Deletable:false
 },
 InsertRestrictions : {
     $Type : 'Capabilities.InsertRestrictionsType',
     Insertable:false
 }
 }
    entity SrvFreightOrderItem as projection on db.DBFreightOrderItem;


    

}



// annotate freightorder with @(requires: 'admin') ;


