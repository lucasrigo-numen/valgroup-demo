using { api_business_partner as api } from './external/api_business_partner';
service BusinessPartnerService {

  entity BusinessPartner as projection on api.A_BusinessPartner {
    BusinessPartner,
    Customer,
    Supplier,
    BusinessPartnerCategory,
    BusinessPartnerFullName,
    BusinessPartnerName,
    BusinessPartnerUUID,
    CreationDate,
    FirstName,
    LastName,
    OrganizationBPName1
  };
}