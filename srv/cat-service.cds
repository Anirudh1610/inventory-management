using inventory from '../db/schema';

service InventoryService {
  entity Products   as projection on inventory.Products;
  entity Categories as projection on inventory.Categories;
}