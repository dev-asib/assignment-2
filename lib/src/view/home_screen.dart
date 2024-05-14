import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ostad_assignment_2/src/controller/producdt_data_controller.dart';
import 'package:ostad_assignment_2/src/data/app_bar/app_bar.dart';
import 'package:ostad_assignment_2/src/data/bottomNavBar/bottom_nav_bar.dart';
import 'package:ostad_assignment_2/src/data/cart/card_image.dart';
import 'package:ostad_assignment_2/src/data/cart/cart_box_decoration.dart';
import 'package:ostad_assignment_2/src/data/cart/cart_produdct_color_and_size_view.dart';
import 'package:ostad_assignment_2/src/data/cart/cart_title.dart';
import 'package:ostad_assignment_2/src/data/cart/product_price_and_more_button.dart';
import 'package:ostad_assignment_2/src/data/congratulations_dialog/congratulations_dialog.dart';

class HomeActivity extends StatefulWidget {
  HomeActivity({
    super.key,
    required this.dialogHeight,
    required this.dialogWidth,
    required this.totalAmountHeight,
    required this.checkOutButtonHeight,
    required this.bottomNavHeight,
    required this.bottomNavPaddingLeft,
    required this.bottomNavPaddingRight,
    required this.bottomNavPaddingTop,
    required this.bottomNavPaddingBottom,
    required this.middleSpacer,
    required this.preferedSizedFromHeight,
    required this.preferedSize,
    required this.myBagTextSize,
    required this.serachIconSize,
    required this.imageWidth,
    required this.productPriceMoreButtonWidth,
    required this.productMiddleWidgetsSize,
    required this.totalAmountTextWidth,
    required this.totalAmountPriceTextWidth,
    required this.bottomNavBottomHeight,
    required this.bottomNavTopHeight,
    required this.cartHeight,
    required this.cardImageWidth,
    required this.spaceImageToMiddleColumn,
    required this.increementDecreementValueContainerHeight,
    required this.increementDecreementValueContainerWidth,
    required this.increementIconContainerHeight,
    required this.increementIconContainerWidth,
    required this.decreementIconContainerHeight,
    required this.decreementIconContainerWidth,
    required this.increementDecreementContainerWidth,
    required this.increementDecreementContainerHeight,
    required this.productColorAndSizeTextWidth,
    required this.titleTextHeight,
    required this.titleTextWidth,
    required this.productColorAndSizeTextHeight,
    required this.priceAndMoreButtonContainerWidth,
    required this.increementDecreementTopSpace,
  });

  double dialogHeight;
  double dialogWidth;
  double totalAmountHeight;
  double checkOutButtonHeight;
  double bottomNavHeight;
  double bottomNavPaddingLeft;
  double bottomNavPaddingRight;
  double bottomNavPaddingTop;
  double bottomNavPaddingBottom;
  Widget middleSpacer;
  double preferedSizedFromHeight;
  double preferedSize;
  double myBagTextSize;
  double serachIconSize;
  double imageWidth;
  double productPriceMoreButtonWidth;
  double productMiddleWidgetsSize;
  double totalAmountTextWidth;
  double totalAmountPriceTextWidth;
  double bottomNavBottomHeight;
  double bottomNavTopHeight;
  double cartHeight;
  double cardImageWidth;
  double spaceImageToMiddleColumn;
  double increementDecreementValueContainerHeight;
  double increementDecreementValueContainerWidth;
  double increementIconContainerHeight;
  double increementIconContainerWidth;
  double decreementIconContainerHeight;
  double decreementIconContainerWidth;
  double increementDecreementContainerWidth;
  double increementDecreementContainerHeight;
  double productColorAndSizeTextWidth;
  double titleTextHeight;
  double titleTextWidth;
  double productColorAndSizeTextHeight;
  double priceAndMoreButtonContainerWidth;
  double increementDecreementTopSpace;

