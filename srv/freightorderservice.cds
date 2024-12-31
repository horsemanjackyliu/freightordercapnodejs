namespace sap.capire.freightorder.attachments.service;

using { sap.capire.freightorder.attachments.db as db } from '../db/schema';




service freightorder {

    entity SrvFreightOrder as projection on db.DBFreightOrder ;

    entity SrvFreightOrderItem as projection on db.DBFreightOrderItem;

    

}




// annotate freightorder with @(requires: 'admin') ;


