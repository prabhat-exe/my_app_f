// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CatelogModel {
  static List<Item> items = [];
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

  Item copyWith({
    int? id,
    String? name,
    num? price,
    String? description,
    String? image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      description: description ?? this.description,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as int,
      name: map['name'] as String,
      price: map['price'] as num,
      description: map['description'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, price: $price, description: $description, image: $image)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.price == price &&
        other.description == description &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        price.hashCode ^
        description.hashCode ^
        image.hashCode;
  }
}
