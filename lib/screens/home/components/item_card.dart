import 'package:first_project/constants.dart';
import 'package:first_project/models/product.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final Product? product;
  final VoidCallback? press;
  const ItemCard({Key? key, this.product, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              decoration: BoxDecoration(
                  color: product?.color,
                  borderRadius: BorderRadius.circular(16)),
              child: Hero(
                  tag: "${product?.id}", child: Image.asset(product!.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              product!.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "R\$${product?.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
