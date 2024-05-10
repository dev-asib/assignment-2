import 'package:flutter/material.dart';


Stack buildIncreementDecreementButton(
    {required IconData iconButton,
    required context,
    productTitle,
      required productQuantity,
  }) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        height: 36,
        width: 36,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 1,
                  offset: Offset(1, 2))
            ]),
      ),
      IconButton(
        onPressed: () {},


        icon: Icon(
          iconButton,
          size: 25,
          color: Colors.grey,
        ),
      )
    ],
  );
}
