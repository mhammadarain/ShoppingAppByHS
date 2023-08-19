class Item {
  final String id;
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
}

final products = [
  Item(
      id: "Item001",
      name: "iphone 12 pro",
      desc: "Apple iphone 12th generation",
      price: 275000,
      color: "#33505a",
      image:
          "https://www.google.com/search?q=imran+khan+pic&oq=imran&gs_lcrp=EgZjaHJvbWUqBggBEEUYOzIGCAAQRRg5MgYIARBFGDsyBggCEEUYOzIJCAMQIxgnGIoFMg0IBBAAGIMBGLEDGIAEMg0IBRAuGIMBGLEDGIAEMg0IBhAAGIMBGLEDGIoFMgoIBxAuGLEDGIAEMgoICBAAGLEDGIAEMg0ICRAuGIMBGLEDGIAE0gEJNzY5MmowajE1qAIAsAIA&sourceid=chrome&ie=UTF-8#vhid=jT9BvKvyiarv2M&vssid=l")
];