  @override
  State<HomeActivity> createState() => _HomeActivityState(
        dialogWidth: dialogWidth,
        dialogHeight: dialogHeight,
        totalAmountHeight: totalAmountHeight,
        checkOutButtonHeight: checkOutButtonHeight,
        bottomNavHeight: bottomNavHeight,
        bottomNavPaddingLeft: bottomNavPaddingLeft,
        bottomNavPaddingRight: bottomNavPaddingRight,
        bottomNavPaddingTop: bottomNavPaddingTop,
        bottomNavPaddingBottom: bottomNavPaddingBottom,
        middleSpacer: middleSpacer,
        preferedSizedFromHeight: preferedSizedFromHeight,
        preferedSize: preferedSize,
        myBagTextSize: myBagTextSize,
        serachIconSize: serachIconSize,
        imageWidth: imageWidth,
        productPriceMoreButtonWidth: productPriceMoreButtonWidth,
        productMiddleWidgetsSize: productMiddleWidgetsSize,
        totalAmountPriceTextWidth: totalAmountPriceTextWidth,
        totalAmountTextWidth: totalAmountTextWidth,
        bottomNavBottomHeight: bottomNavBottomHeight,
        bottomNavTopHeight: bottomNavTopHeight,
        cartHeight: cartHeight,
        cardImageWidth: cardImageWidth,
        spaceImageToMiddleColumn: spaceImageToMiddleColumn,
        increementDecreementValueContainerHeight:
            increementDecreementValueContainerHeight,
        increementDecreementValueContainerWidth:
            increementDecreementValueContainerWidth,
        increementIconContainerHeight: increementIconContainerHeight,
        increementIconContainerWidth: increementIconContainerWidth,
        decreementIconContainerHeight: decreementIconContainerHeight,
        decreementIconContainerWidth: decreementIconContainerWidth,
        increementDecreementContainerWidth: increementDecreementContainerWidth,
        increementDecreementContainerHeight:
            increementDecreementContainerHeight,
        productColorAndSizeTextWidth: productColorAndSizeTextWidth,
        titleTextHeight: titleTextHeight,
        titleTextWidth: titleTextWidth,
        productColorAndSizeTextHeight: productColorAndSizeTextHeight,
        priceAndMoreButtonContainerWidth: priceAndMoreButtonContainerWidth,
      increementDecreementTopSpace:increementDecreementTopSpace,
      );
}

class _HomeActivityState extends State<HomeActivity> {
  List<int> productQuantities = [1, 1, 1];
  List<int> productPrices = [51, 30, 43];
  int totalAmount = 124;

  _HomeActivityState({
    required this.dialogWidth,
    required this.dialogHeight,
    required this.totalAmountHeight,
    required this.checkOutButtonHeight,
    required this.bottomNavHeight,
    required this.bottomNavPaddingLeft,
    required this.bottomNavPaddingRight,
    required this.bottomNavPaddingTop,
    required this.bottomNavPaddingBottom,
    required this.middleSpacer,
    required this.preferedSizedFromHeight,
    required this.preferedSize,
    required this.myBagTextSize,
    required this.serachIconSize,
    required this.imageWidth,
    required this.productPriceMoreButtonWidth,
    required this.productMiddleWidgetsSize,
    required this.totalAmountTextWidth,
    required this.totalAmountPriceTextWidth,
    required this.bottomNavBottomHeight,
    required this.bottomNavTopHeight,
    required this.cartHeight,
    required this.cardImageWidth,
    required this.spaceImageToMiddleColumn,
    required this.increementDecreementValueContainerHeight,
    required this.increementDecreementValueContainerWidth,
    required this.increementIconContainerHeight,
    required this.increementIconContainerWidth,
    required this.decreementIconContainerHeight,
    required this.decreementIconContainerWidth,
    required this.increementDecreementContainerWidth,
    required this.increementDecreementContainerHeight,
    required this.productColorAndSizeTextWidth,
    required this.titleTextHeight,
    required this.titleTextWidth,
    required this.productColorAndSizeTextHeight,
    required this.priceAndMoreButtonContainerWidth,
    required this.increementDecreementTopSpace,
  });

