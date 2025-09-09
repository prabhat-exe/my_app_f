import 'package:flutter/material.dart';
import 'package:fprojects/models/catelog.dart';
import 'package:fprojects/widgets/drawer.dart';
import 'package:fprojects/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(4, (index) => CatelogModel.items[0]);
    return Scaffold(
      appBar: AppBar(title: Text("My App")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            final item = dummyList[index];
            return ItemWidget(item: item);
          },
        ),
      ),

      drawer: My_Drawer(),
    );
  }
}
