import 'package:flutter/material.dart';

void buildCheckOutSnackBar(context, itemCount) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.red,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Congratulations!",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "You have added ${itemCount[0]} Pullover, ${itemCount[1]} T-Shirt & ${itemCount[2]} Sport Dress.",
            style:
            TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}