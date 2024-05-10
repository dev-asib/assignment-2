import 'package:flutter/material.dart';
import 'package:ostad_assignment_2/src/data/cart/product_color_or_size.dart';

Row buildProductColorAndSize(productColor, productSize) {
  return Row(
    children: [
      buildProductColorOrSize(productColor, "Color"),
      SizedBox(
        width: 10,
      ),
      buildProductColorOrSize(productSize, "Size"),
    ],
  );
}

