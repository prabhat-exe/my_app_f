import 'package:flutter/material.dart';
import 'package:fprojects/models/catelog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print('Tapped on ${item.name}');
        },
        leading: Image.network(
          item.image,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: Text(item.name),
        subtitle: Text(item.description),
        trailing: Text(
          "\$${item.price}",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
