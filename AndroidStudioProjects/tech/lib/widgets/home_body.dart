import 'package:flutter/material.dart';
import 'package:tech/screens/detail_screen.dart';
import 'package:tech/widgets/product_widget.dart';
import '../constants.dart';
import '../models/product_model.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 70,
                  ),
                  decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => Productui(
                    itemIndex: index,
                    product: products[index],
                    onpress: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) =>
                              detailScreen(product: products[index])));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
