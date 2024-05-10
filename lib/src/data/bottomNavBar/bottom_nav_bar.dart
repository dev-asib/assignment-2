import 'package:flutter/material.dart';
import 'package:ostad_assignment_2/src/data/bottomNavBar/checkout_button.dart';
import 'package:ostad_assignment_2/src/data/bottomNavBar/total_amount.dart';


SizedBox buildBottomNavigationBar({required totalAmount}) {
  return SizedBox(
    height: 120,
    child: Padding(
      padding: EdgeInsets.all(14),
      child: Column(
        children: [
          buildTotalAmount(totalAmount:totalAmount ),
          SizedBox(height: 10,),
          buildCheckOutButton(),
        ],
      ),
    ),
  );
}
