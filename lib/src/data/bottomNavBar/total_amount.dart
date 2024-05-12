import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildTotalAmount({
  required totalAmount,
  required double totalAmountHeight,
  required context,
  required double totalAmountTextWidth,
  required double totalAmountPriceTextWidth,
}) {
  return SizedBox(
    height: totalAmountHeight,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Container(
            width: totalAmountTextWidth,
            child: Text(
              "Total amount:",
              style: TextStyle(
                fontSize: 15,
                fontFamily: "metropolis.bold",
                color: Color(0xff9B9B9B),
              ),
            ),
          ),
        ),
        Flexible(
          child: Container(
            alignment: Alignment.centerRight,
            width: totalAmountPriceTextWidth,
            child: Text(
              "$totalAmount\$",
              style: TextStyle(
                fontFamily: "metropolis.bold",
                fontSize: 20,
              ),
            ),
          ),
        )
      ],
    ),
  );
}
