import 'package:first_project/constants.dart';
import 'package:first_project/models/product.dart';
import 'package:first_project/screens/details/components/add_to_cart.dart';
import 'package:first_project/screens/details/components/cart_counter.dart';
import 'package:first_project/screens/details/components/color_and_size.dart';
import 'package:first_project/screens/details/components/counter_with_heart_btn.dart';
import 'package:first_project/screens/details/components/description.dart';
import 'package:first_project/screens/details/components/product_title_with_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Product? product;

  const Body({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height - 85,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height / 3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPaddin / 2),
                      Description(product: product),
                      SizedBox(height: kDefaultPaddin / 2),
                      CounterWithHeartBtn(),
                      SizedBox(height: kDefaultPaddin / 2),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
