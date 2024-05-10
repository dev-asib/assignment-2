import 'package:flutter/material.dart';

RichText buildProductColorOrSize(productColor, ColorOrSize) {
  return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: "$ColorOrSize: ",
            style: TextStyle(
                fontSize: 11, fontFamily: "metropolis.bold", color: Colors.grey)),
        TextSpan(
            text: "$productColor",
            style: TextStyle(
                fontSize: 11, fontFamily: "metropolis.bold", color: Colors.black))
      ]));
}
