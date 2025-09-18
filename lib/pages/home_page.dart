// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fprojects/widgets/home_widgets/home_header.dart';
import 'package:fprojects/widgets/home_widgets/home_list.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:fprojects/models/catelog.dart';
import 'package:fprojects/widgets/themes.dart';

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
      backgroundColor: Mythemes.creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatelogHeader(),
              if (CatelogModel.items.isNotEmpty)
                CatelogList().expand()
              else
                CircularProgressIndicator().p16().centered().expand(),
            ],
          ),
        ),
      ),
    );
  }
}

