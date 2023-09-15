import 'package:mart_app/models/catalog.dart';
// import 'package:mart_app/pages/home_page.dart';

class CartModel {
  static final cartModel = CartModel._internal();
  CartModel._internal();
  factory CartModel() => cartModel;

  late CatalogModel _catalog;
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  // get _itemIds => null;

  set catalog(CatalogModel newCatalog) {
    // ignore: unnecessary_null_comparison
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
