import 'dart:async';

import 'package:mart_app/models/catalog.dart';

class CartModel {
  static final CartModel cartModel = CartModel._internal();
  CartModel._internal();
  factory CartModel() => cartModel;

  late CatalogModel _catalog;
  final Set<int> _itemIds = {};

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  List<Item> get items => _itemIds.map((id) => _catalog.getbyId(id)).toList();

  // Calculate the total price of items in the cart
  double get totalPrice {
    double total = 0.0;
    for (var item in items) {
      total += item.price;
    }
    return total;
  }

  // Add item to the cart
  void add(Item item) {
    _itemIds.add(item.id);
    updateTotalPrice();
  }

  // Remove item from the cart
  void remove(Item item) {
    _itemIds.remove(item.id);
    updateTotalPrice();
  }

  // Create a stream controller to manage updates to the total price
  final _cartStreamController = StreamController<double>();

  // Stream getter for the total price
  Stream<double> get cartStream => _cartStreamController.stream;

  void updateTotalPrice() {
    _cartStreamController.add(totalPrice);
  }
}
