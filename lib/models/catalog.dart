class CatalogModel {
  static final cartModel = CatalogModel._internal();
  CatalogModel._internal();
  factory CatalogModel() => cartModel;

  static List<Item> items = [
    Item(
        id: 01,
        name: "Apple iPad Air 5",
        desc: "10.9_inch  8/64GB",
        price: 194999,
        color: "#33505a",
        image: "https://www.mega.pk/items_images/ts_17735.webp"),
    Item(
        id: 02,
        name: "iphone 15 Pro Max",
        desc: "8/1024 GB",
        price: 769999,
        color: "#33505a",
        image: "https://phonebolee.com/images/Apple-iPhone-15-Pro-Max.jpg"),
    Item(
        id: 03,
        name: "iphone 14 pro",
        desc: "1TB",
        price: 695999,
        color: "#33505a",
        image:
            "https://images.priceoye.pk/apple-iphone-14-pro-pakistan-priceoye-1qdxc.jpg"),
    Item(
        id: 04,
        name: "Apple AirPods pro",
        desc: "2nd generation",
        price: 27500,
        color: "#33505a",
        image:
            "https://www.mega.pk/items_images/Apple+AirPods+Pro+Price+in+Pakistan%2C+Specifications%2C+Features_-_19552.webp"),
    Item(
        id: 05,
        name: "Apple iPad",
        desc: "10th generation 256GB",
        price: 163999,
        color: "#33505a",
        image: "https://www.mega.pk/items_images/ts_23770.webp"),
    Item(
        id: 06,
        name: "iphone 14 pro",
        desc: "6/128GB",
        price: 509999,
        color: "#33505a",
        image:
            "https://www.mega.pk/items_images/Apple+iPhone+14+Pro+128GB+Storage+PTA+Approved+Mercantile+Price+in+Pakistan%2C+Specifications%2C+Features_-_23650.webp"),
    Item(
        id: 07,
        name: "MackBook Pro 16 M2 Max Chip",
        desc: "16 GB Ram 256 SSD Grey",
        price: 275000,
        color: "#33505a",
        image: "https://www.mega.pk/items_images/ts_23959.webp"),
    Item(
        id: 08,
        name: "iphone 14 pro",
        desc: "Apple iphone 12th generation",
        price: 655000,
        color: "#33505a",
        image:
            "https://www.optimum.com/mobile/sites/default/files/product/apple-iphone14promax-deeppurple-side.png"),
    Item(
        id: 09,
        name: "Apple iPad Mini 6 ",
        desc: "4/256GB",
        price: 203000,
        color: "#33505a",
        image: "https://www.mega.pk/items_images/ts_22940.webp"),
    Item(
        id: 10,
        name: "Apple MacBook Air MLY23",
        desc: "13.6_INCH 8/256GB",
        price: 503999,
        color: "#33505a",
        image: "https://www.mega.pk/items_images/ts_23517.webp"),
    Item(
        id: 11,
        name: "iphone XR",
        desc: "3/64GB",
        price: 102999,
        color: "#33505a",
        image: "https://www.mega.pk/items_images/ts_24478.webp"),
    Item(
        id: 12,
        name: "iphone 13 pro",
        desc: "4/128GB",
        price: 356999,
        color: "#33505a",
        image: "https://www.mega.pk/items_images/ts_24355.webp"),
    Item(
        id: 13,
        name: "Apple AirPods Pro ",
        desc: "2nd generation 1st Copy",
        price: 4750,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEe3gMZQ2h43_RiUpynAf5lykYvKGtHynqrQ&usqp=CAU"),
    Item(
        id: 14,
        name: "Apple Mackbook 16 M1",
        desc: "16.2_inch 64GB 1TB_SSD",
        price: 1065549,
        color: "#33505a",
        image: "https://www.mega.pk/items_images/ts_23702.webp"),
    Item(
        id: 15,
        name: "Apple iPad Pro",
        desc: "1st Generation",
        price: 15999,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-XE35FAAsERFjSOyRMM71sZHDt9ngXypPyA&usqp=CAU"),
    Item(
        id: 16,
        name: "Apple iPad Pro",
        desc: "11.0_inch 8/256GB",
        price: 290699,
        color: "#33505a",
        image: "https://www.mega.pk/items_images/ts_22294.webp"),
    Item(
        id: 17,
        name: "iphone 11",
        desc: "4/128GB",
        price: 209999,
        color: "#33505a",
        image:
            "https://www.mega.pk/items_images/Apple+iPhone+11+128GB+PTA++Approved+Price+in+Pakistan%2C+Specifications%2C+Features_-_24354.webp"),
    Item(
        id: 18,
        name: "Apple iPad Pro M2 Chip",
        desc: "12.9_inch 8/256Gb",
        price: 449999,
        color: "#33505a",
        image: "https://www.mega.pk/items_images/ts_23794.webp"),
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
