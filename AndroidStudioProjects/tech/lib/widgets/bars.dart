import 'package:flutter/material.dart';
import 'package:tech/models/product_model.dart';

class bars extends StatefulWidget {
  final Product product;

  const bars({required this.product});

  @override
  State<bars> createState() => _barsState();
}

class _barsState extends State<bars> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Card(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      widget.product.image,
                      width: 25,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(widget.product.title),
                    const SizedBox(
                      width: 20,
                    ),
                    Text('\$${widget.product.price.toString()}'),
                    IconButton(
                      onPressed: () {
                        setState(() {});
                      },
                      icon:const Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
