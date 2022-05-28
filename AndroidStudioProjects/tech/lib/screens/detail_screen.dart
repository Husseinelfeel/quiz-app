import 'package:flutter/material.dart';
import 'package:tech/models/product_model.dart';
import 'package:tech/widgets/details_body.dart';
import '../constants.dart';
import 'bar_screen.dart';

class detailScreen extends StatefulWidget {
  final Product product;

  const detailScreen({Key? key, required this.product}) : super(key: key);

  @override
  State<detailScreen> createState() => _detailScreenState();
}

class _detailScreenState extends State<detailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(product: widget.product),
    );
  }
}

AppBar detailsAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    title: Text(
      'رجوع',
      style: TextStyle(
        color: kPrimaryColor,
      ),
    ),
    centerTitle: false,
    backgroundColor: kBackgroundColor,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.arrow_back,
        color: kPrimaryColor,
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: IconButton(onPressed: () {

    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>barScreen()));
        }, icon:Icon( Icons.add_shopping_cart,color:kPrimaryColor ,size: 28,),
        ),
      ),
    ],
    
  );
}
