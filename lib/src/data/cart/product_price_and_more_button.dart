import 'package:flutter/material.dart';

Column buildProductPriceAndMoreButton(productPrice) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_vert,
            color: Colors.grey,
            size: 25,
          )),
      Text(
        "$productPrice\$",
        style: TextStyle(
          fontSize: 20,
          fontFamily: "metropolis.bold",
        ),
      ),
    ],
  );
}
