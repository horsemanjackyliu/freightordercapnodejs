namespace sap.capire.freightorder.attachments.service;

using { sap.capire.freightorder.attachments.db as db } from '../db/schema';



service freightorder {

    entity FreightOrder as projection on db.FreightOrder ;

    entity FreightOrderItem as projection on db.FreightOrderItem;

    

}
