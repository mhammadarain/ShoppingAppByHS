class CatalogModel {
  static final catModel = CatalogModel._internal();

  CatalogModel._internal();

  factory CatalogModel() => catModel;

  static List<Item> items = [
    Item(
        id: 01,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 2750,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 02,
        name: "iphone 15 pro",
        desc: "Apple iphone 12th generation",
        price: 2999,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 03,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 2750,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 04,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 2750,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 05,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 06,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 07,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 08,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 09,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 10,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 11,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 12,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 13,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 14,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 15,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 16,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 17,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 18,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
  ];

  Item getbyId(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  Item getbyPosition(int pos) => items[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String color;
  final num price;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.color,
    required this.price,
    required this.image,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        color: map["color"],
        price: map["price"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "color": color,
        "price": price,
        "image": image
      };
}
