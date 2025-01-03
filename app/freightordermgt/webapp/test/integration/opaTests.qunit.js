sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/cap/freightordermgt/test/integration/FirstJourney',
		'com/cap/freightordermgt/test/integration/pages/SrvFreightOrderList',
		'com/cap/freightordermgt/test/integration/pages/SrvFreightOrderObjectPage',
		'com/cap/freightordermgt/test/integration/pages/SrvFreightOrderItemObjectPage'
    ],
    function(JourneyRunner, opaJourney, SrvFreightOrderList, SrvFreightOrderObjectPage, SrvFreightOrderItemObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/cap/freightordermgt') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSrvFreightOrderList: SrvFreightOrderList,
					onTheSrvFreightOrderObjectPage: SrvFreightOrderObjectPage,
					onTheSrvFreightOrderItemObjectPage: SrvFreightOrderItemObjectPage
                }
            },
            opaJourney.run
        );
    }
);