using InventoryService from './cat-service';

annotate InventoryService.Products with @(
  UI.LineItem: [
    { Value: name,          Label: 'Product' },
    { Value: category.name, Label: 'Category' },
    { Value: stock,         Label: 'Stock' },
    { Value: price,         Label: 'Price' }
  ],
  UI.SelectionFields: [ category_ID, stock ]
);