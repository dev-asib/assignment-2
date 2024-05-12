import 'package:flutter/material.dart';

PreferredSize buildAppBarWidget({
  required double preferedSizedFromHeight,
  required double preferedSize,
  required double myBagTextSize,
  required double serachIconSize,
  required context,
}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(preferedSizedFromHeight),
    child: SizedBox(
      height: preferedSize,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Wrap(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: serachIconSize,
                ),
              ),
            ),
            Text(
              textAlign: TextAlign.left,
              "My Bag",
              style: TextStyle(
                color: Color(
                  0xff222222,
                ),
                fontSize: myBagTextSize,
                fontFamily: "metropolis.bold",
              ),
            )
          ],
        ),
      ),
    ),
  );
}
