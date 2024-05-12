import 'package:flutter/material.dart';
import 'package:ostad_assignment_2/src/data/bottomNavBar/checkout_button.dart';
import 'package:ostad_assignment_2/src/data/bottomNavBar/total_amount.dart';

SizedBox buildBottomNavigationBar({
  required totalAmount,
  required context,
  required itemCount,
  required double bottomNavHeight,
  required double checkOutButtonHeight,
  required double totalAmountHeight,
  required double bottomNavPaddingLeft,
  required double bottomNavPaddingRight,
  required double bottomNavPaddingTop,
  required double bottomNavPaddingBottom,
  required Widget middleSpacer,
  required double totalAmountTextWidth,
  required double totalAmountPriceTextWidth,
  required double bottomNavBottomHeight,
  required double bottomNavTopHeight,
}) {
  return SizedBox(
    height: bottomNavHeight,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 14, ),
      child: Column(
        children: [
          SizedBox(
            height: bottomNavTopHeight,
          ),
          buildTotalAmount(
            totalAmount: totalAmount,
            totalAmountHeight: totalAmountHeight,
            context: context,
            totalAmountPriceTextWidth: totalAmountPriceTextWidth,
            totalAmountTextWidth: totalAmountTextWidth,
          ),
          middleSpacer,
          buildCheckOutButton(
            itemCount: itemCount,
            context: context,
            checkOutButtonHeight: checkOutButtonHeight,
          ),
          SizedBox(
            height: bottomNavBottomHeight,
          ),
        ],
      ),
    ),
  );
}
