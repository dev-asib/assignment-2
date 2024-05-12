import 'package:flutter/material.dart';

Widget buildCardImage({required productImage, required double imageWidth}) {
  return Container(
    width: imageWidth,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          topLeft: Radius.circular(8),
        ),
        image: DecorationImage(
            image: AssetImage("$productImage"), fit: BoxFit.fill)),
  );
}
