using BusinessPartnerService as service from '../../srv/bupa-service';
annotate service.BusinessPartner with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : BusinessPartner,
            Label : 'BusinessPartner',
        },
        {
            $Type : 'UI.DataField',
            Value : BusinessPartnerCategory,
            Label : 'BusinessPartnerCategory',
        },
        {
            $Type : 'UI.DataField',
            Value : BusinessPartnerFullName,
            Label : 'BusinessPartnerFullName',
        },
        {
            $Type : 'UI.DataField',
            Value : BusinessPartnerName,
            Label : 'BusinessPartnerName',
        },
        {
            $Type : 'UI.DataField',
            Value : BusinessPartnerUUID,
            Label : 'BusinessPartnerUUID',
        },
        {
            $Type : 'UI.DataField',
            Value : CreationDate,
            Label : 'CreationDate',
        },
        {
            $Type : 'UI.DataField',
            Value : Customer,
            Label : 'Customer',
        },
        {
            $Type : 'UI.DataField',
            Value : FirstName,
            Label : 'FirstName',
        },
        {
            $Type : 'UI.DataField',
            Value : LastName,
            Label : 'LastName',
        },
        {
            $Type : 'UI.DataField',
            Value : OrganizationBPName1,
            Label : 'OrganizationBPName1',
        },
        {
            $Type : 'UI.DataField',
            Value : Supplier,
            Label : 'Supplier',
        },
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : BusinessPartner,
        },
        TypeName : '',
        TypeNamePlural : '',
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Identification',
            ID : 'Identification',
            Target : '@UI.Identification',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Details',
            ID : 'Details',
            Target : '@UI.FieldGroup#Details',
        },
    ],
    UI.Identification : [
        {
            $Type : 'UI.DataField',
            Value : BusinessPartnerUUID,
            Label : 'BusinessPartnerUUID',
        },
        {
            $Type : 'UI.DataField',
            Value : FirstName,
            Label : 'FirstName',
        },
        {
            $Type : 'UI.DataField',
            Value : LastName,
            Label : 'LastName',
        },
        {
            $Type : 'UI.DataField',
            Value : BusinessPartnerName,
            Label : 'BusinessPartnerName',
        },
    ],
    UI.FieldGroup #Details : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : BusinessPartnerCategory,
                Label : 'BusinessPartnerCategory',
            },
            {
                $Type : 'UI.DataField',
                Value : BusinessPartnerFullName,
                Label : 'BusinessPartnerFullName',
            },
            {
                $Type : 'UI.DataField',
                Value : CreationDate,
                Label : 'CreationDate',
            },
            {
                $Type : 'UI.DataField',
                Value : Customer,
                Label : 'Customer',
            },
            {
                $Type : 'UI.DataField',
                Value : Supplier,
                Label : 'Supplier',
            },
            {
                $Type : 'UI.DataField',
                Value : FirstName,
                Label : 'FirstName',
            },
            {
                $Type : 'UI.DataField',
                Value : LastName,
                Label : 'LastName',
            },
            {
                $Type : 'UI.DataField',
                Value : OrganizationBPName1,
                Label : 'OrganizationBPName1',
            },
        ],
    },
);