  double dialogHeight;
  double dialogWidth;
  double totalAmountHeight;
  double checkOutButtonHeight;
  double bottomNavHeight;
  double bottomNavPaddingLeft;
  double bottomNavPaddingRight;
  double bottomNavPaddingTop;
  double bottomNavPaddingBottom;
  Widget middleSpacer;
  double preferedSizedFromHeight;
  double preferedSize;
  double myBagTextSize;
  double serachIconSize;
  double imageWidth;
  double productPriceMoreButtonWidth;
  double productMiddleWidgetsSize;
  double totalAmountTextWidth;
  double totalAmountPriceTextWidth;
  double bottomNavBottomHeight;
  double bottomNavTopHeight;
  double cartHeight;
  double cardImageWidth;
  double spaceImageToMiddleColumn;
  double increementDecreementValueContainerHeight;
  double increementDecreementValueContainerWidth;
  double increementIconContainerHeight;
  double increementIconContainerWidth;
  double decreementIconContainerHeight;
  double decreementIconContainerWidth;
  double increementDecreementContainerWidth;
  double increementDecreementContainerHeight;
  double productColorAndSizeTextWidth;
  double titleTextHeight;
  double titleTextWidth;
  double productColorAndSizeTextHeight;
  double priceAndMoreButtonContainerWidth;
  double increementDecreementTopSpace;

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        appBar: buildAppBarWidget(
          preferedSizedFromHeight: preferedSizedFromHeight,
          preferedSize: preferedSize,
          myBagTextSize: myBagTextSize,
          serachIconSize: serachIconSize,
          context: context,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            children: [
              SizedBox(
                height: 14,
              ),
              Expanded(
                  child: ListView.separated(
                primary: false,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  ProductDetails productDetails = ProductDetails();
                  String productTitle =
                      productDetails.prodcutData[index]['productTitle'];
                  String productImage =
                      productDetails.prodcutData[index]['productImage'];
                  String productColor =
                      productDetails.prodcutData[index]['productColor'];
                  String productSize =
                      productDetails.prodcutData[index]['productSize'];

                  void increment(int index) {
                    if (productQuantities[index] < 5) {
                      productQuantities[index]++;
                      productQuantities != 5;
                      totalAmount = totalAmount + productPrices[index];
                      setState(() {}); // Rebuild UI
                    }

                    if (productQuantities[index] == 5) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return dialog(
                              productTitle: productTitle,
                              context: context,
                              dialogHeight: dialogHeight,
                              dialogWidth: dialogWidth,
                            );
                          });
                    }
                  }

                  void decrement(int index) {
                    if (productQuantities[index] > 0) {
                      productQuantities[index]--;
                      totalAmount = totalAmount - productPrices[index];
                      setState(() {}); // Rebuild UI
                    }
                  }

                  return Container(
                    height: cartHeight,
                    width: double.infinity,
                    decoration: buildCartBoxDecorations(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            width: cardImageWidth,
                            child: buildCardImage(
                              productImage: productImage,
                              imageWidth: imageWidth,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: spaceImageToMiddleColumn,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: titleTextHeight,
                                width: titleTextWidth,
                                alignment: Alignment.centerLeft,
                                child: FittedBox(
                                  child: buildCartTtitle(
                                    productTitle,
                                  ),
                                ),
                              ),
                              Container(
                                height: productColorAndSizeTextHeight,
                                width: productColorAndSizeTextWidth,
                                alignment: Alignment.centerLeft,
                                child: FittedBox(
                                  child: buildProductColorAndSize(
                                    productColor,
                                    productSize,
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: increementDecreementTopSpace,
                              ),


                              Container(
                                width: increementDecreementContainerWidth,
                                height: increementDecreementContainerHeight,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: FittedBox(
                                    child: Row(
                                      children: [
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            FittedBox(
                                              child: Container(
                                                height:
                                                    decreementIconContainerHeight,
                                                width:
                                                    decreementIconContainerWidth,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle,
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.3),
                                                        blurRadius: 5,
                                                        spreadRadius: 1,
                                                        offset: Offset(1, 2))
                                                  ],
                                                ),
                                              ),
                                            ),
                                            FittedBox(
                                              child: IconButton(
                                                onPressed: () {
                                                  decrement(index);
                                                },
                                                icon: Icon(
                                                  Icons.remove,
                                                  size: 25,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        FittedBox(
                                          child: Container(
                                            height:
                                                increementDecreementValueContainerHeight,
                                            width:
                                                increementDecreementValueContainerWidth,
                                            alignment: Alignment.center,
                                            child: FittedBox(
                                              child: Text(
                                                "${productQuantities[index]}",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily:
                                                        "metropolis.bold"),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            FittedBox(
                                              child: Container(
                                                height:
                                                    increementIconContainerHeight,
                                                width:
                                                    increementIconContainerWidth,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle,
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.3),
                                                        blurRadius: 5,
                                                        spreadRadius: 1,
                                                        offset: Offset(1, 2))
                                                  ],
                                                ),
                                              ),
                                            ),
                                            FittedBox(
                                              child: IconButton(
                                                onPressed: () {
                                                  increment(index);
                                                },
                                                icon: Icon(
                                                  Icons.add,
                                                  size: 25,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Expanded(
                          child: Align(
                            alignment:Alignment.centerRight,
                            child: Container(
                              width: priceAndMoreButtonContainerWidth,
                              child: FittedBox(
                                child: buildProductPriceAndMoreButton(
                                  productPrices[index],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.transparent,
                  );
                },
              )),
            ],
          ),
        ),
        bottomNavigationBar: buildBottomNavigationBar(
          totalAmount: totalAmount,
          context: context,
          itemCount: productQuantities,
          totalAmountHeight: totalAmountHeight,
          checkOutButtonHeight: checkOutButtonHeight,
          bottomNavHeight: bottomNavHeight,
          bottomNavPaddingLeft: bottomNavPaddingLeft,
          bottomNavPaddingRight: bottomNavPaddingRight,
          bottomNavPaddingTop: bottomNavPaddingTop,
          bottomNavPaddingBottom: bottomNavPaddingBottom,
          middleSpacer: middleSpacer,
          totalAmountPriceTextWidth: totalAmountPriceTextWidth,
          totalAmountTextWidth: totalAmountTextWidth,
          bottomNavBottomHeight: bottomNavBottomHeight,
          bottomNavTopHeight: bottomNavTopHeight,
        ),
      ),
    );
  }
}
