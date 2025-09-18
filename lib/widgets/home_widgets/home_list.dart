import 'package:flutter/material.dart';
import 'package:fprojects/models/catelog.dart';
import 'package:fprojects/pages/home_detail_page.dart';
import 'package:fprojects/widgets/home_widgets/home_images.dart';
import 'package:fprojects/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatelogList extends StatelessWidget {
  const CatelogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatelogModel.items.count(),
      itemBuilder: (context, index) {
        final catalog = CatelogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailPage(catalog: catalog),
            ),
          ),
          child: CatelogItem(catalog: catalog),
        );
      },
    );
  }
}

class CatelogItem extends StatelessWidget {
  const CatelogItem({Key? key, required this.catalog})
    : assert(catalog != null),
      super(key: key);

  final Item catalog;

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.lg.bold
                    .color(Mythemes.darkBluishColor)
                    .make(),
                catalog.description.text.textStyle(context.captionStyle).make(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "\$${catalog.price}".text.bold.xl.make(),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Mythemes.darkBluishColor,
                          ),
                        ),
                        child: "Buy".text.color(Colors.white).make(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ).white.roundedLg.square(150).make().py16();
  }
}
