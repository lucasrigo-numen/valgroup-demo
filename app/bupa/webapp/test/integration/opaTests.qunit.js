sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'bupa/test/integration/FirstJourney',
		'bupa/test/integration/pages/BusinessPartnerList',
		'bupa/test/integration/pages/BusinessPartnerObjectPage'
    ],
    function(JourneyRunner, opaJourney, BusinessPartnerList, BusinessPartnerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('bupa') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBusinessPartnerList: BusinessPartnerList,
					onTheBusinessPartnerObjectPage: BusinessPartnerObjectPage
                }
            },
            opaJourney.run
        );
    }
);