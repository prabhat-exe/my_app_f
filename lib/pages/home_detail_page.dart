import 'package:flutter/material.dart';
import 'package:fprojects/models/catelog.dart';
import 'package:fprojects/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Mythemes.creamColor,
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
                child: Image.network(catalog.image, fit: BoxFit.contain).p16(),
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
                  color: Colors.white,
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      catalog.name.text.xl4.bold
                          .color(Mythemes.darkBluishColor)
                          .make(),
                      10.heightBox,
                      catalog.description.text.xl
                          .textStyle(Theme.of(context).textTheme.bodySmall!)
                          .make(),
                    ],
                  ).p32(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
