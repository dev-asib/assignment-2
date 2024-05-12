import 'package:flutter/material.dart';
import 'package:ostad_assignment_2/src/data/congratulations_dialog/snack_bar_message.dart';

Widget buildCheckOutButton({
  required context,
  required itemCount,
  required double checkOutButtonHeight,
}) {
  return SizedBox(
    height: checkOutButtonHeight,
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xffDB3022),
      ),
      onPressed: () {
        buildCheckOutSnackBar(context, itemCount);
      },
      child: Text(
        "CHECK OUT",
        style: TextStyle(
          color: Color(0xffFFFFFF),
          fontFamily: "metropolis.bold",
        ),
      ),
    ),
  );
}
