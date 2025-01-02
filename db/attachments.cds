

using { sap.capire.freightorder.attachments.db as my  } from './schema';
using { Attachments } from '@cap-js/sdm';

extend my.DBFreightOrderItem with { attachments: Composition of many Attachments };
