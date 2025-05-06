const cds = require('@sap/cds')

module.exports = class BupaService extends cds.ApplicationService { init() {

  this.on('READ', 'BusinessPartner', async (req) => {
    const bupaCon = await cds.connect.to('api_business_partner');
    console.log('Connected to API Business Partner service');
    return await bupaCon.run(req.query);
  });

  // Delegate requests to the underlying generic service
  return super.init();
}}
