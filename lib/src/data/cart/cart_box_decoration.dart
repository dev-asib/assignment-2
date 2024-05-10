import 'package:flutter/material.dart';

BoxDecoration buildCartBoxDecorations() {
  return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
            blurRadius: 0.5,
            spreadRadius: 0,
            color: Colors.grey,
            offset: Offset(0, 1)),
      ]);
}