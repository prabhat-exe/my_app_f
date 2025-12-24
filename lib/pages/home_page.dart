import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:fprojects/models/catelog.dart';
import 'package:fprojects/widgets/drawer.dart';
import 'package:fprojects/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catelogJson = await rootBundle.loadString(
      "assets/files/catelog.json",
    );
    final decodedData = jsonDecode(catelogJson);
    var productsData = decodedData["products"];

    CatelogModel.items = List.from(
      productsData,
    ).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(4, (index) => CatelogModel.items[0]);
    return Scaffold(
      appBar: AppBar(title: Text("My App")),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: (CatelogModel.items.isNotEmpty)
            ? GridView.builder(
                itemBuilder: (context, index) {
                  final item = CatelogModel.items[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: GridTile(
                      header: Container(
                        padding: const EdgeInsets.all(12),
                        color: Colors.deepPurple,
                        child: Text(
                          item.name,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      footer: Container(
                        padding: const EdgeInsets.all(12),
                        color: Colors.black,
                        child: Text(
                          item.price.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      child: Image.network(item.image),
                    ),
                  );
                },
                itemCount: CatelogModel.items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
              )
            : Center(child: CircularProgressIndicator()),
      ),

      drawer: My_Drawer(),
    );
  }
}
