class CatalogModel {
  static List<Item> items = [
    Item(
        id: 01,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 01,
        name: "iphone 15 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 01,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 01,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 01,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 01,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 01,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 01,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 01,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 01,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 01,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 01,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 01,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 01,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 01,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 01,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 01,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 01,
        name: "iphone 12 pro",
        desc: "Apple iphone 12th generation",
        price: 275000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
  ];
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
