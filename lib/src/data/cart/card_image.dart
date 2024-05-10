import 'package:flutter/material.dart';

Widget buildCardImage(productImage) {
  return Container(
    width: 104,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          topLeft: Radius.circular(8),
        ),
        image: DecorationImage(
            image: AssetImage("$productImage"), fit: BoxFit.fill)),
  );
}
