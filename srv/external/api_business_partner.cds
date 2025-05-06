/* checksum : db7c5cf35f1d0d4b94de5dca45d282d3 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service api_business_partner {};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Endereço de e-mail'
entity api_business_partner.A_AddressEmailAddress {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº endereço'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº pessoa'
  key Person : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nº sequencial'
  key OrdinalNumber : String(3) not null;
  @sap.label : 'Endereço standard'
  @sap.quickinfo : 'Código: endereço default'
  IsDefaultEmailAddress : Boolean;
  @sap.label : 'Endereço de e-mail'
  EmailAddress : String(241);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Endereço de e-mail'
  @sap.quickinfo : 'Campo de pesquisa para o endereço de e-mail'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SearchEmailAddress : String(20);
  @sap.label : 'Observações'
  @sap.quickinfo : 'Observações sobre a ligação de comunicação'
  AddressCommunicationRemarkText : String(50);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Nº de fax'
entity api_business_partner.A_AddressFaxNumber {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº endereço'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº pessoa'
  key Person : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nº sequencial'
  key OrdinalNumber : String(3) not null;
  @sap.label : 'Nº standard'
  @sap.quickinfo : 'Endereço remetente standard neste tipo de comunicação'
  IsDefaultFaxNumber : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'País/região'
  @sap.quickinfo : 'País/região para nº de telefone/fax'
  FaxCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fax'
  @sap.quickinfo : 'Nº fax: prefixo e número'
  FaxNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extensão'
  @sap.quickinfo : 'Nº fax: extensão'
  FaxNumberExtension : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº de fax'
  @sap.quickinfo : 'Nº completo: código telefónico+nº+extensão'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  InternationalFaxNumber : String(30);
  @sap.label : 'Observações'
  @sap.quickinfo : 'Observações sobre a ligação de comunicação'
  AddressCommunicationRemarkText : String(50);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'URL de página inicial'
entity api_business_partner.A_AddressHomePageURL {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº endereço'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº pessoa'
  key Person : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nº sequencial'
  key OrdinalNumber : String(3) not null;
  @sap.display.format : 'Date'
  @sap.label : 'de'
  @sap.quickinfo : 'Data &quot;válido de&quot; - no release atual só é possível 00010101'
  key ValidityStartDate : Date not null;
  @sap.label : 'Endereço standard'
  @sap.quickinfo : 'Código: endereço default'
  key IsDefaultURLAddress : Boolean not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Endereço URI'
  @sap.quickinfo : 'Campo pesquisa para endereço URI'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SearchURLAddress : String(50);
  @sap.label : 'Observações'
  @sap.quickinfo : 'Observações sobre a ligação de comunicação'
  AddressCommunicationRemarkText : String(50);
  @sap.label : 'Comprimento URI'
  @sap.quickinfo : 'Comprimento do campo URI'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  URLFieldLength : Integer;
  @sap.label : 'URI'
  @sap.quickinfo : 'Universal Resource Identifier (URI)'
  WebsiteURL : String(2048);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Número de telefone'
entity api_business_partner.A_AddressPhoneNumber {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº endereço'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº pessoa'
  key Person : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nº sequencial'
  key OrdinalNumber : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'País/região'
  @sap.quickinfo : 'País/região para nº de telefone/fax'
  DestinationLocationCountry : String(3);
  @sap.label : 'Nº standard'
  @sap.quickinfo : 'Endereço remetente standard neste tipo de comunicação'
  IsDefaultPhoneNumber : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telefone'
  @sap.quickinfo : 'Nº telefone: prefixo e número'
  PhoneNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extensão'
  @sap.quickinfo : 'Nº de telefone: extensão'
  PhoneNumberExtension : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº telefone'
  @sap.quickinfo : 'Número completo: prefixo + conexão + ramal'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  InternationalPhoneNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tel.celular'
  @sap.quickinfo : 'Código: o telefone é um telefone celular'
  PhoneNumberType : String(1);
  @sap.label : 'Observações'
  @sap.quickinfo : 'Observações sobre a ligação de comunicação'
  AddressCommunicationRemarkText : String(50);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'ILN dependente de endereço de parceiro de negócios'
entity api_business_partner.A_BPAddrDepdntIntlLocNumber {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº endereço'
  key AddressID : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nº global localiz.1'
  @sap.quickinfo : 'Nº global de localização (parte 1)'
  InternationalLocationNumber1 : String(7);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nº global localiz.2'
  @sap.quickinfo : 'Número global de localização (parte 2)'
  InternationalLocationNumber2 : String(5);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Dígito de controle'
  @sap.quickinfo : 'Dígito de controle da matrícula internacional da empresa'
  InternationalLocationNumber3 : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Endereço da pessoa de contato'
entity api_business_partner.A_BPContactToAddress {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº de relação PN'
  @sap.quickinfo : 'Nº de relação parceiro de negócios'
  key RelationshipNumber : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartnerCompany : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartnerPerson : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Válido até'
  @sap.quickinfo : 'Data de validade (válido até)'
  key ValidityEndDate : Date not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº endereço'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº endereço'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AddressNumber : String(10);
  @sap.label : 'Rua 3'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AdditionalStreetPrefixName : String(40);
  @sap.label : 'Rua 5'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AdditionalStreetSuffixName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fuso horário'
  @sap.quickinfo : 'Fuso horário do endereço'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AddressTimeZone : String(6);
  @sap.label : 'C/o'
  @sap.quickinfo : 'Nome c/o'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CareOfName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº da localidade'
  @sap.quickinfo : 'Codificação da localidade para file de localidades e ruas'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CityCode : String(12);
  @sap.label : 'Cidade'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cód.postal empresa'
  @sap.quickinfo : 'Código postal da empresa (para clientes importantes)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CompanyPostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chave do país/região'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Country : String(3);
  @sap.label : 'Distrito'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  County : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº serviço entrega'
  @sap.quickinfo : 'Nº do serviço de entrega'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DeliveryServiceNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tp.serv.entrega'
  @sap.quickinfo : 'Tipo do serviço de entrega'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DeliveryServiceTypeCode : String(4);
  @sap.label : 'Bairro'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  District : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chv.FrmTrat.'
  @sap.quickinfo : 'Chave de forma de tratamento'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FormOfAddress : String(4);
  @sap.label : 'Nome completo'
  @sap.quickinfo : 'Nome completo parte (PN, unid.organizacional, endereço doc.)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FullName : String(80);
  @sap.label : 'Local.resid.difer.'
  @sap.quickinfo : 'Localidade de residência (diferente da localidade postal)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  HomeCityName : String(40);
  @sap.label : 'Nº'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  HouseNumber : String(10);
  @sap.label : 'Suplemento'
  @sap.quickinfo : 'Complemento do nº'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  HouseNumberSupplementText : String(10);
  @sap.label : 'Código de idioma'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Language : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Caixa postal'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  POBox : String(10);
  @sap.label : 'Localidade cx.postal'
  @sap.quickinfo : 'Localidade da caixa postal'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  POBoxDeviatingCityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'País/região CxPostal'
  @sap.quickinfo : 'País/região da caixa postal'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  POBoxDeviatingCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Região para CP'
  @sap.quickinfo : 'Região para a caixa postal (país, estado, província, ...)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  POBoxDeviatingRegion : String(3);
  @sap.label : 'Caixa postal sem nº'
  @sap.quickinfo : 'Código: indicação de caixa postal sem nº'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  POBoxIsWithoutNumber : Boolean;
  @sap.label : 'Agência caixa postal'
  @sap.quickinfo : 'Agência da caixa postal (PO Box Lobby)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  POBoxLobbyName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CEP CxPostal'
  @sap.quickinfo : 'Código postal da cx.postal'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  POBoxPostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº pessoa'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Person : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Código postal'
  @sap.quickinfo : 'Código postal da cidade'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Meio de comunicação'
  @sap.quickinfo : 'Meio comunicação (chave) (administração endereços central)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PrfrdCommMediumType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Região'
  @sap.quickinfo : 'Região (estado, província, condado)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Region : String(3);
  @sap.label : 'Rua'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  StreetName : String(60);
  @sap.label : 'Rua 2'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  StreetPrefixName : String(40);
  @sap.label : 'Rua 4'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  StreetSuffixName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Domicílio fiscal'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Zona de transporte'
  @sap.quickinfo : 'Zona de transporte para a qual ou da qual é fornecido'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TransportZone : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Versão de endereço'
  @sap.quickinfo : 'Código de versão para endereços internacionais'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AddressRepresentationCode : String(1);
  @sap.label : 'Sigla edifício'
  @sap.quickinfo : 'Edifício (nº ou sigla)'
  ContactPersonBuilding : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Meio de comunicação'
  @sap.quickinfo : 'Meio comunicação (chave) (administração endereços central)'
  ContactPersonPrfrdCommMedium : String(3);
  @sap.label : 'Departamento'
  ContactRelationshipDepartment : String(40);
  @sap.label : 'Função'
  ContactRelationshipFunction : String(40);
  @sap.label : 'Denominação breve'
  @sap.quickinfo : 'Denominação breve para correspondência'
  CorrespondenceShortName : String(10);
  @sap.label : 'Andar'
  @sap.quickinfo : 'Andar do edifício'
  Floor : String(10);
  @sap.label : 'Correio interno'
  @sap.quickinfo : 'Código de correio interno'
  InhouseMail : String(10);
  @sap.label : 'Endereço padrão'
  @sap.quickinfo : 'Seleção: endereço é endereço padrão'
  IsDefaultAddress : Boolean;
  @sap.label : 'Nº sala'
  @sap.quickinfo : 'Nº morada, apartamento ou sala'
  RoomNumber : String(10);
  to_EmailAddress : Association to many api_business_partner.A_AddressEmailAddress {  };
  to_FaxNumber : Association to many api_business_partner.A_AddressFaxNumber {  };
  to_MobilePhoneNumber : Association to many api_business_partner.A_AddressPhoneNumber {  };
  to_PhoneNumber : Association to many api_business_partner.A_AddressPhoneNumber {  };
  to_URLAddress : Association to many api_business_partner.A_AddressHomePageURL {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Função e departamento'
entity api_business_partner.A_BPContactToFuncAndDept {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº de relação PN'
  @sap.quickinfo : 'Nº de relação parceiro de negócios'
  key RelationshipNumber : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartnerCompany : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartnerPerson : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Válido até'
  @sap.quickinfo : 'Data de validade (válido até)'
  key ValidityEndDate : Date not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Procuração'
  @sap.quickinfo : 'Procuração do parceiro'
  ContactPersonAuthorityType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Departamento'
  ContactPersonDepartment : String(4);
  @sap.label : 'Departamento empresa'
  @sap.quickinfo : 'Departamento no parceiro de negócios'
  ContactPersonDepartmentName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Função'
  @sap.quickinfo : 'Função do parceiro'
  ContactPersonFunction : String(4);
  @sap.label : 'Denominação função'
  @sap.quickinfo : 'Descrição da função do parceiro'
  ContactPersonFunctionName : String(40);
  @sap.label : 'Comentário'
  @sap.quickinfo : 'Comentários sobre um parceiro'
  ContactPersonRemarkText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'VIP'
  @sap.quickinfo : 'Parceiro VIP'
  ContactPersonVIPType : String(1);
  @sap.label : 'Endereço de e-mail'
  EmailAddress : String(241);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fax'
  @sap.quickinfo : 'Nº fax: prefixo e número'
  FaxNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extensão'
  @sap.quickinfo : 'Nº fax: extensão'
  FaxNumberExtension : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telefone'
  @sap.quickinfo : 'Nº telefone: prefixo e número'
  PhoneNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Extensão'
  @sap.quickinfo : 'Nº de telefone: extensão'
  PhoneNumberExtension : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo de relação'
  @sap.quickinfo : 'Parceiro de negócios - tipo de relação'
  RelationshipCategory : String(6);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Solvência'
entity api_business_partner.A_BPCreditWorthiness {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Solvência'
  BusPartCreditStanding : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status inf.solvência'
  @sap.quickinfo : 'Status de informação de solvência'
  BPCreditStandingStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Inst.classif.crédito'
  @sap.quickinfo : 'Instituição de classificação de crédito'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreditRatingAgency : String(4);
  @sap.label : 'Texto para solvência'
  @sap.quickinfo : 'Outras informações sobre a solvência'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BPCreditStandingComment : String(50);
  @sap.display.format : 'Date'
  @sap.label : 'Data inf.solvência'
  @sap.quickinfo : 'Data de informação de solvência'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BPCreditStandingDate : Date;
  @sap.label : 'Classificação'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BPCreditStandingRating : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Status proc.judicial'
  @sap.quickinfo : 'Status do processo judicial'
  BPLegalProceedingStatus : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Data proc.judicial'
  @sap.quickinfo : 'Data da abertura do processo judicial'
  BPLglProceedingInitiationDate : Date;
  @sap.label : 'Declar.juramentada'
  @sap.quickinfo : 'Declaração juramentada'
  BusinessPartnerIsUnderOath : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Data decl.sob juramn'
  @sap.quickinfo : 'Data da declaração sob juramento'
  BusinessPartnerOathDate : Date;
  @sap.label : 'Processo insolvência'
  @sap.quickinfo : 'Processo de insolvência iniciado'
  BusinessPartnerIsBankrupt : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Dta.proc.insolvência'
  @sap.quickinfo : 'Data do início do processo de insolvência'
  BusinessPartnerBankruptcyDate : Date;
  @sap.label : 'Execução forçada'
  BPForeclosureIsInitiated : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Data execução forçad'
  @sap.quickinfo : 'Data de execução forçada'
  BPForeclosureDate : Date;
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BPCrdtWrthnssAccessChkIsActive : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Controlador de dados de parceiro de negócios'
entity api_business_partner.A_BPDataController {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controlador de dados'
  @sap.quickinfo : 'PN: controlador de dados'
  key DataController : String(30) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Objetivo'
  @sap.quickinfo : 'PN: objetivo'
  key PurposeForPersonalData : String(30) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status atrib.'
  @sap.quickinfo : 'PN: status de atribuição controlador de dados/utilização'
  DataControlAssignmentStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CódDerCtrldDds.'
  @sap.quickinfo : 'PN: código de derivação para controlador de dados'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BPDataControllerIsDerived : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cód.deriv.objv.'
  @sap.quickinfo : 'PN: código de derivação para objetivo'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurposeDerived : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo utilização'
  @sap.quickinfo : 'PN: tipo de motivo da operação'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PurposeType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mot.operação cumpr.'
  @sap.quickinfo : 'Código para cumprimento do motivo da operação'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BusinessPurposeFlag : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Síntese da ocupação'
entity api_business_partner.A_BPEmployment {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Início da ocupação'
  key BPEmploymentStartDate : Date not null;
  @sap.display.format : 'Date'
  @sap.label : 'Fim da ocupação'
  BPEmploymentEndDate : Date;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Status da ocupação'
  BPEmploymentStatus : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Setor industrial'
  BusPartEmplrIndstryCode : String(10);
  @sap.label : 'Empregador'
  @sap.quickinfo : 'Nome do empregador de uma pessoa física'
  BusinessPartnerEmployerName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ocupação'
  @sap.quickinfo : 'Ocupação do parceiro de negócios'
  BusinessPartnerOccupationGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Detalhes de serviços financeiros'
entity api_business_partner.A_BPFinancialServicesExtn {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @sap.label : 'PN VIP'
  @sap.quickinfo : 'O parceiro de negócios é um VIP'
  BusinessPartnerIsVIP : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº soc.parceira'
  @sap.quickinfo : 'Nº sociedade parceira'
  TradingPartner : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Calendário fábrica'
  @sap.quickinfo : 'Calendário de fábrica'
  FactoryCalendar : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'País/reg.sede juríd.'
  @sap.quickinfo : 'País/região da sede jurídica'
  BusinessPartnerOfficeCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Região'
  @sap.quickinfo : 'Região da sede jurídica'
  BusinessPartnerOfficeRegion : String(3);
  @sap.label : 'Sede jurídica'
  BPRegisteredOfficeName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Moeda balanço'
  @sap.quickinfo : 'Moeda de balanço'
  @sap.semantics : 'currency-code'
  BPBalanceSheetCurrency : String(5);
  @sap.unit : 'BPBalanceSheetCurrency'
  @sap.label : 'Aumento de capital'
  @sap.quickinfo : 'Montante do último aumento do capital'
  BPLastCptlIncrAmtInBalShtCrcy : Decimal(16, 3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Ano'
  @sap.quickinfo : 'Ano do último aumento de capital'
  BPLastCapitalIncreaseYear : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Exibição do balanço'
  BPBalanceSheetDisplayType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cidadania'
  BusinessPartnerCitizenship : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Regime bens matrim.'
  @sap.quickinfo : 'Regime de bens matrimonial'
  BPMaritalPropertyRegime : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Moeda'
  @sap.quickinfo : 'Moeda do rendimento líquido'
  @sap.semantics : 'currency-code'
  BusinessPartnerIncomeCurrency : String(5);
  @sap.label : 'Filhos'
  @sap.quickinfo : 'Nº de filhos do parceiro de negócios'
  BPNumberOfChildren : Decimal(2, 0);
  @sap.label : 'Pess.agregado famil.'
  @sap.quickinfo : 'Núm.de pessoas do agregado familiar'
  BPNumberOfHouseholdMembers : Decimal(2, 0);
  @sap.unit : 'BusinessPartnerIncomeCurrency'
  @sap.label : 'Rendim.anual líquido'
  @sap.quickinfo : 'Rendimento anual líquido'
  BPAnnualNetIncAmtInIncomeCrcy : Decimal(16, 3);
  @sap.unit : 'BusinessPartnerIncomeCurrency'
  @sap.label : 'Rendmto.líq.mensal'
  @sap.quickinfo : 'Rendimento líquido mensal do parceiro de negócios'
  BPMonthlyNetIncAmtInIncomeCrcy : Decimal(16, 3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Ano'
  @sap.quickinfo : 'Ano do rendimento líquido anual obtido'
  BPAnnualNetIncomeYear : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Mês'
  @sap.quickinfo : 'Mês do rendimento líquido mensal obtido'
  BPMonthlyNetIncomeMonth : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Ano'
  @sap.quickinfo : 'Ano do rendimento líquido mensal obtido'
  BPMonthlyNetIncomeYear : String(4);
  @sap.label : 'Local de falecimento'
  @sap.quickinfo : 'Nome do local de falecimento de uma pessoa física'
  BPPlaceOfDeathName : String(40);
  @sap.label : 'Clien.indesejad'
  @sap.quickinfo : 'Cliente indesejado'
  CustomerIsUnwanted : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Mot.indesejab.'
  @sap.quickinfo : 'Motivo da indesejabilidade'
  UndesirabilityReason : String(2);
  @sap.label : 'Observação'
  @sap.quickinfo : 'Observação para a indesejabilidade'
  UndesirabilityComment : String(35);
  @sap.display.format : 'Date'
  @sap.label : 'Últ.contato cliente'
  @sap.quickinfo : 'Data do último contato com cliente'
  LastCustomerContactDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Caract.agrupamento'
  @sap.quickinfo : 'Característica de agrupamento'
  BPGroupingCharacter : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Vocativo'
  BPLetterSalutation : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo alvo'
  BusinessPartnerTargetGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de empregados'
  BusinessPartnerEmployeeGroup : String(4);
  @sap.label : 'Empregado'
  BusinessPartnerIsEmployee : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Data final'
  @sap.quickinfo : 'Data do fim da relação comercial com o banco'
  BPTermnBusRelationsBankDate : Date;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Sistema de relatórios serviços financeiros'
entity api_business_partner.A_BPFinancialServicesReporting {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @sap.label : 'Não residentes'
  @sap.quickinfo : 'Não residente segundo §4 lei de comércio ext.da Alemanha'
  BPIsNonResident : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Não residente desde'
  @sap.quickinfo : 'Início da não-residência segundo §4 lei comércio exterior'
  BPNonResidencyStartDate : Date;
  @sap.label : 'Créd.mont.milh.'
  @sap.quickinfo : 'Mutuário do crédito no montante de milhões segundo §14 LOB'
  BPIsMultimillionLoanRecipient : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº do mutuário'
  @sap.quickinfo : 'Nº mutuário p/exibição de crédito segundo LOB'
  BPLoanReportingBorrowerNumber : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº entid.mutuária'
  @sap.quickinfo : 'Número entidade mutuária para exibição crédito segundo LOB'
  BPLoanRptgBorrowerEntityNumber : String(8);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Infos LOB'
  @sap.quickinfo : 'Análise de crédito segundo §18 LOB'
  BPCreditStandingReview : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Data anál.crédito'
  @sap.quickinfo : 'Data da análise de crédito segundo §18 LOB'
  BPCreditStandingReviewDate : Date;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Mutuár.créd.executv.'
  @sap.quickinfo : 'Crédito a executivos seg.§ 15 lei sobre organização bancária'
  BusinessPartnerLoanToManager : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rel.empresarial'
  @sap.quickinfo : 'Relação empresarial'
  BPCompanyRelationship : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº de credor'
  @sap.quickinfo : 'Nº de credor para exibição de crédito segundo LOB'
  BPLoanReportingCreditorNumber : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº ID (OeNB)'
  @sap.quickinfo : 'Nº de identificação (OeNB - Banco Nacional Austríaco)'
  BPOeNBIdentNumber : String(11);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo alvo OeNB'
  @sap.quickinfo : 'Grupo alvo segundo OeNB'
  BPOeNBTargetGroup : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Atribuir nº ID'
  @sap.quickinfo : 'Atribuir nº de identificação (OeNB-Banco Nacional Austríaco)'
  BPOeNBIdentNumberAssigned : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CIIF OeNB'
  @sap.quickinfo : 'Nº da instituição fincanceira seg.OeNB (Banco Nac.Áustria)'
  BPOeNBInstituteNumber : String(7);
  @sap.label : 'SujDeclaraçãoOeNB'
  @sap.quickinfo : 'Instituto sujeito a declaração segundo GKMVO'
  BusinessPartnerIsOeNBInstitute : Boolean;
  @sap.label : 'Nº ID de grupo'
  BusinessPartnerGroup : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo de atribuição de grupo'
  BPGroupAssignmentCategory : String(1);
  @sap.label : 'Denominação de grupo'
  @sap.quickinfo : 'Denominação do grupo'
  BusinessPartnerGroupName : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pessoa jurídica'
  @sap.quickinfo : 'Pessoa jurídica do parceiro de negócios'
  BusinessPartnerLegalEntity : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : '§4 par.2 reg.imob.'
  @sap.quickinfo : 'PN segundo §4 parágrafo 2 regulamentação do imobilizado'
  BPGerAstRglnRestrictedAstQuota : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grp.devedores'
  @sap.quickinfo : 'Grupo de devedores de acordo com BerVersV modelo 5'
  BusinessPartnerDebtorGroup : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Objetivo de negócio'
  @sap.quickinfo : 'Categoria do objetivo de negócio'
  BusinessPartnerBusinessPurpose : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de risco'
  BusinessPartnerRiskGroup : String(1);
  @sap.display.format : 'Date'
  @sap.label : 'Agrupamento de'
  @sap.quickinfo : 'Data do agrupamento de riscos'
  BPRiskGroupingDate : Date;
  @sap.label : 'Vínculo grp.empresas'
  @sap.quickinfo : 'Existe vínculo ao grupo de empresas'
  BPHasGroupAffiliation : Boolean;
  @sap.label : 'Instituição financ.'
  @sap.quickinfo : 'Instituição financeira'
  BPIsMonetaryFinInstitution : Boolean;
  @sap.label : 'Relevância §18 LOB'
  @sap.quickinfo : 'Obrigação para verificação de solvência segundo §18 LOB'
  BPCrdtStandingReviewIsRequired : Boolean;
  @sap.label : 'Monit.créds.elevs.'
  @sap.quickinfo : 'Monitorização de créditos elevados segundo §13b LOB'
  BPLoanMonitoringIsRequired : Boolean;
  @sap.label : 'Redução de imputação'
  @sap.quickinfo : 'Redução de imputação segundo §13/3 LOB'
  BPHasCreditingRelief : Boolean;
  @sap.label : '§2 par.1 Nº18b RgIm.'
  @sap.quickinfo : 'Autorizado segundo §2 par.1 nº 18b regulam.imobilizado'
  BPInvestInRstrcdAstIsAuthzd : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cód.país/região BC'
  @sap.quickinfo : 'Código numérico do código de país/região do Banco Central'
  BPCentralBankCountryRegion : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Informação de exercício fiscal'
entity api_business_partner.A_BPFiscalYearInformation {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Exercício'
  key BusinessPartnerFiscalYear : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Moeda balanço'
  @sap.quickinfo : 'Moeda de balanço'
  @sap.semantics : 'currency-code'
  BPBalanceSheetCurrency : String(5);
  @sap.display.format : 'Date'
  @sap.label : 'AG ordinária'
  @sap.quickinfo : 'Data da assembléia geral ordinária'
  BPAnnualStockholderMeetingDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Início do exercício'
  @sap.quickinfo : 'Data do início do exercício'
  BPFiscalYearStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Fim do exercício'
  @sap.quickinfo : 'Data do fim do exercício'
  BPFiscalYearEndDate : Date;
  @sap.label : 'Encermto.exercício'
  @sap.quickinfo : 'Encerramento do exercício'
  BPFiscalYearIsClosed : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Encermto.exercício'
  @sap.quickinfo : 'Data do encerramento do exercício'
  BPFiscalYearClosingDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'DemContGrpEmpr.'
  @sap.quickinfo : 'Dt.demonstração contábil existente sociedade grupo empresas'
  BPFsclYrCnsldtdFinStatementDte : Date;
  @sap.unit : 'BPBalanceSheetCurrency'
  @sap.label : 'Capital social'
  @sap.quickinfo : 'Montante do capital social autorizado da empresa'
  BPCapitalStockAmtInBalShtCrcy : Decimal(16, 3);
  @sap.unit : 'BPBalanceSheetCurrency'
  @sap.label : 'Capital social emit.'
  @sap.quickinfo : 'Montante do capital social emitido da empresa'
  BPIssdStockCptlAmtInBalShtCrcy : Decimal(16, 3);
  @sap.unit : 'BPBalanceSheetCurrency'
  @sap.label : 'Capital participação'
  @sap.quickinfo : 'Montante do capital de participação da empresa'
  BPPartcipnCertAmtInBalShtCrcy : Decimal(16, 3);
  @sap.unit : 'BPBalanceSheetCurrency'
  @sap.label : 'Capital próprio'
  @sap.quickinfo : 'Montante do capital próprio da empresa'
  BPEquityCapitalAmtInBalShtCrcy : Decimal(16, 3);
  @sap.unit : 'BPBalanceSheetCurrency'
  @sap.label : 'Contrib.bruta'
  @sap.quickinfo : 'Contribuição bruta'
  BPGrossPremiumAmtInBalShtCrcy : Decimal(16, 3);
  @sap.unit : 'BPBalanceSheetCurrency'
  @sap.label : 'Contrib.líquida'
  @sap.quickinfo : 'Contribuição líquida'
  BPNetPremiumAmtInBalShtCrcy : Decimal(16, 3);
  @sap.unit : 'BPBalanceSheetCurrency'
  @sap.label : 'Faturamento anual'
  @sap.quickinfo : 'Montante do faturamento anual da empresa'
  BPAnnualSalesAmtInBalShtCrcy : Decimal(16, 3);
  @sap.unit : 'BPBalanceSheetCurrency'
  @sap.label : 'Lucr.líq.exercício'
  @sap.quickinfo : 'Mont.lucro líquido exercício/prejuízo líquido anual empresa'
  BPAnnualNetIncAmtInBalShtCrcy : Decimal(16, 3);
  @sap.unit : 'BPBalanceSheetCurrency'
  @sap.label : 'Dividendo'
  @sap.quickinfo : 'Dividendo/montante de distribuição da empresa'
  BPDividendDistrAmtInBalShtCrcy : Decimal(16, 3);
  @sap.label : 'Fator de endividamto'
  @sap.quickinfo : 'Fator de endividamento em anos'
  BPDebtRatioInYears : Decimal(6, 3);
  @sap.unit : 'BPBalanceSheetCurrency'
  @sap.label : 'Lucro declarado'
  @sap.quickinfo : 'Montante do lucro/perda anual da empresa'
  BPAnnualPnLAmtInBalShtCrcy : Decimal(16, 3);
  @sap.unit : 'BPBalanceSheetCurrency'
  @sap.label : 'Total do balanço'
  @sap.quickinfo : 'Montante do total do balanço da empresa'
  BPBalSheetTotalAmtInBalShtCrcy : Decimal(16, 3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nº de empregados'
  @sap.quickinfo : 'Nº de empregados na empresa'
  BPNumberOfEmployees : String(7);
  @sap.unit : 'BPBalanceSheetCurrency'
  @sap.label : 'Reserv.capital'
  @sap.quickinfo : 'Montante da reserva de capital da empresa'
  BPCptlReserveAmtInBalShtCrcy : Decimal(16, 3);
  @sap.unit : 'BPBalanceSheetCurrency'
  @sap.label : 'Res.lucros legal'
  @sap.quickinfo : 'Montante da reserva de lucros legal da empresa'
  BPLglRevnRsrvAmtInBalShtCrcy : Decimal(16, 3);
  @sap.unit : 'BPBalanceSheetCurrency'
  @sap.label : 'ReservaLcrs.QuotaPr.'
  @sap.quickinfo : 'Reserva de lucros para quotas próprias'
  RevnRsrvOwnStkAmtInBalShtCrcy : Decimal(16, 3);
  @sap.unit : 'BPBalanceSheetCurrency'
  @sap.label : 'ResLucrosEstatutária'
  @sap.quickinfo : 'Montante da reserva de lucros estatutária da empresa'
  BPStatryReserveAmtInBalShtCrcy : Decimal(16, 3);
  @sap.unit : 'BPBalanceSheetCurrency'
  @sap.label : 'Outra reserva lucros'
  @sap.quickinfo : 'Montante de outra reserva de lucros da empresa'
  BPOthRevnRsrvAmtInBalShtCrcy : Decimal(16, 3);
  @sap.unit : 'BPBalanceSheetCurrency'
  @sap.label : 'Transp.lucros/perdas'
  @sap.quickinfo : 'Montante transporte lucros/perdas transportadas da empresa'
  BPPnLCarryfwdAmtInBalShtCrcy : Decimal(16, 3);
  @sap.unit : 'BPBalanceSheetCurrency'
  @sap.label : 'Débitos secundários'
  @sap.quickinfo : 'Montante dos débitos subordinados da empresa'
  BPSuborddLbltyAmtInBalShtCrcy : Decimal(16, 3);
  @sap.label : 'Rend.cap.total'
  @sap.quickinfo : 'Retorno sobre o ativo da empresa em porcentagem'
  BPRetOnTotalCptlEmpldInPercent : Decimal(5, 2);
  @sap.label : 'Per.liquid.dívidas'
  @sap.quickinfo : 'Período de liquidação de dívidas em anos'
  BPDebtClearancePeriodInYears : Decimal(5, 2);
  @sap.label : 'Coefic.financiamento'
  @sap.quickinfo : 'Coeficiente de financiamento da empresa em porcentagem'
  BPFinancingCoeffInPercent : Decimal(5, 2);
  @sap.label : 'Quota cap.próprio'
  @sap.quickinfo : 'Quota de capital próprio da empresa em porcentagem'
  BPEquityRatioInPercent : Decimal(5, 2);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Versão de endereço internacional PN'
entity api_business_partner.A_BPIntlAddressVersion {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº endereço'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Versão de endereço'
  @sap.quickinfo : 'Código de versão para endereços internacionais'
  key AddressRepresentationCode : String(1) not null;
  @sap.label : 'Nome completo'
  @sap.quickinfo : 'Nome completo da pessoa'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AddresseeFullName : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº endereço externo'
  @sap.quickinfo : 'Nº endereço em sistema externo'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AddressIDByExternalSystem : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº pessoa'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AddressPersonID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Termo de pesquisa 1'
  AddressSearchTerm1 : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Termo de pesquisa 2'
  AddressSearchTerm2 : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fuso horário'
  @sap.quickinfo : 'Fuso horário do endereço'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AddressTimeZone : String(6);
  @sap.label : 'C/o'
  @sap.quickinfo : 'Nome c/o'
  CareOfName : String(40);
  @sap.label : 'Cidade'
  CityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº da localidade'
  @sap.quickinfo : 'Codificação da localidade para file de localidades e ruas'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CityNumber : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cód.postal empresa'
  @sap.quickinfo : 'Código postal da empresa (para clientes importantes)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CompanyPostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chave do país/região'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Country : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº serviço entrega'
  @sap.quickinfo : 'Nº do serviço de entrega'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DeliveryServiceNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tp.serv.entrega'
  @sap.quickinfo : 'Tipo do serviço de entrega'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DeliveryServiceTypeCode : String(4);
  @sap.label : 'Bairro'
  DistrictName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chv.FrmTrat.'
  @sap.quickinfo : 'Chave de forma de tratamento'
  FormOfAddress : String(4);
  @sap.label : 'Nº'
  HouseNumber : String(10);
  @sap.label : 'Suplemento'
  @sap.quickinfo : 'Complemento do nº'
  HouseNumberSupplementText : String(10);
  @sap.label : 'Código de idioma'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Language : String(2);
  @sap.label : 'Nome'
  @sap.quickinfo : 'Nome 1'
  OrganizationName1 : String(40);
  @sap.label : 'Nome 2'
  OrganizationName2 : String(40);
  @sap.label : 'Nome 3'
  OrganizationName3 : String(40);
  @sap.label : 'Nome 4'
  OrganizationName4 : String(40);
  @sap.label : 'Sobrenome'
  PersonFamilyName : String(40);
  @sap.label : '1º nome'
  PersonGivenName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Caixa postal'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  POBox : String(10);
  @sap.label : 'Localidade cx.postal'
  @sap.quickinfo : 'Localidade da caixa postal'
  POBoxDeviatingCityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'País/região CxPostal'
  @sap.quickinfo : 'País/região da caixa postal'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  POBoxDeviatingCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Região para CP'
  @sap.quickinfo : 'Região para a caixa postal (país, estado, província, ...)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  POBoxDeviatingRegion : String(3);
  @sap.label : 'Caixa postal sem nº'
  @sap.quickinfo : 'Código: indicação de caixa postal sem nº'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  POBoxIsWithoutNumber : Boolean;
  @sap.label : 'Agência caixa postal'
  @sap.quickinfo : 'Agência da caixa postal (PO Box Lobby)'
  POBoxLobbyName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CEP CxPostal'
  @sap.quickinfo : 'Código postal da cx.postal'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  POBoxPostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Código postal'
  @sap.quickinfo : 'Código postal da cidade'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Meio de comunicação'
  @sap.quickinfo : 'Meio comunicação (chave) (administração endereços central)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PrfrdCommMediumType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Região'
  @sap.quickinfo : 'Região (estado, província, condado)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Region : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Código de município'
  @sap.quickinfo : 'Código para município'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SecondaryRegion : String(8);
  @sap.label : 'Distrito'
  SecondaryRegionName : String(40);
  @sap.label : 'Rua'
  StreetName : String(60);
  @sap.label : 'Rua 2'
  StreetPrefixName1 : String(40);
  @sap.label : 'Rua 3'
  StreetPrefixName2 : String(40);
  @sap.label : 'Rua 4'
  StreetSuffixName1 : String(40);
  @sap.label : 'Rua 5'
  StreetSuffixName2 : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Domicílio fiscal'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Código de cidade'
  @sap.quickinfo : 'Código para cidade'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TertiaryRegion : String(8);
  @sap.label : 'Cidade'
  TertiaryRegionName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Zona de transporte'
  @sap.quickinfo : 'Zona de transporte para a qual ou da qual é fornecido'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TransportZone : String(10);
  @sap.label : 'Local.resid.difer.'
  @sap.quickinfo : 'Localidade de residência (diferente da localidade postal)'
  VillageName : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Relação entre os parceiros de negócios'
entity api_business_partner.A_BPRelationship {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº de relação PN'
  @sap.quickinfo : 'Nº de relação parceiro de negócios'
  key RelationshipNumber : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner1 : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner2 : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Válido até'
  @sap.quickinfo : 'Data de validade (válido até)'
  key ValidityEndDate : Date not null;
  @sap.display.format : 'Date'
  @sap.label : 'Válido desde'
  @sap.quickinfo : 'Data de validade (válido desde)'
  ValidityStartDate : Date;
  @sap.label : 'Padrão'
  @sap.quickinfo : 'Relação padrão'
  IsStandardRelationship : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo de relação'
  @sap.quickinfo : 'Parceiro de negócios - tipo de relação'
  RelationshipCategory : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo de relação'
  @sap.quickinfo : 'Tipo de relação de parceiros de negócios'
  BPRelationshipType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Criado por'
  @sap.quickinfo : 'Usuário que criou o objeto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Dta.criação'
  @sap.quickinfo : 'Data na qual o objeto foi criado'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date;
  @sap.label : 'Criado às'
  @sap.quickinfo : 'Hora a que o objeto foi criado'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationTime : Time;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Modificado por'
  @sap.quickinfo : 'Usuário que modificou o objeto pela última vez'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Modificado em'
  @sap.quickinfo : 'Data da última modificação do objeto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeDate : Date;
  @sap.label : 'Modificado às'
  @sap.quickinfo : 'Hora a que o objeto foi modificado pela última vez'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeTime : Time;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Conformidade fiscal'
entity api_business_partner.A_BPTaxCompliance {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID'
  @sap.quickinfo : 'ID de conformidade fiscal'
  key BPTaxComplianceID : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo'
  @sap.quickinfo : 'Tipo de conformidade fiscal'
  BPTaxComplianceType : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'País/região'
  @sap.quickinfo : 'Conformidade fiscal: país/região'
  BPTaxComplianceCountryRegion : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Região'
  @sap.quickinfo : 'Conformidade fiscal: região'
  BPTaxComplianceRegion : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status'
  @sap.quickinfo : 'Status de conformidade fiscal'
  BPTaxComplianceStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Motivo'
  @sap.quickinfo : 'Conformidade fiscal: motivo para status'
  BPTaxComplianceStatusReason : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'válido de'
  @sap.quickinfo : 'Conformidade fiscal: data de início'
  BPTaxComplianceValidFromDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'válido até'
  @sap.quickinfo : 'Conformidade fiscal: data final'
  BPTaxComplianceValidToDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Data de avaliação'
  @sap.quickinfo : 'Conformidade fiscal: data da avaliação'
  BPTaxComplianceRatingDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Aprovação'
  @sap.quickinfo : 'Conformidade fiscal: status de aprovação'
  BPTaxComplianceAgreementStatus : String(1);
  @sap.display.format : 'Date'
  @sap.label : 'Data de aprovação'
  @sap.quickinfo : 'Conformidade fiscal: data de aprovação'
  BPTaxComplianceAgreementDate : Date;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Utilização do endereço'
entity api_business_partner.A_BuPaAddressUsage {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Válido até'
  @sap.quickinfo : 'Fim da validade de uma utilização de endereço de PN'
  key ValidityEndDate : DateTime not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo de endereço'
  key AddressUsage : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº endereço'
  key AddressID : String(10) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Válido desde'
  @sap.quickinfo : 'Início da validade de uma utilização de endereço de PN'
  ValidityStartDate : DateTime;
  @sap.label : 'Utilização padrão'
  @sap.quickinfo : 'Código: endereço padrão de uma utilização de endereço'
  StandardUsage : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo autorizações'
  @sap.quickinfo : 'Grupo de autorizações'
  AuthorizationGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Identificação'
entity api_business_partner.A_BuPaIdentification {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo identificação'
  @sap.quickinfo : 'Tipo de identificação'
  key BPIdentificationType : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº de identificação'
  key BPIdentificationNumber : String(60) not null;
  @sap.label : 'Instituição respons.'
  @sap.quickinfo : 'Instituição responsável p/nº de identificação'
  BPIdnNmbrIssuingInstitute : String(40);
  @sap.display.format : 'Date'
  @sap.label : 'Data da entrada'
  @sap.quickinfo : 'Data da entrada p/nº de identificação'
  BPIdentificationEntryDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'País/região'
  @sap.quickinfo : 'País/região em que um nº de ID é válido ou foi atribuído'
  Country : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Região'
  @sap.quickinfo : 'Região (estado, província, condado)'
  Region : String(3);
  @sap.display.format : 'Date'
  @sap.label : 'Válido desde'
  @sap.quickinfo : 'Início de validade do nº de identificação'
  ValidityStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Válido até'
  @sap.quickinfo : 'Fim de validade do nº de identificação'
  ValidityEndDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo autorizações'
  @sap.quickinfo : 'Grupo de autorizações'
  AuthorizationGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Setor'
entity api_business_partner.A_BuPaIndustry {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Setor industrial'
  key IndustrySector : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sist.setorial'
  @sap.quickinfo : 'Sistema setorial'
  key IndustrySystemType : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Setor industr.padrão'
  @sap.quickinfo : 'Setor industrial é padrão no sistema de setor industrial'
  IsStandardIndustry : String(1);
  @sap.label : 'Denominação'
  IndustryKeyDescription : String(100);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Parceiro de negócios'
entity api_business_partner.A_BusinessPartner {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Nº cliente'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Customer : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fornecedor'
  @sap.quickinfo : 'Nº conta do fornecedor'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Supplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Título acadêmico 1'
  @sap.quickinfo : 'Título acadêmico: chave'
  AcademicTitle : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo autorizações'
  @sap.quickinfo : 'Grupo de autorizações'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ctg.parc.negócios'
  @sap.quickinfo : 'Categoria do parceiro de negócios'
  BusinessPartnerCategory : String(1);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BusinessPartnerFullName : String(81);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Agrupamento'
  @sap.quickinfo : 'Agrupamento de parceiros de negócios'
  BusinessPartnerGrouping : String(4);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BusinessPartnerName : String(81);
  @sap.label : 'GUID PN'
  @sap.quickinfo : 'GUID de um parceiro de negócios'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BusinessPartnerUUID : UUID;
  @sap.label : 'Idioma correspondên.'
  @sap.quickinfo : 'Parceiro de negócio: idioma de correspondência'
  CorrespondenceLanguage : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Criado por'
  @sap.quickinfo : 'Usuário que criou o objeto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Dta.criação'
  @sap.quickinfo : 'Data na qual o objeto foi criado'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date;
  @sap.label : 'Criado às'
  @sap.quickinfo : 'Hora a que o objeto foi criado'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationTime : Time;
  @sap.label : '1º nome'
  @sap.quickinfo : '1º nome do parceiro de negócios (pessoa)'
  FirstName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chv.FrmTrat.'
  @sap.quickinfo : 'Chave de forma de tratamento'
  FormOfAddress : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Setor industrial'
  Industry : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nº global localiz.1'
  @sap.quickinfo : 'Nº global de localização (parte 1)'
  InternationalLocationNumber1 : String(7);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nº global localiz.2'
  @sap.quickinfo : 'Número global de localização (parte 2)'
  InternationalLocationNumber2 : String(5);
  @sap.label : 'Feminino'
  @sap.quickinfo : 'Seleção: parceiro de negócios feminino'
  IsFemale : Boolean;
  @sap.label : 'Masculino'
  @sap.quickinfo : 'Seleção: parceiro de negócios masculino'
  IsMale : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pessoa física'
  @sap.quickinfo : 'Parceiro negócios é válido como pessoa física a nível fiscal'
  IsNaturalPerson : String(1);
  @sap.label : 'Desconhecido'
  @sap.quickinfo : 'Seleção: sexo do parceiro de negócios desconhecido'
  IsSexUnknown : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sexo'
  @sap.quickinfo : 'Sexo do parceiro de negócios (pessoa)'
  GenderCodeName : String(1);
  @sap.label : 'Idioma'
  @sap.quickinfo : 'Parceiro de negócio: idioma'
  Language : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Modificado em'
  @sap.quickinfo : 'Data da última modificação do objeto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeDate : Date;
  @sap.label : 'Modificado às'
  @sap.quickinfo : 'Hora a que o objeto foi modificado pela última vez'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeTime : Time;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Modificado por'
  @sap.quickinfo : 'Usuário que modificou o objeto pela última vez'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangedByUser : String(12);
  @sap.label : 'Sobrenome'
  @sap.quickinfo : 'Sobrenome do parceiro de negócios (pessoa)'
  LastName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Forma jurídica'
  @sap.quickinfo : 'PN: forma jurídica da organização'
  LegalForm : String(2);
  @sap.label : 'Nome 1'
  @sap.quickinfo : 'Nome 1 da organização'
  OrganizationBPName1 : String(40);
  @sap.label : 'Nome 2'
  @sap.quickinfo : 'Nome 2 da organização'
  OrganizationBPName2 : String(40);
  @sap.label : 'Nome 3'
  @sap.quickinfo : 'Nome 3 da organização'
  OrganizationBPName3 : String(40);
  @sap.label : 'Nome 4'
  @sap.quickinfo : 'Nome 4 da organização'
  OrganizationBPName4 : String(40);
  @sap.display.format : 'Date'
  @sap.label : 'Data de fundação'
  @sap.quickinfo : 'Data de fundação da organização'
  OrganizationFoundationDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Data da liquidação'
  @sap.quickinfo : 'Data de liquidação da organização'
  OrganizationLiquidationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Termo de pesquisa 1'
  @sap.quickinfo : 'Termo de pesquisa 1 para parceiro de negócios'
  SearchTerm1 : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Termo de pesquisa 2'
  @sap.quickinfo : 'Termo de pesquisa 2 para parceiro de negócios'
  SearchTerm2 : String(20);
  @sap.label : '2º sobrenome'
  @sap.quickinfo : '2º sobrenome da pessoa'
  AdditionalLastName : String(40);
  @sap.display.format : 'Date'
  @sap.label : 'Data de nascimento'
  @sap.quickinfo : 'Data de nascimento do parceiro de negócios'
  BirthDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Status dt.nascimento'
  @sap.quickinfo : 'Data de nascimento: status'
  BusinessPartnerBirthDateStatus : String(1);
  @sap.label : 'LocNascim.'
  @sap.quickinfo : 'Localidade de nascimento do parceiro de negócios'
  BusinessPartnerBirthplaceName : String(40);
  @sap.display.format : 'Date'
  @sap.label : 'Data de morte'
  @sap.quickinfo : 'Data de morte do parceiro de negócios'
  BusinessPartnerDeathDate : Date;
  @sap.label : 'Bloqueio central'
  @sap.quickinfo : 'Bloqueio central para parceiro de negócios'
  BusinessPartnerIsBlocked : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo PN'
  @sap.quickinfo : 'Tipo de parceiro de negócios'
  BusinessPartnerType : String(4);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ETag : String(26);
  @sap.label : 'Nome 1'
  @sap.quickinfo : 'Nome 1 (grupo)'
  GroupBusinessPartnerName1 : String(40);
  @sap.label : 'Nome 2'
  @sap.quickinfo : 'Nome 2 (grupo)'
  GroupBusinessPartnerName2 : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº do endereço'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IndependentAddressID : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Dígito de controle'
  @sap.quickinfo : 'Dígito de controle da matrícula internacional da empresa'
  InternationalLocationNumber3 : String(1);
  @sap.label : '2º nome'
  @sap.quickinfo : '2º nome ou nome do meio da pessoa'
  MiddleName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'País/região p/edição'
  @sap.quickinfo : 'País/região para regra de edição de nomes'
  NameCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Formato edição nomes'
  @sap.quickinfo : 'Formato para a edição de nomes'
  NameFormat : String(2);
  @sap.label : 'Nome completo'
  PersonFullName : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº pessoa'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PersonNumber : String(10);
  @sap.label : 'Marcação arquivmto.'
  @sap.quickinfo : 'Marcação para arquivamento central'
  IsMarkedForArchiving : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº parceiro externo'
  @sap.quickinfo : 'Nº parceiro de negócios no sistema externo'
  BusinessPartnerIDByExtSystem : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Formato impressão'
  @sap.quickinfo : 'Formato da impressão parceiro de negócios'
  BusinessPartnerPrintFormat : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ocupação'
  @sap.quickinfo : 'Ocupação do parceiro de negócios'
  BusinessPartnerOccupation : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Estado civil'
  @sap.quickinfo : 'Estado civil do parceiro de negócios'
  BusPartMaritalStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nacionalidade'
  @sap.quickinfo : 'Nacionalidade do parceiro de negócios'
  BusPartNationality : String(3);
  @sap.label : 'Sobrenome solteiro'
  @sap.quickinfo : 'Sobrenome de solteiro do parceiro de negócios'
  BusinessPartnerBirthName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Complemento do nome'
  @sap.quickinfo : 'Complemento do nome, p.ex.título nobiliárquico (chave)'
  BusinessPartnerSupplementName : String(4);
  @sap.label : 'Empregador'
  @sap.quickinfo : 'Nome do empregador de uma pessoa física'
  NaturalPersonEmployerName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chave de prefixo'
  @sap.quickinfo : 'Prefixo do nome (chave)'
  LastNamePrefix : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : '2º prefixo'
  @sap.quickinfo : '2º prefixo do nome (chave)'
  LastNameSecondPrefix : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Iniciais'
  @sap.quickinfo : 'Inicial do segundo nome ou iniciais da pessoa'
  Initials : String(10);
  @sap.label : 'Ctrldr.dds.não nec.'
  @sap.quickinfo : 'PN: controlador de dados não necessário'
  BPDataControllerIsNotRequired : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº soc.parceira'
  @sap.quickinfo : 'Nº sociedade parceira'
  TradingPartner : String(6);
  to_BPCreditWorthiness : Association to api_business_partner.A_BPCreditWorthiness {  };
  to_BPDataController : Association to many api_business_partner.A_BPDataController {  };
  to_BPEmployment : Association to many api_business_partner.A_BPEmployment {  };
  to_BPFinServicesReporting : Association to api_business_partner.A_BPFinancialServicesReporting {  };
  to_BPFiscalYearInformation : Association to many api_business_partner.A_BPFiscalYearInformation {  };
  to_BPRelationship : Association to many api_business_partner.A_BPRelationship {  };
  to_BPTaxCompliance : Association to many api_business_partner.A_BPTaxCompliance {  };
  to_BuPaIdentification : Association to many api_business_partner.A_BuPaIdentification {  };
  to_BuPaIndustry : Association to many api_business_partner.A_BuPaIndustry {  };
  to_BusinessPartner : Association to api_business_partner.A_BPFinancialServicesExtn {  };
  to_BusinessPartnerAddress : Association to many api_business_partner.A_BusinessPartnerAddress {  };
  to_BusinessPartnerAlias : Association to many api_business_partner.A_BusinessPartnerAlias {  };
  to_BusinessPartnerBank : Association to many api_business_partner.A_BusinessPartnerBank {  };
  to_BusinessPartnerContact : Association to many api_business_partner.A_BusinessPartnerContact {  };
  to_BusinessPartnerIsBank : Association to api_business_partner.A_BusinessPartnerIsBank {  };
  to_BusinessPartnerRating : Association to many api_business_partner.A_BusinessPartnerRating {  };
  to_BusinessPartnerRole : Association to many api_business_partner.A_BusinessPartnerRole {  };
  to_BusinessPartnerTax : Association to many api_business_partner.A_BusinessPartnerTaxNumber {  };
  to_BusPartAddrDepdntTaxNmbr : Association to many api_business_partner.A_BusPartAddrDepdntTaxNmbr {  };
  to_Customer : Association to api_business_partner.A_Customer {  };
  to_PaymentCard : Association to many api_business_partner.A_BusinessPartnerPaymentCard {  };
  to_Supplier : Association to api_business_partner.A_Supplier {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Endereço'
entity api_business_partner.A_BusinessPartnerAddress {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº endereço'
  key AddressID : String(10) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Válido desde'
  @sap.quickinfo : 'Início da validade de um endereço de parceiro de negócios'
  ValidityStartDate : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Válido até'
  @sap.quickinfo : 'Fim da validade de um endereço de parceiro de negócios'
  ValidityEndDate : DateTime;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo autorizações'
  @sap.quickinfo : 'Grupo de autorizações'
  AuthorizationGroup : String(4);
  @sap.label : 'GUID de um endereço de parceiro de negócios'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AddressUUID : UUID;
  @sap.label : 'Rua 3'
  AdditionalStreetPrefixName : String(40);
  @sap.label : 'Rua 5'
  AdditionalStreetSuffixName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fuso horário'
  @sap.quickinfo : 'Fuso horário do endereço'
  AddressTimeZone : String(6);
  @sap.label : 'C/o'
  @sap.quickinfo : 'Nome c/o'
  CareOfName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº da localidade'
  @sap.quickinfo : 'Codificação da localidade para file de localidades e ruas'
  CityCode : String(12);
  @sap.label : 'Cidade'
  CityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cód.postal empresa'
  @sap.quickinfo : 'Código postal da empresa (para clientes importantes)'
  CompanyPostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chave do país/região'
  Country : String(3);
  @sap.label : 'Distrito'
  County : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº serviço entrega'
  @sap.quickinfo : 'Nº do serviço de entrega'
  DeliveryServiceNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tp.serv.entrega'
  @sap.quickinfo : 'Tipo do serviço de entrega'
  DeliveryServiceTypeCode : String(4);
  @sap.label : 'Bairro'
  District : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chv.FrmTrat.'
  @sap.quickinfo : 'Chave de forma de tratamento'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FormOfAddress : String(4);
  @sap.label : 'Nome completo'
  @sap.quickinfo : 'Nome completo parte (PN, unid.organizacional, endereço doc.)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FullName : String(80);
  @sap.label : 'Local.resid.difer.'
  @sap.quickinfo : 'Localidade de residência (diferente da localidade postal)'
  HomeCityName : String(40);
  @sap.label : 'Nº'
  HouseNumber : String(10);
  @sap.label : 'Suplemento'
  @sap.quickinfo : 'Complemento do nº'
  HouseNumberSupplementText : String(10);
  @sap.label : 'Código de idioma'
  Language : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Caixa postal'
  POBox : String(10);
  @sap.label : 'Localidade cx.postal'
  @sap.quickinfo : 'Localidade da caixa postal'
  POBoxDeviatingCityName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'País/região CxPostal'
  @sap.quickinfo : 'País/região da caixa postal'
  POBoxDeviatingCountry : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Região para CP'
  @sap.quickinfo : 'Região para a caixa postal (país, estado, província, ...)'
  POBoxDeviatingRegion : String(3);
  @sap.label : 'Caixa postal sem nº'
  @sap.quickinfo : 'Código: indicação de caixa postal sem nº'
  POBoxIsWithoutNumber : Boolean;
  @sap.label : 'Agência caixa postal'
  @sap.quickinfo : 'Agência da caixa postal (PO Box Lobby)'
  POBoxLobbyName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'CEP CxPostal'
  @sap.quickinfo : 'Código postal da cx.postal'
  POBoxPostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº pessoa'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Person : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Código postal'
  @sap.quickinfo : 'Código postal da cidade'
  PostalCode : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Meio de comunicação'
  @sap.quickinfo : 'Meio comunicação (chave) (administração endereços central)'
  PrfrdCommMediumType : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Região'
  @sap.quickinfo : 'Região (estado, província, condado)'
  Region : String(3);
  @sap.label : 'Rua'
  StreetName : String(60);
  @sap.label : 'Rua 2'
  StreetPrefixName : String(40);
  @sap.label : 'Rua 4'
  StreetSuffixName : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Domicílio fiscal'
  TaxJurisdiction : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Zona de transporte'
  @sap.quickinfo : 'Zona de transporte para a qual ou da qual é fornecido'
  TransportZone : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº endereço externo'
  @sap.quickinfo : 'Nº endereço em sistema externo'
  AddressIDByExternalSystem : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Código de município'
  @sap.quickinfo : 'Código para município'
  CountyCode : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Código de cidade'
  @sap.quickinfo : 'Código para cidade'
  TownshipCode : String(8);
  @sap.label : 'Cidade'
  TownshipName : String(40);
  to_AddressUsage : Association to many api_business_partner.A_BuPaAddressUsage {  };
  to_BPAddrDepdntIntlLocNumber : Association to api_business_partner.A_BPAddrDepdntIntlLocNumber {  };
  to_BPIntlAddressVersion : Association to many api_business_partner.A_BPIntlAddressVersion {  };
  to_EmailAddress : Association to many api_business_partner.A_AddressEmailAddress {  };
  to_FaxNumber : Association to many api_business_partner.A_AddressFaxNumber {  };
  to_MobilePhoneNumber : Association to many api_business_partner.A_AddressPhoneNumber {  };
  to_PhoneNumber : Association to many api_business_partner.A_AddressPhoneNumber {  };
  to_URLAddress : Association to many api_business_partner.A_AddressHomePageURL {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Nomes adicionais'
entity api_business_partner.A_BusinessPartnerAlias {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item nomes de alias'
  @sap.quickinfo : 'Itens com nomes de parceiro de negócios/nomes de alias'
  key BPAliasPositionNumber : String(3) not null;
  @sap.label : 'Nome alias'
  @sap.quickinfo : 'Nome de alias do parceiro de negócios'
  BusinessPartnerAliasName : String(80);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Banco'
entity api_business_partner.A_BusinessPartnerBank {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID dds.bancários'
  @sap.quickinfo : 'ID de dados bancários'
  key BankIdentification : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'País/região do banco'
  @sap.quickinfo : 'Chave do país/região do banco'
  BankCountryKey : String(3);
  @sap.label : 'Inst.financ.'
  @sap.quickinfo : 'Nome da instituição financeira'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BankName : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chave do banco'
  BankNumber : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'SWIFT/BIC'
  @sap.quickinfo : 'SWIFT/BIC para pagamentos internacionais'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SWIFTCode : String(11);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chv.ctrl.bancos'
  @sap.quickinfo : 'Chave de controle de bancos'
  BankControlKey : String(2);
  @sap.label : 'Titular da conta'
  @sap.quickinfo : 'Nome do titular da conta'
  BankAccountHolderName : String(60);
  @sap.label : 'Denominação da conta'
  @sap.quickinfo : 'Denominação dos dados bancários'
  BankAccountName : String(40);
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Válido desde'
  @sap.quickinfo : 'Início validade de dados bancários de parceiro de negócios'
  ValidityStartDate : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Válido até'
  @sap.quickinfo : 'Fim da validade de dados bancários de parceiro de negócios'
  ValidityEndDate : DateTime;
  @sap.display.format : 'UpperCase'
  @sap.label : 'IBAN'
  @sap.quickinfo : 'IBAN (International Bank Account Number)'
  IBAN : String(34);
  @sap.display.format : 'Date'
  @sap.label : 'IBAN válido de'
  @sap.quickinfo : 'Início de validade do IBAN'
  IBANValidityStartDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Conta bancária'
  @sap.quickinfo : 'Nº conta bancária'
  BankAccount : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Indicação referência'
  @sap.quickinfo : 'Indicação de referência para os dados bancários'
  BankAccountReferenceText : String(20);
  @sap.label : 'Autoriz.DébDir.'
  @sap.quickinfo : 'Código: autorização de débito direto'
  CollectionAuthInd : Boolean;
  @sap.label : 'Cidade'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CityName : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo autorizações'
  @sap.quickinfo : 'Grupo de autorizações'
  AuthorizationGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Contato'
entity api_business_partner.A_BusinessPartnerContact {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº de relação PN'
  @sap.quickinfo : 'Nº de relação parceiro de negócios'
  key RelationshipNumber : String(12) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartnerCompany : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartnerPerson : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Válido até'
  @sap.quickinfo : 'Data de validade (válido até)'
  key ValidityEndDate : Date not null;
  @sap.display.format : 'Date'
  @sap.label : 'Válido desde'
  @sap.quickinfo : 'Data de validade (válido desde)'
  ValidityStartDate : Date;
  @sap.label : 'Padrão'
  @sap.quickinfo : 'Relação padrão'
  IsStandardRelationship : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo de relação'
  @sap.quickinfo : 'Parceiro de negócios - tipo de relação'
  RelationshipCategory : String(6);
  to_ContactAddress : Association to many api_business_partner.A_BPContactToAddress {  };
  to_ContactRelationship : Association to api_business_partner.A_BPContactToFuncAndDept {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Parceiro é banco'
entity api_business_partner.A_BusinessPartnerIsBank {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chave do banco'
  BankKey : String(15);
  @sap.display.format : 'UpperCase'
  @sap.label : 'País/região do banco'
  @sap.quickinfo : 'Chave do país/região do banco'
  BankCountry : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Obrigat.reserva mín.'
  @sap.quickinfo : 'Obrigatoriedade de reserva mínima da instituição de crédito'
  BPMinimumReserve : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Cartão de pagamento do parceiro de negócios'
entity api_business_partner.A_BusinessPartnerPaymentCard {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID cartão pagamento'
  @sap.quickinfo : 'ID de cartão de pagamento'
  key PaymentCardID : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tp.cartão pgto.'
  @sap.quickinfo : 'Tipo de cartão de pagamento'
  key PaymentCardType : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº do cartão'
  @sap.quickinfo : 'Cartões de pagamento: nº cartão'
  key CardNumber : String(25) not null;
  @sap.label : 'Cartão standard'
  @sap.quickinfo : 'PN: cartão de pagamento padrão'
  IsStandardCard : Boolean;
  @sap.label : 'Denominação'
  @sap.quickinfo : 'Denominação dos dados do cartão de crédito'
  CardDescription : String(40);
  @sap.display.format : 'Date'
  @sap.label : 'Cartão válido desde'
  @sap.quickinfo : 'Cartões de pagamento: válido desde'
  ValidityDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Cartão válido até'
  @sap.quickinfo : 'Cartões de pagamento: válido até'
  ValidityEndDate : Date;
  @sap.label : 'Titular do cartão'
  @sap.quickinfo : 'Cartões de pagamento: nome do titular do cartão'
  CardHolder : String(40);
  @sap.label : 'Banco emitente'
  @sap.quickinfo : 'Cartões de pagamento: banco emitente'
  CardIssuingBank : String(40);
  @sap.display.format : 'Date'
  @sap.label : 'Saído em'
  @sap.quickinfo : 'Cartões de pagamento: data de saída'
  CardIssueDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bloqueio do cartão'
  @sap.quickinfo : 'Cartões de pagamento: causa do bloqueio de um cartão pgto.'
  PaymentCardLock : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº do cartão'
  @sap.quickinfo : 'Nº de cartão de pagamento mascarado (pagamento digital)'
  MaskedCardNumber : String(25);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Classificações'
entity api_business_partner.A_BusinessPartnerRating {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @sap.label : 'Processo avaliação'
  @sap.quickinfo : 'Processo de avaliação'
  key BusinessPartnerRatingProcedure : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Avaliação válida até'
  @sap.quickinfo : 'Fim da validade da avaliação'
  key BPRatingValidityEndDate : Date not null;
  @sap.label : 'Avaliação'
  BusinessPartnerRatingGrade : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tendência'
  BusinessPartnerRatingTrend : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Avaliação vál.desde'
  @sap.quickinfo : 'Início da validade da avaliação'
  BPRatingValidityStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Avaliado em'
  @sap.quickinfo : 'Data de entrada da avaliação'
  BPRatingCreationDate : Date;
  @sap.label : 'Texto'
  @sap.quickinfo : 'Textos para avaliações'
  BusinessPartnerRatingComment : String(60);
  @sap.label : 'Autoriz.avaliação'
  @sap.quickinfo : 'Autorização de avaliação'
  BusinessPartnerRatingIsAllowed : Boolean;
  @sap.label : 'Avaliação válida'
  @sap.quickinfo : 'A avaliação de parceiro de negócios é válida na data fixada'
  BPRatingIsValidOnKeyDate : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Data de acesso'
  @sap.quickinfo : 'Data fixada para acesso a dados avaliação parceiro negócios'
  BusinessPartnerRatingKeyDate : Date;
  @sap.label : 'Avaliação expirada'
  @sap.quickinfo : 'Validade de avaliação expirada segundo período permitido'
  BusinessPartnerRatingIsExpired : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Função'
entity api_business_partner.A_BusinessPartnerRole {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Função PN'
  @sap.quickinfo : 'Função de parceiro de negócios'
  key BusinessPartnerRole : String(6) not null;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Válido desde'
  @sap.quickinfo : 'Início de validade de uma função PN'
  ValidFrom : DateTime;
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.label : 'Válido até'
  @sap.quickinfo : 'Fim da validade de uma função PN'
  ValidTo : DateTime;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo autorizações'
  @sap.quickinfo : 'Grupo de autorizações'
  AuthorizationGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Número fiscal'
entity api_business_partner.A_BusinessPartnerTaxNumber {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo nº fiscal'
  @sap.quickinfo : 'Tipo de nº fiscal'
  key BPTaxType : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'NºID fiscal'
  @sap.quickinfo : 'Nº ID fiscal para parceiro de negócios'
  BPTaxNumber : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'NIF longo'
  @sap.quickinfo : 'Nº de identificação fiscal do parceiro de negócios'
  BPTaxLongNumber : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo autorizações'
  @sap.quickinfo : 'Grupo de autorizações'
  AuthorizationGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Números de identificação fiscal dependentes de endereço PN'
entity api_business_partner.A_BusPartAddrDepdntTaxNmbr {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Parceiro de negócios'
  @sap.quickinfo : 'Nº parceiro de negócios'
  key BusinessPartner : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº endereço'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo nº fiscal'
  @sap.quickinfo : 'Tipo de nº fiscal'
  key BPTaxType : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'NºID fiscal'
  @sap.quickinfo : 'Nº ID fiscal para parceiro de negócios'
  BPTaxNumber : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'NIF longo'
  @sap.quickinfo : 'Nº de identificação fiscal do parceiro de negócios'
  BPTaxLongNumber : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo autorizações'
  @sap.quickinfo : 'Grupo de autorizações'
  AuthorizationGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Identificador externo dependente de endereço de cliente'
entity api_business_partner.A_CustAddrDepdntExtIdentifier {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Nº cliente'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº endereço'
  @sap.quickinfo : 'Nº de endereço de parceiro de negócios (de BUT020)'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'IDEndClnt.DefP.vend.'
  @sap.quickinfo : 'ID de endereço do cliente definido pelo vendedor para EDI'
  CustomerExternalRefID : String(12);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Informações dependentes do endereço do cliente'
entity api_business_partner.A_CustAddrDepdntInformation {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Nº cliente'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº endereço'
  @sap.quickinfo : 'Nº de endereço de parceiro de negócios (de BUT020)'
  key AddressID : String(10) not null;
  @sap.label : 'EstFrrExpExpr.'
  @sap.quickinfo : 'Estação ferroviária para expedição por expresso'
  ExpressTrainStationName : String(25);
  @sap.label : 'Estação ferroviária'
  TrainStationName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Código da cidade'
  CityCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'County Code'
  @sap.quickinfo : 'Código de distrito'
  County : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Cliente'
entity api_business_partner.A_Customer {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Nº cliente'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autorização'
  @sap.quickinfo : 'Grupo autorizações'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bloq.faturam.'
  @sap.quickinfo : 'Bloqueio centralizado de faturamento para cliente'
  BillingIsBlockedForCustomer : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Criado por'
  @sap.quickinfo : 'Nome do responsável que adicionou o objeto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Dta.criação'
  @sap.quickinfo : 'Data de criação do registro'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de contas'
  @sap.quickinfo : 'Grupo de contas do cliente'
  CustomerAccountGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Classif.clientes'
  @sap.quickinfo : 'Classificação de clientes'
  CustomerClassification : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nome do cliente'
  @sap.quickinfo : 'Nome completo do cliente'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CustomerFullName : String(220);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nome do cliente'
  @sap.quickinfo : 'Nome completo do cliente'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BPCustomerFullName : String(220);
  @sap.label : 'Nome do cliente'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CustomerName : String(80);
  @sap.label : 'Nome do cliente'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BPCustomerName : String(81);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bloq.remessa'
  @sap.quickinfo : 'Bloqueio de remessa centralizado para cliente'
  DeliveryIsBlocked : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Atributo 1'
  FreeDefinedAttribute01 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Atributo 2'
  FreeDefinedAttribute02 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Atributo 3'
  FreeDefinedAttribute03 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Atributo 4'
  FreeDefinedAttribute04 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Atributo 5'
  FreeDefinedAttribute05 : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Atributo 6'
  FreeDefinedAttribute06 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Atributo 7'
  FreeDefinedAttribute07 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Atributo 8'
  FreeDefinedAttribute08 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Atributo 9'
  FreeDefinedAttribute09 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Atributo 10'
  FreeDefinedAttribute10 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pessoa física'
  NFPartnerIsNaturalPerson : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bloqueio ordem'
  @sap.quickinfo : 'Bloqueio de ordem centralizado para cliente'
  OrderIsBlockedForCustomer : String(2);
  @sap.label : 'Bloqueio cont.'
  @sap.quickinfo : 'Bloqueio central contabilização'
  PostingIsBlocked : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fornecedor'
  @sap.quickinfo : 'Nº conta do fornecedor'
  Supplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chave grupo empresas'
  @sap.quickinfo : 'Chave do grupo de empresas'
  CustomerCorporateGroup : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Endereço fiscal'
  @sap.quickinfo : 'Nº conta do registro mestre com o endereço fiscal'
  FiscalAddress : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Setor industrial'
  @sap.quickinfo : 'Chave do setor industrial'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Industry : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Code setor ind. 1'
  @sap.quickinfo : 'Code setor industrial 1'
  IndustryCode1 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Code setor ind. 2'
  @sap.quickinfo : 'Code setor industrial 2'
  IndustryCode2 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Code setor ind. 3'
  @sap.quickinfo : 'Code setor industrial 3'
  IndustryCode3 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Code setor ind. 4'
  @sap.quickinfo : 'Code setor industrial 4'
  IndustryCode4 : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Code setor ind. 5'
  @sap.quickinfo : 'Code setor industrial 5'
  IndustryCode5 : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nº global localiz.1'
  @sap.quickinfo : 'Nº global de localização (parte 1)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  InternationalLocationNumber1 : String(7);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nº global localiz.2'
  @sap.quickinfo : 'Número global de localização (parte 2)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  InternationalLocationNumber2 : String(5);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Dígito de controle'
  @sap.quickinfo : 'Dígito de controle da matrícula internacional da empresa'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  InternationalLocationNumber3 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Zona Nielsen'
  NielsenRegion : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Motivo do pagamento'
  PaymentReason : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo de imposto'
  ResponsibleType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº ID fiscal 1'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber1 : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº ID fiscal 2'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber2 : String(11);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº ident.fiscal 3'
  @sap.quickinfo : 'Nº identificação fiscal 3'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber3 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº ident.fiscal 4'
  @sap.quickinfo : 'Nº identificação fiscal 4'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber4 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'NºIdentFiscal 5'
  @sap.quickinfo : 'Número identificação fiscal 5'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber5 : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo nº fiscal'
  TaxNumberType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº ID fiscal de IVA'
  @sap.quickinfo : 'Nº de identificação fiscal de IVA'
  VATRegistration : String(20);
  @sap.label : 'Marc.p/eliminar'
  @sap.quickinfo : 'Marcação central para eliminação do registro mestre'
  DeletionIndicator : Boolean;
  @sap.label : 'EstFrrExpExpr.'
  @sap.quickinfo : 'Estação ferroviária para expedição por expresso'
  ExpressTrainStationName : String(25);
  @sap.label : 'Estação ferroviária'
  TrainStationName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Código da cidade'
  CityCode : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'County Code'
  @sap.quickinfo : 'Código de distrito'
  County : String(3);
  to_CustAddrDepdntExtIdentifier : Association to many api_business_partner.A_CustAddrDepdntExtIdentifier {  };
  to_CustAddrDepdntInformation : Association to many api_business_partner.A_CustAddrDepdntInformation {  };
  to_CustomerCompany : Association to many api_business_partner.A_CustomerCompany {  };
  to_CustomerSalesArea : Association to many api_business_partner.A_CustomerSalesArea {  };
  to_CustomerTaxGrouping : Association to many api_business_partner.A_CustomerTaxGrouping {  };
  to_CustomerText : Association to many api_business_partner.A_CustomerText {  };
  to_CustomerUnloadingPoint : Association to many api_business_partner.A_CustomerUnloadingPoint {  };
  to_CustUnldgPtAddrDepdntInfo : Association to many api_business_partner.A_CustUnldgPtAddrDepdntInfo {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Empresa do cliente'
entity api_business_partner.A_CustomerCompany {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Nº cliente'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Empresa'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de tolerância'
  @sap.quickinfo : 'Grupo de tolerância para o parceiro de negócios/cta.Razão'
  APARToleranceGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Conta no cliente'
  @sap.quickinfo : 'Nosso nº conta no cliente'
  AccountByCustomer : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sigla respons.'
  @sap.quickinfo : 'Sigla do responsável pela contabilidade'
  AccountingClerk : String(2);
  @sap.label : 'Telefax responsável'
  @sap.quickinfo : 'Nº telefax do responsável do parceiro de negócios'
  AccountingClerkFaxNumber : String(31);
  @sap.label : 'Ender.internet resp.'
  @sap.quickinfo : 'Endereço internet do responsável no parceiro'
  AccountingClerkInternetAddress : String(130);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telef.do responsável'
  @sap.quickinfo : 'Nº telefone do responsável do parceiro de negócios'
  AccountingClerkPhoneNumber : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pagador divergente'
  @sap.quickinfo : 'Nº conta de um pagador divergente'
  AlternativePayerAccount : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autorização'
  @sap.quickinfo : 'Grupo autorizações'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Var.fatura coletiva'
  @sap.quickinfo : 'Variante de fatura coletiva'
  CollectiveInvoiceVariant : String(1);
  @sap.label : 'Observação na conta'
  @sap.quickinfo : 'Observação'
  CustomerAccountNote : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sede'
  @sap.quickinfo : 'Nº conta da sede (para contas de filiais)'
  CustomerHeadOffice : String(10);
  @sap.label : 'Compensação c/fornec'
  @sap.quickinfo : 'Código: compensação entre cliente e fornecedor?'
  CustomerSupplierClearingIsUsed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Banco da empresa'
  @sap.quickinfo : 'Chave breve de um banco da empresa'
  HouseBank : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Código de juros'
  InterestCalculationCode : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Últ.Calc.Juros'
  @sap.quickinfo : 'Data fixada do último cálculo de juros'
  InterestCalculationDate : Date;
  @sap.display.format : 'NonNegative'
  @sap.label : 'PeriodCálcJuros'
  @sap.quickinfo : 'Periodicidade dos juros em meses'
  IntrstCalcFrequencyInMonths : String(2);
  @sap.label : 'Proc.descentralizado'
  @sap.quickinfo : 'Código: processamento descentralizado?'
  IsToBeLocallyProcessed : Boolean;
  @sap.label : 'Pagamento individual'
  @sap.quickinfo : 'Código: pagamento individual das partidas ?'
  ItemIsToBePaidSeparately : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chave ordenação'
  @sap.quickinfo : 'Chave para a ordenação por nºs atribuição'
  LayoutSortingRule : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bloq.pagamento'
  @sap.quickinfo : 'Chave de bloqueio para pagamento'
  PaymentBlockingReason : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Formas de pagamento'
  @sap.quickinfo : 'Lista de formas de pagamentos a considerar'
  PaymentMethodsList : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Motivo do pagamento'
  PaymentReason : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condições pgto.'
  @sap.quickinfo : 'Chave de condições de pagamento'
  PaymentTerms : String(4);
  @sap.label : 'Aviso pgto.via EDI'
  @sap.quickinfo : 'Código: enviar aviso de pagamento via EDI'
  PaytAdviceIsSentbyEDI : Boolean;
  @sap.label : 'Bloq.cont.empresa'
  @sap.quickinfo : 'Bloqueio de contabilização p/empresa'
  PhysicalInventoryBlockInd : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Conta de conciliação'
  @sap.quickinfo : 'Cta.de reconciliação na contabilidade geral'
  ReconciliationAccount : String(10);
  @sap.label : 'Reg.histórico pgtos.'
  @sap.quickinfo : 'Código: registrar histórico de pagamentos ?'
  RecordPaymentHistoryIndicator : Boolean;
  @sap.label : 'Encarregado no clien'
  @sap.quickinfo : 'Encarregado no cliente'
  UserAtCustomer : String(15);
  @sap.label : 'Marc.elim.empresa'
  @sap.quickinfo : 'Marcação p/eliminação do registro mestre (nível de empresa)'
  DeletionIndicator : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grp.admin.tesouraria'
  @sap.quickinfo : 'Grupo de administração de tesouraria'
  CashPlanningGroup : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Convenções férias'
  @sap.quickinfo : 'Chave breve para convenção de férias'
  KnownOrNegotiatedLeave : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ajuste do valor'
  @sap.quickinfo : 'Chave de ajuste do valor'
  ValueAdjustmentKey : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de contas'
  @sap.quickinfo : 'Grupo de contas do cliente'
  CustomerAccountGroup : String(4);
  to_CompanyText : Association to many api_business_partner.A_CustomerCompanyText {  };
  to_CustomerDunning : Association to many api_business_partner.A_CustomerDunning {  };
  to_WithHoldingTax : Association to many api_business_partner.A_CustomerWithHoldingTax {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Texto da empresa do cliente'
entity api_business_partner.A_CustomerCompanyText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Nº cliente'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Empresa'
  key CompanyCode : String(4) not null;
  @sap.label : 'Idioma'
  @sap.quickinfo : 'Código de idioma'
  key Language : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID de texto'
  key LongTextID : String(4) not null;
  @sap.label : 'Cadeia de caracteres'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  LongText : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Advertência cliente'
entity api_business_partner.A_CustomerDunning {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Nº cliente'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Empresa'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Área de advertência'
  key DunningArea : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bloq.advert.'
  @sap.quickinfo : 'Bloqueio de advertências'
  DunningBlock : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nível de advertência'
  DunningLevel : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Proced.adver.'
  @sap.quickinfo : 'Procedimento de advertência'
  DunningProcedure : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Destin.advert.'
  @sap.quickinfo : 'Nº conta do destinatário da advertência'
  DunningRecipient : String(10);
  @sap.display.format : 'Date'
  @sap.label : 'Última advert.'
  @sap.quickinfo : 'Data da última advertência'
  LastDunnedOn : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Proc.jud.cobrança'
  @sap.quickinfo : 'Data do processo judicial de cobrança'
  LegDunningProcedureOn : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Responsável adverts.'
  @sap.quickinfo : 'Responsável advertências'
  DunningClerk : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autorização'
  @sap.quickinfo : 'Grupo autorizações'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de contas'
  @sap.quickinfo : 'Grupo de contas do cliente'
  CustomerAccountGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Área de vendas'
entity api_business_partner.A_CustomerSalesArea {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Nº cliente'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Organização vendas'
  @sap.quickinfo : 'Organização de vendas'
  key SalesOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Canal distribuição'
  @sap.quickinfo : 'Canal de distribuição'
  key DistributionChannel : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Setor de atividade'
  key Division : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Conta no cliente'
  @sap.quickinfo : 'Nosso nº conta no cliente/fornecedore'
  AccountByCustomer : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo autorizações'
  @sap.quickinfo : 'Grupo de autorizações'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Blq.fat.ár.vnd.'
  @sap.quickinfo : 'Bloqueio de faturamento para cliente (nível VD)'
  BillingIsBlockedForCustomer : String(2);
  @sap.label : 'Fornecim.completo'
  @sap.quickinfo : 'Fornecimento completo definido para cada ordem do cliente'
  CompleteDeliveryIsDefined : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Área controle créd.'
  @sap.quickinfo : 'Área de controle de créditos'
  CreditControlArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Moeda'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.label : 'Admin.liquidação'
  @sap.quickinfo : 'Código: relevante para administração da liquidação'
  CustIsRlvtForSettlmtMgmt : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Classificação ABC'
  @sap.quickinfo : 'Classificação de clientes (análise ABC)'
  CustomerABCClassification : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grpo.ClassCont.clnt.'
  @sap.quickinfo : 'Grupo de classificações contábeis para cliente'
  CustomerAccountAssignmentGroup : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de clientes'
  CustomerGroup : String(2);
  @sap.label : 'Bônus'
  @sap.quickinfo : 'Código: cliente pode receber bônus'
  CustomerIsRebateRelevant : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condições pgto.'
  @sap.quickinfo : 'Chave de condições de pagamento'
  CustomerPaymentTerms : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo preços cliente'
  @sap.quickinfo : 'Grupo de preço do cliente'
  CustomerPriceGroup : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Esquema cliente'
  @sap.quickinfo : 'Classificação clientes p/determinação do esquema de cálculo'
  CustomerPricingProcedure : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Esq.clien. PropProd'
  @sap.quickinfo : 'Esquema cliente proposta prod.'
  CustProdProposalProcedure : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Blq.vend.ár.vnd'
  @sap.quickinfo : 'Bloqueio de remessa p/cliente (Vendas e Distribuição)'
  DeliveryIsBlockedForCustomer : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Prioridade remessa'
  @sap.quickinfo : 'Prioridade de remessa'
  DeliveryPriority : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms parte 1'
  IncotermsClassification : String(3);
  @sap.label : 'Local incoterms 2'
  IncotermsLocation2 : String(70);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Versão Incoterms'
  IncotermsVersion : String(4);
  @sap.label : 'Local incoterms 1'
  IncotermsLocation1 : String(70);
  @sap.label : 'UUID UG'
  @sap.quickinfo : 'UUID da unidade gerencial'
  IncotermsSupChnLoc1AddlUUID : UUID;
  @sap.label : 'UUID UG'
  @sap.quickinfo : 'UUID da unidade gerencial'
  IncotermsSupChnLoc2AddlUUID : UUID;
  @sap.label : 'UUID UG'
  @sap.quickinfo : 'UUID da unidade gerencial'
  IncotermsSupChnDvtgLocAddlUUID : UUID;
  @sap.label : 'Marc.elim.ár.vn'
  @sap.quickinfo : 'Marcação p/eliminar - cliente (nível Vendas e Distribuição)'
  DeletionIndicator : Boolean;
  @sap.label : 'Incoterms (parte 2)'
  IncotermsTransferLocation : String(28);
  @sap.label : 'Determ.preço'
  @sap.quickinfo : 'Código: ''relevante para determinação de preço'''
  InspSbstHasNoTimeOrQuantity : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Datas do faturamento'
  @sap.quickinfo : 'Datas do faturamento (identificação de calendário)'
  InvoiceDate : String(2);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Probabilidade ordem'
  @sap.quickinfo : 'Probabilidade de ordem do item'
  ItemOrderProbabilityInPercent : String(3);
  @sap.label : 'Atual.fatura manual'
  @sap.quickinfo : 'Atualização fatura manual'
  ManualInvoiceMaintIsRelevant : Boolean;
  @sap.label : 'Máx.forns.parciais'
  @sap.quickinfo : 'Número máximo de fornecimentos parciais permitidos por item'
  MaxNmbrOfPartialDelivery : Decimal(1, 0);
  @sap.label : 'Agrupamento ordens'
  @sap.quickinfo : 'Código de agrupamento de ordens'
  OrderCombinationIsAllowed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'BlqOrd.p/vendas'
  @sap.quickinfo : 'Bloqueio de ordem para cliente (área de vendas)'
  OrderIsBlockedForCustomer : String(2);
  @sap.label : 'Tol.fornec.excessivo'
  @sap.quickinfo : 'Limite de tolerância para fornecimento excessivo'
  OverdelivTolrtdLmtRatioInPct : Decimal(3, 1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Remessa parcial/item'
  @sap.quickinfo : 'Remessa parcial a nível de item'
  PartialDeliveryIsAllowed : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tp.lista prçs.'
  @sap.quickinfo : 'Tipo de lista de preços'
  PriceListType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo UM'
  @sap.quickinfo : 'Grupo unidade medida'
  ProductUnitGroup : String(4);
  @sap.label : 'Intervalo CRR'
  @sap.quickinfo : 'Intervalo para confirmação do recebimento'
  ProofOfDeliveryTimeValue : Decimal(6, 2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipe de vendas'
  SalesGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Proposta de itens'
  SalesItemProposal : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Escritório de vendas'
  SalesOffice : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condições expedição'
  @sap.quickinfo : 'Condições de expedição'
  ShippingCondition : String(2);
  @sap.label : 'Relevante p/CRR'
  @sap.quickinfo : 'Relevante p/processamto.CRR'
  SlsDocIsRlvtForProofOfDeliv : Boolean;
  @sap.label : 'Tolerância ilimitada'
  @sap.quickinfo : 'Fornec.excess.não limit.permitido'
  SlsUnlmtdOvrdelivIsAllwd : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Centro fornecedor'
  @sap.quickinfo : 'Centro fornecedor (próprio ou externo)'
  SupplyingPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Região de vendas'
  SalesDistrict : String(6);
  @sap.label : 'Tol.fornmto.incompl.'
  @sap.quickinfo : 'Limite de tolerância para fornecimento incompleto'
  UnderdelivTolrtdLmtRatioInPct : Decimal(3, 1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Datas lista faturas'
  @sap.quickinfo : 'Datas da lista de faturas (identificação de calendário)'
  InvoiceListSchedule : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ctg.taxa câmbio'
  @sap.quickinfo : 'Categoria da taxa de câmbio'
  ExchangeRateType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de clientes 1'
  AdditionalCustomerGroup1 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de clientes 2'
  AdditionalCustomerGroup2 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de clientes 3'
  AdditionalCustomerGroup3 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de clientes 4'
  AdditionalCustomerGroup4 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de clientes 5'
  AdditionalCustomerGroup5 : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Esquema de garantia'
  @sap.quickinfo : 'Esquema de garantia do cliente'
  PaymentGuaranteeProcedure : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de contas'
  @sap.quickinfo : 'Grupo de contas do cliente'
  CustomerAccountGroup : String(4);
  to_PartnerFunction : Association to many api_business_partner.A_CustSalesPartnerFunc {  };
  to_SalesAreaTax : Association to many api_business_partner.A_CustomerSalesAreaTax {  };
  to_SalesAreaText : Association to many api_business_partner.A_CustomerSalesAreaText {  };
  to_SlsAreaAddrDepdntInfo : Association to many api_business_partner.A_CustSlsAreaAddrDepdntInfo {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Imposto área vendas'
entity api_business_partner.A_CustomerSalesAreaTax {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Nº cliente'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Organização vendas'
  @sap.quickinfo : 'Organização de vendas'
  key SalesOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Can.dist.Cliente/Mat'
  @sap.quickinfo : 'Canal de distribuição para mestres de clientes e de mat.'
  key DistributionChannel : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Setor de atividade'
  key Division : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'País/reg.procedência'
  @sap.quickinfo : 'País/região procedência (do/da qual a mercadoria é expedida)'
  key DepartureCountry : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tp.cond.imposto'
  @sap.quickinfo : 'Tipo condição imposto (imposto sobre vendas, IVA,...)'
  key CustomerTaxCategory : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Classificação fiscal'
  @sap.quickinfo : 'Classificação fiscal do cliente'
  CustomerTaxClassification : String(1);
  to_SlsAreaAddrDepdntTax : Association to many api_business_partner.A_CustSlsAreaAddrDepdntTaxInfo {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Texto da área de vendas do cliente'
entity api_business_partner.A_CustomerSalesAreaText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Nº cliente'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Organização vendas'
  @sap.quickinfo : 'Organização de vendas'
  key SalesOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Canal distribuição'
  @sap.quickinfo : 'Canal de distribuição'
  key DistributionChannel : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Setor de atividade'
  key Division : String(2) not null;
  @sap.label : 'Idioma'
  @sap.quickinfo : 'Código de idioma'
  key Language : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID de texto'
  key LongTextID : String(4) not null;
  @sap.label : 'Cadeia de caracteres'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  LongText : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.content.version : '1'
@sap.label : 'Agrupamento de impostos de cliente'
entity api_business_partner.A_CustomerTaxGrouping {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Nº cliente'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ctg.fiscal'
  @sap.quickinfo : 'Código de categorização para códigos de impostos'
  key CustomerTaxGroupingCode : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Exempt. Number'
  @sap.quickinfo : 'Number of exemption certificate'
  CustTaxGrpExemptionCertificate : String(15);
  @sap.label : 'Exemption Rate'
  @sap.quickinfo : 'Exemption rate'
  CustTaxGroupExemptionRate : Decimal(5, 2);
  @sap.display.format : 'Date'
  @sap.label : 'Exempted from'
  @sap.quickinfo : 'Start date of exemption'
  CustTaxGroupExemptionStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Exempted until'
  @sap.quickinfo : 'End date of exemption'
  CustTaxGroupExemptionEndDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'subjected from'
  @sap.quickinfo : 'Subjected from'
  CustTaxGroupSubjectedStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'subjected until'
  @sap.quickinfo : 'Subjected until'
  CustTaxGroupSubjectedEndDate : Date;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Txt.clien.'
entity api_business_partner.A_CustomerText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Nº cliente'
  key Customer : String(10) not null;
  @sap.label : 'Idioma'
  @sap.quickinfo : 'Código de idioma'
  key Language : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID de texto'
  key LongTextID : String(4) not null;
  @sap.label : 'Cadeia de caracteres'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  LongText : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Ponto de descarga do cliente'
entity api_business_partner.A_CustomerUnloadingPoint {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Nº cliente'
  key Customer : String(10) not null;
  @sap.label : 'Ponto de descarga'
  key UnloadingPointName : String(25) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Calendário cliente'
  @sap.quickinfo : 'Calendário de fábrica do cliente'
  CustomerFactoryCalenderCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Horários entr.merc.'
  @sap.quickinfo : 'ID do horário entrada mercadorias (nº proposto)'
  BPGoodsReceivingHoursCode : String(3);
  @sap.label : 'Pto.descarga default'
  @sap.quickinfo : 'Ponto de descarga default'
  IsDfltBPUnloadingPoint : Boolean;
  @sap.label : 'Segunda-feira'
  @sap.quickinfo : 'Horários de receb. mercad.: 2ª feira de manhã a partir das'
  MondayMorningOpeningTime : Time;
  @sap.label : '2ª-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: segunda de manhã até...'
  MondayMorningClosingTime : Time;
  @sap.label : '2ª-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: segunda à tarde a partir das...'
  MondayAfternoonOpeningTime : Time;
  @sap.label : '2ª-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: segunda à tarde até...'
  MondayAfternoonClosingTime : Time;
  @sap.label : 'Terça-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: terças de manhã a partir das...'
  TuesdayMorningOpeningTime : Time;
  @sap.label : 'Terça-feira'
  @sap.quickinfo : 'Horários recebim.-mercadoria: terças de manhã até ...'
  TuesdayMorningClosingTime : Time;
  @sap.label : 'Terça-feira'
  @sap.quickinfo : 'Horários recebim.-mercadoria: terças de tarde a partir das..'
  TuesdayAfternoonOpeningTime : Time;
  @sap.label : 'Terça-feira'
  @sap.quickinfo : 'Horários recebim.-mercadoria: terças de tarde até ...'
  TuesdayAfternoonClosingTime : Time;
  @sap.label : '4ª-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: quarta de manhã a partir das...'
  WednesdayMorningOpeningTime : Time;
  @sap.label : '4ª-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: quarta de manhã até...'
  WednesdayMorningClosingTime : Time;
  @sap.label : '4ª-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: quarta à tarde a partir das...'
  WednesdayAfternoonOpeningTime : Time;
  @sap.label : '4ª-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: quarta à tarde até ...'
  WednesdayAfternoonClosingTime : Time;
  @sap.label : 'Quinta-feira'
  @sap.quickinfo : 'Horários recebim.-mercadoria: quintas de manhã a partir d/..'
  ThursdayMorningOpeningTime : Time;
  @sap.label : 'Quinta-feira'
  @sap.quickinfo : 'Horários recebim.-mercadoria: quintas de manhã até ...'
  ThursdayMorningClosingTime : Time;
  @sap.label : 'Quinta-feira'
  @sap.quickinfo : 'Horários recebim.-mercadoria: quintas de tarde a partir d/..'
  ThursdayAfternoonOpeningTime : Time;
  @sap.label : 'Quinta-feira'
  @sap.quickinfo : 'Horários recebim.-mercadoria: quintas de tarde até ...'
  ThursdayAfternoonClosingTime : Time;
  @sap.label : 'Sexta-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: sexta de manhã a partir das...'
  FridayMorningOpeningTime : Time;
  @sap.label : 'Sexta-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: sexta de manhã até...'
  FridayMorningClosingTime : Time;
  @sap.label : 'Sexta-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: sexta à tarde a partir das...'
  FridayAfternoonOpeningTime : Time;
  @sap.label : 'Sexta-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: sexta à tarde até...'
  FridayAfternoonClosingTime : Time;
  @sap.label : 'Sábado'
  @sap.quickinfo : 'Horários recebim.-mercadoria: sábados de manhã a partir das'
  SaturdayMorningOpeningTime : Time;
  @sap.label : 'Sábado'
  @sap.quickinfo : 'Horários recebim.-mercadoria: sábados de manhã até ...'
  SaturdayMorningClosingTime : Time;
  @sap.label : 'Sábado'
  @sap.quickinfo : 'Horários recebim.-mercadoria: sábados de tarde a partir das.'
  SaturdayAfternoonOpeningTime : Time;
  @sap.label : 'Sábado'
  @sap.quickinfo : 'Horários recebim.-mercadoria: sábados de tarde até ...'
  SaturdayAfternoonClosingTime : Time;
  @sap.label : 'Domingo'
  @sap.quickinfo : 'Horários recebim.-mercadoria: domingos de manhã a partir d..'
  SundayMorningOpeningTime : Time;
  @sap.label : 'Domingo'
  @sap.quickinfo : 'Horários recebim.-mercadoria: domingos de manhã até ...'
  SundayMorningClosingTime : Time;
  @sap.label : 'Domingo'
  @sap.quickinfo : 'Horários recebim.-mercadoria: domingos de tarde a partir d..'
  SundayAfternoonOpeningTime : Time;
  @sap.label : 'Domingo'
  @sap.quickinfo : 'Horários recebim.-mercadoria: domingos de tarde até ...'
  SundayAfternoonClosingTime : Time;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Imposto retido na fonte'
entity api_business_partner.A_CustomerWithHoldingTax {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Nº cliente'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Empresa'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ctg.impos.ret.fonte'
  @sap.quickinfo : 'Código para categoria de imposto retido na fonte'
  key WithholdingTaxType : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Código IRF'
  @sap.quickinfo : 'Código de imposto retido na fonte'
  WithholdingTaxCode : String(2);
  @sap.label : 'Autoriz.p/reten.IRF'
  @sap.quickinfo : 'Código: autorizado para retenção de IRF?'
  WithholdingTaxAgent : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Autoriz.p/deduç.de'
  @sap.quickinfo : 'Autorizado para dedução de IRF a partir de'
  ObligationDateBegin : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Autoriz.p/deduç.até'
  @sap.quickinfo : 'Autorizado para dedução de IRF até'
  ObligationDateEnd : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº IRF'
  @sap.quickinfo : 'Nº identificação fiscal IRF'
  WithholdingTaxNumber : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº cert.isenção'
  @sap.quickinfo : 'Nº certificado de isenção'
  WithholdingTaxCertificate : String(25);
  @sap.label : 'Taxa de isenção'
  WithholdingTaxExmptPercent : Decimal(5, 2);
  @sap.display.format : 'Date'
  @sap.label : 'Data início isenção'
  @sap.quickinfo : 'Data início da isenção'
  ExemptionDateBegin : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Data final isenção'
  @sap.quickinfo : 'Data final da isenção'
  ExemptionDateEnd : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Motivo de isenção'
  ExemptionReason : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autorização'
  @sap.quickinfo : 'Grupo autorizações'
  AuthorizationGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Funções de parceiro SD'
entity api_business_partner.A_CustSalesPartnerFunc {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Nº cliente'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Organização vendas'
  @sap.quickinfo : 'Organização de vendas'
  key SalesOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Canal distribuição'
  @sap.quickinfo : 'Canal de distribuição'
  key DistributionChannel : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Setor de atividade'
  key Division : String(2) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Numerador parceiros'
  @sap.quickinfo : 'Numerador de parceiros'
  key PartnerCounter : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Função parceiro'
  @sap.quickinfo : 'Função do parceiro'
  key PartnerFunction : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fornecedor'
  @sap.quickinfo : 'Nº conta do fornecedor'
  BPCustomerNumber : String(10);
  @sap.label : 'Denominação parceiro'
  @sap.quickinfo : 'Denom.parceiro negócios específica do cliente (cent., dpst.)'
  CustomerPartnerDescription : String(30);
  @sap.label : 'Parceiro default'
  DefaultPartner : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fornecedor'
  @sap.quickinfo : 'Nº conta do fornecedor'
  Supplier : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nº pessoal'
  PersonnelNumber : String(8);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Pessoa de contato'
  @sap.quickinfo : 'Nº da pessoa de contato'
  ContactPerson : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº endereço'
  @sap.quickinfo : 'Nº de endereço de parceiro de negócios (de BUT020)'
  AddressID : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autorização'
  @sap.quickinfo : 'Grupo autorizações'
  AuthorizationGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Área vendas cliente informações dependentes endereço'
entity api_business_partner.A_CustSlsAreaAddrDepdntInfo {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Nº cliente'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Organização vendas'
  @sap.quickinfo : 'Organização de vendas'
  key SalesOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Canal distribuição'
  @sap.quickinfo : 'Canal de distribuição'
  key DistributionChannel : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Setor de atividade'
  key Division : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº endereço'
  @sap.quickinfo : 'Nº de endereço de parceiro de negócios (de BUT020)'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms parte 1'
  IncotermsClassification : String(3);
  @sap.label : 'Local incoterms 1'
  IncotermsLocation1 : String(70);
  @sap.label : 'Local incoterms 2'
  IncotermsLocation2 : String(70);
  @sap.label : 'UUID UG'
  @sap.quickinfo : 'UUID da unidade gerencial'
  IncotermsSupChnLoc1AddlUUID : UUID;
  @sap.label : 'UUID UG'
  @sap.quickinfo : 'UUID da unidade gerencial'
  IncotermsSupChnLoc2AddlUUID : UUID;
  @sap.label : 'UUID UG'
  @sap.quickinfo : 'UUID da unidade gerencial'
  IncotermsSupChnDvtgLocAddlUUID : UUID;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Blq.vend.ár.vnd'
  @sap.quickinfo : 'Bloqueio de remessa p/cliente (Vendas e Distribuição)'
  DeliveryIsBlocked : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Escritório de vendas'
  SalesOffice : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Equipe de vendas'
  SalesGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condições expedição'
  @sap.quickinfo : 'Condições de expedição'
  ShippingCondition : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Centro fornecedor'
  @sap.quickinfo : 'Centro fornecedor (próprio ou externo)'
  SupplyingPlant : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Versão Incoterms'
  IncotermsVersion : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Informação fiscal dependente endereço área vendas cliente'
entity api_business_partner.A_CustSlsAreaAddrDepdntTaxInfo {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Nº cliente'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Organização vendas'
  @sap.quickinfo : 'Organização de vendas'
  key SalesOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Can.dist.Cliente/Mat'
  @sap.quickinfo : 'Canal de distribuição para mestres de clientes e de mat.'
  key DistributionChannel : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Setor de atividade'
  key Division : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº endereço'
  @sap.quickinfo : 'Nº de endereço de parceiro de negócios (de BUT020)'
  key AddressID : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'País/reg.procedência'
  @sap.quickinfo : 'País/região procedência (do/da qual a mercadoria é expedida)'
  key DepartureCountry : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tp.cond.imposto'
  @sap.quickinfo : 'Tipo condição imposto (imposto sobre vendas, IVA,...)'
  key CustomerTaxCategory : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Classificação fiscal'
  @sap.quickinfo : 'Classificação fiscal do cliente'
  CustomerTaxClassification : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Ponto descarga cliente informações dependentes endereço'
entity api_business_partner.A_CustUnldgPtAddrDepdntInfo {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Nº cliente'
  key Customer : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº endereço'
  @sap.quickinfo : 'Nº de endereço de parceiro de negócios (de BUT020)'
  key AddressID : String(10) not null;
  @sap.label : 'Ponto de descarga'
  key UnloadingPointName : String(25) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Calendário cliente'
  @sap.quickinfo : 'Calendário de fábrica do cliente'
  CustomerFactoryCalenderCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Horários entr.merc.'
  @sap.quickinfo : 'ID do horário entrada mercadorias (nº proposto)'
  BPGoodsReceivingHoursCode : String(3);
  @sap.label : 'Pto.descarga default'
  @sap.quickinfo : 'Ponto de descarga default'
  IsDfltBPUnloadingPoint : Boolean;
  @sap.label : 'Segunda-feira'
  @sap.quickinfo : 'Horários de receb. mercad.: 2ª feira de manhã a partir das'
  MondayMorningOpeningTime : Time;
  @sap.label : '2ª-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: segunda de manhã até...'
  MondayMorningClosingTime : Time;
  @sap.label : '2ª-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: segunda à tarde a partir das...'
  MondayAfternoonOpeningTime : Time;
  @sap.label : '2ª-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: segunda à tarde até...'
  MondayAfternoonClosingTime : Time;
  @sap.label : 'Terça-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: terças de manhã a partir das...'
  TuesdayMorningOpeningTime : Time;
  @sap.label : 'Terça-feira'
  @sap.quickinfo : 'Horários recebim.-mercadoria: terças de manhã até ...'
  TuesdayMorningClosingTime : Time;
  @sap.label : 'Terça-feira'
  @sap.quickinfo : 'Horários recebim.-mercadoria: terças de tarde a partir das..'
  TuesdayAfternoonOpeningTime : Time;
  @sap.label : 'Terça-feira'
  @sap.quickinfo : 'Horários recebim.-mercadoria: terças de tarde até ...'
  TuesdayAfternoonClosingTime : Time;
  @sap.label : '4ª-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: quarta de manhã a partir das...'
  WednesdayMorningOpeningTime : Time;
  @sap.label : '4ª-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: quarta de manhã até...'
  WednesdayMorningClosingTime : Time;
  @sap.label : '4ª-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: quarta à tarde a partir das...'
  WednesdayAfternoonOpeningTime : Time;
  @sap.label : '4ª-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: quarta à tarde até ...'
  WednesdayAfternoonClosingTime : Time;
  @sap.label : 'Quinta-feira'
  @sap.quickinfo : 'Horários recebim.-mercadoria: quintas de manhã a partir d/..'
  ThursdayMorningOpeningTime : Time;
  @sap.label : 'Quinta-feira'
  @sap.quickinfo : 'Horários recebim.-mercadoria: quintas de manhã até ...'
  ThursdayMorningClosingTime : Time;
  @sap.label : 'Quinta-feira'
  @sap.quickinfo : 'Horários recebim.-mercadoria: quintas de tarde a partir d/..'
  ThursdayAfternoonOpeningTime : Time;
  @sap.label : 'Quinta-feira'
  @sap.quickinfo : 'Horários recebim.-mercadoria: quintas de tarde até ...'
  ThursdayAfternoonClosingTime : Time;
  @sap.label : 'Sexta-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: sexta de manhã a partir das...'
  FridayMorningOpeningTime : Time;
  @sap.label : 'Sexta-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: sexta de manhã até...'
  FridayMorningClosingTime : Time;
  @sap.label : 'Sexta-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: sexta à tarde a partir das...'
  FridayAfternoonOpeningTime : Time;
  @sap.label : 'Sexta-feira'
  @sap.quickinfo : 'Horário entrada mercadorias: sexta à tarde até...'
  FridayAfternoonClosingTime : Time;
  @sap.label : 'Sábado'
  @sap.quickinfo : 'Horários recebim.-mercadoria: sábados de manhã a partir das'
  SaturdayMorningOpeningTime : Time;
  @sap.label : 'Sábado'
  @sap.quickinfo : 'Horários recebim.-mercadoria: sábados de manhã até ...'
  SaturdayMorningClosingTime : Time;
  @sap.label : 'Sábado'
  @sap.quickinfo : 'Horários recebim.-mercadoria: sábados de tarde a partir das.'
  SaturdayAfternoonOpeningTime : Time;
  @sap.label : 'Sábado'
  @sap.quickinfo : 'Horários recebim.-mercadoria: sábados de tarde até ...'
  SaturdayAfternoonClosingTime : Time;
  @sap.label : 'Domingo'
  @sap.quickinfo : 'Horários recebim.-mercadoria: domingos de manhã a partir d..'
  SundayMorningOpeningTime : Time;
  @sap.label : 'Domingo'
  @sap.quickinfo : 'Horários recebim.-mercadoria: domingos de manhã até ...'
  SundayMorningClosingTime : Time;
  @sap.label : 'Domingo'
  @sap.quickinfo : 'Horários recebim.-mercadoria: domingos de tarde a partir d..'
  SundayAfternoonOpeningTime : Time;
  @sap.label : 'Domingo'
  @sap.quickinfo : 'Horários recebim.-mercadoria: domingos de tarde até ...'
  SundayAfternoonClosingTime : Time;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Fornecedor'
entity api_business_partner.A_Supplier {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fornecedor'
  @sap.quickinfo : 'Nº conta do fornecedor'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Recebedor difer.pgto'
  @sap.quickinfo : 'Número da conta do recebedor alternativo do pagamento'
  AlternativePayeeAccountNumber : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autorização'
  @sap.quickinfo : 'Grupo autorizações'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Criado por'
  @sap.quickinfo : 'Nome do responsável que adicionou o objeto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12);
  @sap.display.format : 'Date'
  @sap.label : 'Dta.criação'
  @sap.quickinfo : 'Data de criação do registro'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Nº cliente'
  Customer : String(10);
  @sap.label : 'Bloq.pgto.'
  @sap.quickinfo : 'Bloqueio de pagamento'
  PaymentIsBlockedForSupplier : Boolean;
  @sap.label : 'Bloqueio cont.'
  @sap.quickinfo : 'Bloqueio central contabilização'
  PostingIsBlocked : Boolean;
  @sap.label : 'Bloq.compras'
  @sap.quickinfo : 'Compras bloqueadas a nível central'
  PurchasingIsBlocked : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de contas'
  @sap.quickinfo : 'Grupo de contas do fornecedor'
  SupplierAccountGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nome do fornecedor'
  @sap.quickinfo : 'Nome completo do fornecedor'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SupplierFullName : String(220);
  @sap.label : 'Nome de fornecedor'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SupplierName : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº ID fiscal de IVA'
  @sap.quickinfo : 'Nº de identificação fiscal de IVA'
  VATRegistration : String(20);
  @sap.display.format : 'Date'
  @sap.label : 'Data de nascimento'
  @sap.quickinfo : 'Data de nascimento do contribuinte de IRF'
  BirthDate : Date;
  @sap.label : 'Nº glob.localização'
  @sap.quickinfo : 'Número global de localização concatenado'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConcatenatedInternationalLocNo : String(20);
  @sap.label : 'Marc.p/eliminar'
  @sap.quickinfo : 'Marcação central para eliminação do registro mestre'
  DeletionIndicator : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Endereço fiscal'
  @sap.quickinfo : 'Nº da conta do registro mestre com endereço fiscal'
  FiscalAddress : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Setor industrial'
  @sap.quickinfo : 'Chave do setor industrial'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Industry : String(4);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nº global localiz.1'
  @sap.quickinfo : 'Nº global de localização (parte 1)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  InternationalLocationNumber1 : String(7);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nº global localiz.2'
  @sap.quickinfo : 'Número global de localização (parte 2)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  InternationalLocationNumber2 : String(5);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Dígito de controle'
  @sap.quickinfo : 'Dígito de controle da matrícula internacional da empresa'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  InternationalLocationNumber3 : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Pessoa física'
  IsNaturalPerson : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Motivo do pagamento'
  PaymentReason : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo de imposto'
  ResponsibleType : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Sistema QM vál.até'
  @sap.quickinfo : 'Data de validade da certificação'
  SuplrQltyInProcmtCertfnValidTo : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sistema QM real'
  @sap.quickinfo : 'Sistema QM do fornecedor'
  SuplrQualityManagementSystem : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chave grupo empresas'
  @sap.quickinfo : 'Chave do grupo de empresas'
  SupplierCorporateGroup : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Função de bloqueio'
  @sap.quickinfo : 'Função que será bloqueada'
  SupplierProcurementBlock : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº ID fiscal 1'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber1 : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº ID fiscal 2'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber2 : String(11);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº ident.fiscal 3'
  @sap.quickinfo : 'Nº identificação fiscal 3'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber3 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº ident.fiscal 4'
  @sap.quickinfo : 'Nº identificação fiscal 4'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber4 : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'NºIdentFiscal 5'
  @sap.quickinfo : 'Número identificação fiscal 5'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxNumber5 : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'NºID fiscal'
  @sap.quickinfo : 'NºIDfiscal na repart.públ.finanças resp.'
  TaxNumberResponsible : String(18);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo nº fiscal'
  TaxNumberType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Relevante p/CRR'
  @sap.quickinfo : 'Cód.fornecedor relevante p/confirmação recebimento remessa'
  SuplrProofOfDelivRlvtCode : String(1);
  @sap.label : 'Divisão fiscal'
  @sap.quickinfo : 'Código: valor do imposto dividido'
  BR_TaxIsSplit : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chave instruções'
  @sap.quickinfo : 'Chave de instruções para intercâmbio de suporte de dados'
  DataExchangeInstructionKey : String(2);
  to_SupplierCompany : Association to many api_business_partner.A_SupplierCompany {  };
  to_SupplierPurchasingOrg : Association to many api_business_partner.A_SupplierPurchasingOrg {  };
  to_SupplierText : Association to many api_business_partner.A_SupplierText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Sociedade fornecedora'
entity api_business_partner.A_SupplierCompany {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fornecedor'
  @sap.quickinfo : 'Nº conta do fornecedor'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Empresa'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autorização'
  @sap.quickinfo : 'Grupo autorizações'
  AuthorizationGroup : String(4);
  @sap.label : 'Nome da empresa'
  @sap.quickinfo : 'Denominação de empresa ou sociedade'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CompanyCodeName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bloq.pagamento'
  @sap.quickinfo : 'Chave de bloqueio para pagamento'
  PaymentBlockingReason : String(1);
  @sap.label : 'Bloq.cont.empresa'
  @sap.quickinfo : 'Bloqueio de contabilização p/empresa'
  SupplierIsBlockedForPosting : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sigla respons.'
  @sap.quickinfo : 'Sigla do responsável pela contabilidade'
  AccountingClerk : String(2);
  @sap.label : 'Telefax responsável'
  @sap.quickinfo : 'Nº telefax do responsável do parceiro de negócios'
  AccountingClerkFaxNumber : String(31);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Telef.do responsável'
  @sap.quickinfo : 'Nº telefone do responsável do parceiro de negócios'
  AccountingClerkPhoneNumber : String(30);
  @sap.label : 'Encarregado fornec.'
  @sap.quickinfo : 'Encarregado no fornecedor'
  SupplierClerk : String(15);
  @sap.label : 'Ender.internet resp.'
  @sap.quickinfo : 'Endereço internet do responsável no parceiro'
  SupplierClerkURL : String(130);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Formas de pagamento'
  @sap.quickinfo : 'Lista de formas de pagamentos a considerar'
  PaymentMethodsList : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Motivo do pagamento'
  PaymentReason : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condições pgto.'
  @sap.quickinfo : 'Chave de condições de pagamento'
  PaymentTerms : String(4);
  @sap.label : 'Compensaç.c/cliente'
  @sap.quickinfo : 'Código: compensação entre cliente e fornecedor?'
  ClearCustomerSupplier : Boolean;
  @sap.label : 'Proc.descentralizado'
  @sap.quickinfo : 'Código: processamento descentralizado?'
  IsToBeLocallyProcessed : Boolean;
  @sap.label : 'Pagamento individual'
  @sap.quickinfo : 'Código: pagamento individual das partidas ?'
  ItemIsToBePaidSeparately : Boolean;
  @sap.label : 'Aviso pgto.via EDI'
  @sap.quickinfo : 'Código: enviar aviso de pagamento via EDI'
  PaymentIsToBeSentByEDI : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Banco da empresa'
  @sap.quickinfo : 'Chave breve de um banco da empresa'
  HouseBank : String(5);
  @sap.label : 'Tmp.conf.cheq.cbr.'
  @sap.quickinfo : 'Tempo previsto até pagamento do cheque'
  CheckPaidDurationInDays : Decimal(3, 0);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Moeda'
  @sap.quickinfo : 'Código da moeda'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.unit : 'Currency'
  @sap.label : 'Limite L/C'
  @sap.quickinfo : 'Limite do montante da letra de câmbio (em moeda interna)'
  BillOfExchLmtAmtInCoCodeCrcy : Decimal(14, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Conta no fornecedor'
  @sap.quickinfo : 'Nosso nº conta no fornecedor'
  SupplierClerkIDBySupplier : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Conta de conciliação'
  @sap.quickinfo : 'Cta.de reconciliação na contabilidade geral'
  ReconciliationAccount : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Código de juros'
  InterestCalculationCode : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Últ.Calc.Juros'
  @sap.quickinfo : 'Data fixada do último cálculo de juros'
  InterestCalculationDate : Date;
  @sap.display.format : 'NonNegative'
  @sap.label : 'PeriodCálcJuros'
  @sap.quickinfo : 'Periodicidade dos juros em meses'
  IntrstCalcFrequencyInMonths : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sede'
  @sap.quickinfo : 'Nº conta da sede'
  SupplierHeadOffice : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Recebedor difer.pgto'
  @sap.quickinfo : 'Nº conta do recebedor diferente de pagamento'
  AlternativePayee : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chave ordenação'
  @sap.quickinfo : 'Chave para a ordenação por nºs atribuição'
  LayoutSortingRule : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de tolerância'
  @sap.quickinfo : 'Grupo de tolerância para o parceiro de negócios/cta.Razão'
  APARToleranceGroup : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Data da certificação'
  SupplierCertificationDate : Date;
  @sap.label : 'Observação na conta'
  @sap.quickinfo : 'Observação'
  SupplierAccountNote : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chv.país/região IRF'
  @sap.quickinfo : 'Chave do país/região relativo ao imposto retido na fonte'
  WithholdingTaxCountry : String(3);
  @sap.label : 'Marc.elim.empresa'
  @sap.quickinfo : 'Marcação p/eliminação do registro mestre (nível de empresa)'
  DeletionIndicator : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grp.admin.tesouraria'
  @sap.quickinfo : 'Grupo de administração de tesouraria'
  CashPlanningGroup : String(10);
  @sap.label : 'Verif.fatura duplic.'
  @sap.quickinfo : 'Nota de verificação p/faturas ou notas crédito duplicadas'
  IsToBeCheckedForDuplicates : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Código int.minoritá.'
  @sap.quickinfo : 'Código de interesses minoritários'
  MinorityGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de contas'
  @sap.quickinfo : 'Grupo de contas do fornecedor'
  SupplierAccountGroup : String(4);
  to_CompanyText : Association to many api_business_partner.A_SupplierCompanyText {  };
  to_Supplier : Association to api_business_partner.A_Supplier {  };
  to_SupplierDunning : Association to many api_business_partner.A_SupplierDunning {  };
  to_SupplierWithHoldingTax : Association to many api_business_partner.A_SupplierWithHoldingTax {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Texto de empresa de fornecedor'
entity api_business_partner.A_SupplierCompanyText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fornecedor'
  @sap.quickinfo : 'Nº conta do fornecedor'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Empresa'
  key CompanyCode : String(4) not null;
  @sap.label : 'Idioma'
  @sap.quickinfo : 'Código de idioma'
  key Language : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID de texto'
  key LongTextID : String(4) not null;
  @sap.label : 'Cadeia de caracteres'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  LongText : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Cobrança fornecedor'
entity api_business_partner.A_SupplierDunning {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fornecedor'
  @sap.quickinfo : 'Nº conta do fornecedor'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Empresa'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Área de advertência'
  key DunningArea : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Bloq.advert.'
  @sap.quickinfo : 'Bloqueio de advertências'
  DunningBlock : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Nível de advertência'
  DunningLevel : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Proced.adver.'
  @sap.quickinfo : 'Procedimento de advertência'
  DunningProcedure : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Destin.advert.'
  @sap.quickinfo : 'Nº conta do destinatário da advertência'
  DunningRecipient : String(10);
  @sap.display.format : 'Date'
  @sap.label : 'Última advert.'
  @sap.quickinfo : 'Data da última advertência'
  LastDunnedOn : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Proc.jud.cobrança'
  @sap.quickinfo : 'Data do processo judicial de cobrança'
  LegDunningProcedureOn : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Responsável adverts.'
  @sap.quickinfo : 'Responsável advertências'
  DunningClerk : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autorização'
  @sap.quickinfo : 'Grupo autorizações'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de contas'
  @sap.quickinfo : 'Grupo de contas do fornecedor'
  SupplierAccountGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Funções de parceiro de compras'
entity api_business_partner.A_SupplierPartnerFunc {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fornecedor'
  @sap.quickinfo : 'Nº conta do fornecedor'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Organização compras'
  @sap.quickinfo : 'Organização de compras'
  key PurchasingOrganization : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Subsortim.forn.'
  @sap.quickinfo : 'Subsortimento do fornecedor'
  key SupplierSubrange : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Centro'
  key Plant : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Função parceiro'
  @sap.quickinfo : 'Função do parceiro'
  key PartnerFunction : String(2) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Numerador parceiros'
  @sap.quickinfo : 'Numerador de parceiros'
  key PartnerCounter : String(3) not null;
  @sap.label : 'Parceiro default'
  DefaultPartner : Boolean;
  @sap.display.format : 'Date'
  @sap.label : 'Criado em'
  @sap.quickinfo : 'Data de criação do registro'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Criado por'
  @sap.quickinfo : 'Nome do responsável que criou o objeto'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ref.a forn.'
  @sap.quickinfo : 'Referência a outro fornecedor'
  ReferenceSupplier : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autorização'
  @sap.quickinfo : 'Grupo autorizações'
  AuthorizationGroup : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Organização de compras'
entity api_business_partner.A_SupplierPurchasingOrg {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fornecedor'
  @sap.quickinfo : 'Nº conta do fornecedor'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Organização compras'
  @sap.quickinfo : 'Organização de compras'
  key PurchasingOrganization : String(4) not null;
  @sap.label : 'FatAutoEM devoluç.'
  @sap.quickinfo : 'Faturamento autom.entrada de mercadoria para itens devolução'
  AutomaticEvaluatedRcptSettlmt : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grp.esq.fornecedor'
  @sap.quickinfo : 'Grupo para esquema de cálculo (fornecedor)'
  CalculationSchemaGroupCode : String(2);
  @sap.label : 'Marc.p/el.org.C'
  @sap.quickinfo : 'Código de eliminação para fornecedor a nível de compras'
  DeletionIndicator : Boolean;
  @sap.label : 'Fatmto.automático EM'
  @sap.quickinfo : 'Faturamento automático de entradas de mercadorias'
  EvaldReceiptSettlementIsActive : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Incoterms'
  @sap.quickinfo : 'Incoterms parte 1'
  IncotermsClassification : String(3);
  @sap.label : 'Incoterms (parte 2)'
  IncotermsTransferLocation : String(28);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Versão Incoterms'
  IncotermsVersion : String(4);
  @sap.label : 'Local incoterms 1'
  IncotermsLocation1 : String(70);
  @sap.label : 'Local incoterms 2'
  IncotermsLocation2 : String(70);
  @sap.label : 'UUID UG'
  @sap.quickinfo : 'UUID da unidade gerencial'
  IncotermsSupChnLoc1AddlUUID : UUID;
  @sap.label : 'UUID UG'
  @sap.quickinfo : 'UUID da unidade gerencial'
  IncotermsSupChnLoc2AddlUUID : UUID;
  @sap.label : 'UUID UG'
  @sap.quickinfo : 'UUID da unidade gerencial'
  IncotermsSupChnDvtgLocAddlUUID : UUID;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Modo de transporte'
  @sap.quickinfo : 'Modo de transporte na fronteira (Intrastat)'
  IntrastatCrsBorderTrMode : String(1);
  @sap.label : 'Rev.fatur.baseado EM'
  @sap.quickinfo : 'Código: revisão de faturas baseada em entrada de mercadorias'
  InvoiceIsGoodsReceiptBased : Boolean;
  @sap.label : 'Rev.fat.bas.em srv.'
  @sap.quickinfo : 'Código para revisão de faturas baseada em serviços'
  InvoiceIsMMServiceEntryBased : Boolean;
  @sap.label : 'Prz.entrg.prev.'
  @sap.quickinfo : 'Prazo de entrega previsto em dias'
  MaterialPlannedDeliveryDurn : Decimal(3, 0);
  @sap.unit : 'PurchaseOrderCurrency'
  @sap.label : 'Val.mínimo pedido'
  @sap.quickinfo : 'Valor mínimo do pedido'
  MinimumOrderAmount : Decimal(14, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condições pgto.'
  @sap.quickinfo : 'Chave de condições de pagamento'
  PaymentTerms : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ciclo MRP'
  PlanningCycle : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Controle data preço'
  @sap.quickinfo : 'Controle da data de determinação de preço'
  PricingDateControl : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Perfil contr.PROACT'
  @sap.quickinfo : 'Perfil para transmissão de dados de material via IDoc PROACT'
  ProdStockAndSlsDataTransfPrfl : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo UM'
  @sap.quickinfo : 'Grupo unidade medida'
  ProductUnitGroup : String(4);
  @sap.label : 'Pedido automático'
  @sap.quickinfo : 'Pedido automático permitido'
  PurOrdAutoGenerationIsAllowed : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Moeda do pedido'
  @sap.semantics : 'currency-code'
  PurchaseOrderCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de compradores'
  PurchasingGroup : String(3);
  @sap.label : 'BlqCompOrgComp.'
  @sap.quickinfo : 'Compras bloqueadas a nível da organização de compras'
  PurchasingIsBlockedForSupplier : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Perf.arredond.'
  @sap.quickinfo : 'Perfil de arredondamento'
  RoundingProfile : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condições expedição'
  @sap.quickinfo : 'Condições de expedição'
  ShippingCondition : String(2);
  @sap.label : 'Campo de seleção'
  @sap.heading : ''
  SuplrDiscountInKindIsGranted : Boolean;
  @sap.label : 'Reavaliação'
  @sap.quickinfo : 'Reavaliação admitida'
  SuplrInvcRevalIsAllowed : Boolean;
  @sap.label : 'Admin.liquidação'
  @sap.quickinfo : 'Código: relevante para administração da liquidação'
  SuplrIsRlvtForSettlmtMgmt : Boolean;
  @sap.label : 'Det.preço'
  @sap.quickinfo : 'Código &quot;relev.p/determin.do preço&quot; (hierarquia fornecedores)'
  SuplrPurgOrgIsRlvtForPriceDetn : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Código ABC'
  SupplierABCClassificationCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Conta c/fornecedor'
  @sap.quickinfo : 'Nosso número de conta com o fornecedor'
  SupplierAccountNumber : String(12);
  @sap.label : 'Forn.devolução'
  @sap.quickinfo : 'Indica se o fornecedor é fornecedor de devolução'
  SupplierIsReturnsSupplier : Boolean;
  @sap.label : 'Telefone'
  @sap.quickinfo : 'Nº de telefone do fornecedor'
  SupplierPhoneNumber : String(16);
  @sap.label : 'Vendedor'
  @sap.quickinfo : 'Vendedor responsável no escritório do fornecedor'
  SupplierRespSalesPersonName : String(30);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ctrl.confirmação'
  @sap.quickinfo : 'Chave de controle de confirmação'
  SupplierConfirmationControlKey : String(4);
  @sap.label : 'Obrig.confirmação'
  @sap.quickinfo : 'Confirmação de ordem obrigatória'
  IsOrderAcknRqd : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autorização'
  @sap.quickinfo : 'Grupo autorizações'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de contas'
  @sap.quickinfo : 'Grupo de contas do fornecedor'
  SupplierAccountGroup : String(4);
  to_PartnerFunction : Association to many api_business_partner.A_SupplierPartnerFunc {  };
  to_PurchasingOrgText : Association to many api_business_partner.A_SupplierPurchasingOrgText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Texto sobre a organização de compras'
entity api_business_partner.A_SupplierPurchasingOrgText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fornecedor'
  @sap.quickinfo : 'Nº conta do fornecedor'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Organização compras'
  @sap.quickinfo : 'Organização de compras'
  key PurchasingOrganization : String(4) not null;
  @sap.label : 'Idioma'
  @sap.quickinfo : 'Código de idioma'
  key Language : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID de texto'
  key LongTextID : String(4) not null;
  @sap.label : 'Cadeia de caracteres'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  LongText : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Texto de fornecedor'
entity api_business_partner.A_SupplierText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fornecedor'
  @sap.quickinfo : 'Nº conta do fornecedor'
  key Supplier : String(10) not null;
  @sap.label : 'Idioma'
  @sap.quickinfo : 'Código de idioma'
  key Language : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID de texto'
  key LongTextID : String(4) not null;
  @sap.label : 'Cadeia de caracteres'
  @sap.heading : ''
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  LongText : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Imposto retido na fonte da empresa'
entity api_business_partner.A_SupplierWithHoldingTax {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Fornecedor'
  @sap.quickinfo : 'Nº conta do fornecedor'
  key Supplier : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Empresa'
  key CompanyCode : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Ctg.impos.ret.fonte'
  @sap.quickinfo : 'Código para categoria de imposto retido na fonte'
  key WithholdingTaxType : String(2) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Data início isenção'
  @sap.quickinfo : 'Data início da isenção'
  ExemptionDateBegin : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Data final isenção'
  @sap.quickinfo : 'Data final da isenção'
  ExemptionDateEnd : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Motivo de isenção'
  ExemptionReason : String(2);
  @sap.label : 'Sujeito a IRS'
  @sap.quickinfo : 'Código: sujeito a IRS?'
  IsWithholdingTaxSubject : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Escalão IRF'
  @sap.quickinfo : 'Escalão de IRF do fornecedor'
  RecipientType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº cert.isenção'
  @sap.quickinfo : 'Nº certificado de isenção'
  WithholdingTaxCertificate : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Código IRF'
  @sap.quickinfo : 'Código de imposto retido na fonte'
  WithholdingTaxCode : String(2);
  @sap.label : 'Taxa de isenção'
  WithholdingTaxExmptPercent : Decimal(5, 2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº IRF'
  @sap.quickinfo : 'Nº identificação fiscal IRF'
  WithholdingTaxNumber : String(16);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autorização'
  @sap.quickinfo : 'Grupo autorizações'
  AuthorizationGroup : String(4);
};

