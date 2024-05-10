import 'package:flutter/material.dart';

PreferredSize buildAppBarWidget() {
  return PreferredSize(
    preferredSize: Size.fromHeight(140),
    child: SizedBox(
      height: 160,
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                forceMaterialTransparency: true,
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 30,))
                ],
              ),
              Text(
                textAlign: TextAlign.left,
                "My Bag",
                style: TextStyle(
                    color: Color(
                      0xff222222,
                    ),
                    fontSize: 34,
                    fontFamily: "metropolis.bold"),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
