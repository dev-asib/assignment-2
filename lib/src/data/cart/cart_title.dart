import 'package:flutter/material.dart';

Text buildCartTtitle(productTitle) {
  return Text(
    "$productTitle",
    style: TextStyle(
      fontSize: 16,
      fontFamily: "metropolis.bold",
    ),
  );
}