import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget {
  final String name;
  final String description;
  final int price;
  final String image;

  ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset(
                (this.image),
                fit: BoxFit.cover,
              ),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}
