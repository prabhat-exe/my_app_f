class CatelogModel {
  static final items = [
    Item(
      id: 1,
      name: "Iphone 12",
      price: 999,
      description:
          "Apple iPhone 12 with A14 Bionic chip, 5G speed, and advanced dual-camera system.",
      image: "https://images.pexels.com/photos/842711/pexels-photo-842711.jpeg",
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final num price;
  final String description;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
  });
}
