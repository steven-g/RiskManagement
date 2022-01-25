using RiskService as service from '../../srv/risk-service';

// Risk List Report Page
annotate service.Risks with @(
    UI: {
        HeaderInfo  : {

            //$Type : 'UI.HeaderInfoType',
            TypeName : 'Risk',
            TypeNamePlural : 'Risks',
            Title : {
                $Type: 'UI.DataField',
                Value: title
            },
            Description : {
                $Type: 'UI.DataField',
                Value: descr
            }
        },
        SelectionFields  : [
            prio
        ],
        Identification  : [
            { Value: title }
        ],

        LineItem  : [
            {Value : title},
            {Value: miti_ID},
            {Value: owner},
            {Value: bp_BusinessPartner},
            {
                Value: prio,
                Criticality: criticality
            },
            {
                Value: impact,
                Criticality: criticality

            }
        ],
    },
    
/*
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'owner',
            Value : owner,
        },
        {
            $Type : 'UI.DataField',
            Label : 'prio',
            Value : prio,
        },
        {
            $Type : 'UI.DataField',
            Label : 'descr',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Label : 'impact',
            Value : impact,
        },
    ]*/
);

annotate service.Risks with @(
    /* UI.FieldGroup #GeneratedGroup1 : { $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'owner',
                Value : owner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'prio',
                Value : prio,
            },
            {
                $Type : 'UI.DataField',
                Label : 'descr',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'impact',
                Value : impact,
            },
            {
                $Type : 'UI.DataField',
                Label : 'criticality',
                Value : criticality,
            },
        ],
    },
    */
    UI: {
        Facets : [
            {
                $Type : 'UI.ReferenceFacet',
                //ID : 'GeneratedFacet1',
                Label : 'Main',
                Target : '@UI.FieldGroup#Main',
            }
        ],
        FieldGroup #Main : {
            Data : [
                { Value: miti_ID },
                { Value: owner },
                {Value: bp_BusinessPartner},
                {
                    Value: prio,
                    Criticality: criticality
                },
                {
                    Value: impact,
                    Criticality: criticality
                }
            ]
           
        }
    }
);
