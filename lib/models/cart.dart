import 'package:mart_app/models/catalog.dart';
import 'package:mart_app/pages/home_page.dart';

class CartModel {
  late CatalogModel _catalog;
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

// get item into cart
  List<Item> get item => _itemIds.map((id) => _catalog.getbyId(id)).toList();

// get total price
  num get totalPrice => item.fold(0, (total, current) => total = current.price);

  // Add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  // remove Items
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}