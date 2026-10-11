using inventory from '../db/schema';

service InventoryService {
  entity Products   as projection on inventory.Products;
  entity Categories as projection on inventory.Categories;
  entity Suppliers  as projection on inventory.Suppliers;
  entity Customers  as projection on inventory.Customers;
  entity Orders     as projection on inventory.Orders;
  entity OrderItems as projection on inventory.OrderItems;
}
