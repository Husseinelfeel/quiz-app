import 'package:flutter/material.dart';
import 'package:tech/screens/line.dart';
import 'package:tech/widgets/bars.dart';
import '../models/product_model.dart';
class barScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
elevation: 0,
        actions:[Row(
          children: [
            IconButton(onPressed:() {
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>BarChartSample1()));
            }, icon: Icon(Icons.add_shopping_cart)),
          ],
        ),] ,
      ),
    body: ListView(
      children: [
        ...products.map((e) => bars(product:e)),
      ],
    ),
    );
  }
}
