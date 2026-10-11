namespace inventory;
using { cuid, managed } from '@sap/cds/common';

entity Products : cuid, managed {
  name         : String(100);
  category     : Association to Categories;
  supplier     : Association to Suppliers;
  stock        : Integer;
  price        : Decimal(10,2);
  unitsOnOrder : Integer;
  reorderLevel : Integer;
  discontinued : Boolean;
}

entity Categories : cuid {
  name        : String(50);
  description : String(200);
  products    : Association to many Products on products.category = $self;
}

entity Suppliers : cuid {
  name     : String(100);
  contact  : String(100);
  city     : String(50);
  country  : String(50);
  phone    : String(30);
  products : Association to many Products on products.supplier = $self;
}

entity Customers : cuid {
  name    : String(100);
  contact : String(100);
  city    : String(50);
  country : String(50);
  phone   : String(30);
  orders  : Association to many Orders on orders.customer = $self;
}

entity Orders : cuid {
  orderNo     : Integer;
  customer    : Association to Customers;
  orderDate   : Date;
  shippedDate : Date;
  shipCity    : String(50);
  shipCountry : String(50);
  items       : Composition of many OrderItems on items.order = $self;
}

entity OrderItems : cuid {
  order     : Association to Orders;
  product   : Association to Products;
  quantity  : Integer;
  unitPrice : Decimal(10,2);
  discount  : Decimal(3,2);
}
