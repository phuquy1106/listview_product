import 'package:flutter/material.dart';

import '../components/product_box.dart';

class ListViewProduct extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListProducts();
  }
}

class _ListProducts extends State<ListViewProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Product Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
              name: "iPhone",
              description: "iPhone is the stylist phone ever",
              price: 1000,
              image: "assets/images/do.png",
            ),
            ProductBox(
              name: "Pixel",
              description: "Pixel is the most featureful phone ever",
              price: 800,
              image: "assets/images/vang.png",
            ),
            ProductBox(
              name: "Laptop",
              description: "Laptop is most productive development tool",
              price: 2000,
              image: "assets/images/hong.png",
            ),
            ProductBox(
              name: "Tablet",
              description: "Tablet is the most useful device ever for meeting",
              price: 1500,
              image: "assets/images/tim.png",
            ),
            ProductBox(
              name: "Pendrive",
              description: "Pendrive is useful storage medium",
              price: 100,
              image: "assets/images/xanh.png",
            ),

          ],
        )
    );
  }

}