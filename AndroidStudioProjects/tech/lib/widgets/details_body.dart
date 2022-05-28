import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tech/constants.dart';
import 'package:tech/models/cart.dart';
import 'package:tech/models/product_model.dart';
import 'package:tech/widgets/colorDot_widgets.dart';
import 'package:tech/widgets/product_image_widgets.dart';

class DetailsBody extends StatefulWidget {
  final Product product;

  const DetailsBody({Key? key, required this.product}) : super(key: key);
  static int price = 0;

  void increase() {
    price++;
  }

  void decrease() {
    price--;
  }

  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding:
              const EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          height: 540.0,
          width: double.infinity,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              color: kBackgroundColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                  child: ProductImage(size: size, image: widget.product.image)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ColorDot(
                      color: Colors.red,
                      isSelected: false,
                    ),
                    ColorDot(color: Colors.blue, isSelected: false),
                    ColorDot(color: kTextLightColor, isSelected: true),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(widget.product.title,
                    style: Theme.of(context).textTheme.headline6),
              ),
              Text('السعر: \$${widget.product.price}',
                  style: const TextStyle(
                      color: kSecondaryColor,
                      fontSize: 28,
                      fontWeight: FontWeight.w600)),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 11.0),
                  child: Container(
                      height: 40,
                      width: 150,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.5)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        Cart.decrease();
                                      });
                                    },
                                    child: const Text(
                                      '-',
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              )),
                          Text(
                            '${Cart.price}',
                            style: const TextStyle(
                                color: kSecondaryColor,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  Cart.increase();
                                });
                              },
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: const Center(
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )),
                        ],
                      )),
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
            ],
          ),
        ),
        Container(
            margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            padding: const EdgeInsets.symmetric(
                vertical: kDefaultPadding / 2,
                horizontal: kDefaultPadding * 1.5),
            child: Text(
              widget.product.description,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            )),
      ],
    );
  }
}
