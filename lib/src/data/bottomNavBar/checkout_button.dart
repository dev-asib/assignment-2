
import 'package:flutter/material.dart';

Widget buildCheckOutButton() {
  return SizedBox(
      height: 48,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Color(0xffDB3022)),
          onPressed: () {},
          child: Text(
            "CHECK OUT",
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontFamily: "metropolis.bold",
            ),
          )));
}