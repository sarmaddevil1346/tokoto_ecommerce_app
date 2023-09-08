import 'package:flutter/material.dart';
import 'package:tokoto_ecommerce_app/models/Products.dart';
class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      leading: SizedBox(
        height: 40,
        width: 40,
        child: ElevatedButton(onPressed:() {

        },  child : Icon(Icons.arrow_back_ios_new
        ) ),
      ),
    ),
    );
  }
}
class ProductDetailsArguments {
  final  Product product;

  ProductDetailsArguments({required this.product});

}
