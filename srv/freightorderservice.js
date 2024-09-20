
const cds = require('@sap/cds');
const LOG = cds.log('freightorderservice');
module.exports = cds.service.impl(async function(){
    const messaging = await cds.connect.to('messaging');

    messaging.on('',async (msg)=>{
        LOG._info(msg);
    })
})