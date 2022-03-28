import 'package:first_project/components/categories.dart';
import 'package:first_project/constants.dart';
import 'package:first_project/models/product.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Women",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.75),
              itemBuilder: (context, index) => ItemCard(),
            ),
          ),
        )
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final Product? product;
  final Function? press;
  const ItemCard({Key? key, this.product, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(kDefaultPaddin),
          height: 180,
          width: 160,
          decoration: BoxDecoration(
              color: products[0].color,
              borderRadius: BorderRadius.circular(16)),
          child: Image.asset(products[0].image.toString()),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
          child: Text(
            products[0].title.toString(),
            style: TextStyle(color: kTextLightColor),
          ),
        ),
        Text(
          "R\$234,00",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
