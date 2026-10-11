using InventoryService as service from '../../srv/cat-service';
annotate service.Products with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'stock',
                Value : stock,
            },
            {
                $Type : 'UI.DataField',
                Label : 'price',
                Value : price,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
);

annotate service.Products with {
    category @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Categories',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : category_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
        ],
    }
};

annotate InventoryService.Categories with @(
  UI.LineItem: [
{ Value: name, Label: 'Category' }
  ],
  UI.HeaderInfo: {
    TypeName: 'Category',
    TypeNamePlural: 'Categories',
    Title: { Value: name }
  }
);

annotate InventoryService.Categories with @(
  UI.FieldGroup #General: {
    Data: [
      { Value: name, Label: 'Name' }
    ]
  },
  UI.Facets: [
    {
      $Type : 'UI.ReferenceFacet',
      ID    : 'General',
      Label : 'General Information',
      Target: '@UI.FieldGroup#General'
    },
    {
      $Type : 'UI.ReferenceFacet',
      ID    : 'Products',
      Label : 'Products',
      Target: 'products/@UI.LineItem'
    }
  ]
);
