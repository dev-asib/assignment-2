import 'package:flutter/material.dart';

Widget buildTotalAmount({required totalAmount}) {
  return SizedBox(
    height: 22,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Total amount:",
            style: TextStyle(
                fontSize: 15,
                fontFamily: "metropolis.bold",
                color: Color(0xff9B9B9B))),
        Text(
          "$totalAmount\$",
          style: TextStyle(fontFamily: "metropolis.bold", fontSize: 20),
        )
      ],
    ),
  );
}