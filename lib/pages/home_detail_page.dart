import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fprojects/models/catelog.dart';
import 'package:fprojects/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Mythemes.lightTheme(context),
      darkTheme: Mythemes.darkTheme(context),
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent),
        bottomNavigationBar: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "\$${catalog.price}".text.bold.xl4.red800.make(),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Mythemes.darkBluishColor,
                  ),
                  shape: MaterialStateProperty.all(const StadiumBorder()),
                ),
                child: "Buy".text.white.make(),
              ).wh(100, 50),
            ],
          ),
        ),

        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                tag: Key(catalog.id.toString()),
                child: Center(
                  child: Image.network(
                    catalog.image,
                    fit: BoxFit.contain,
                  ).p16(),
                ),
              ).h32(context),

              // Details Section with Arc
              Expanded(
                child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.convey,
                  edge: VxEdge.top,
                  child: Container(
                    width: context.screenWidth,
                    color: Theme.of(context).canvasColor,
                    padding: const EdgeInsets.all(24.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          catalog.name.text.xl4.bold
                              .color(Mythemes.darkBluishColor)
                              .make(),
                          10.heightBox,
                          catalog.description.text.xl
                              .textStyle(Theme.of(context).textTheme.bodySmall!)
                              .color(Mythemes.creamColor)
                              .make(),
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
                              .text
                              .textStyle(context.captionStyle)
                              .color(Mythemes.creamColor)
                              .make()
                              .pLTRB(0, 20, 0, 0),
                        ],
                      ).p32(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
