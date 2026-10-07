namespace inventory;
using { cuid, managed } from '@sap/cds/common';

entity Products : cuid, managed {
  name     : String(100);
  category : Association to Categories;
  stock    : Integer;
  price    : Decimal(10,2);
}

entity Categories : cuid {
  name     : String(50);
  products : Association to many Products on products.category = $self;
}