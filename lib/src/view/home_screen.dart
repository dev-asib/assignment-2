import 'package:flutter/material.dart';
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
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  List<int> productQuantities = [1, 1, 1];
  List<int> productPrices = [51, 30, 43];
  int totalAmount = 124;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: buildAppBarWidget(),



      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: [
            Expanded(
                child: ListView.separated(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    ProductDetails productDetails = ProductDetails();
                    String productTitle = productDetails.prodcutData[index]['productTitle'];
                    String productImage = productDetails.prodcutData[index]['productImage'];
                    String productColor = productDetails.prodcutData[index]['productColor'];
                    String productSize = productDetails.prodcutData[index]['productSize'];

                    void increment(int index) {
                      if (productQuantities[index] < 5) {
                        productQuantities[index]++;
                        productQuantities !=5;
                        totalAmount = totalAmount + productPrices[index];
                        setState(() {}); // Rebuild UI
                      }

                      if(productQuantities[index]==5){
                        showDialog(context: context, builder: (context){
                          return dialog(productTitle: productTitle, context: context);
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
                      height: 104,
                      width: double.infinity,
                      decoration: buildCartBoxDecorations(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildCardImage(productImage),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              buildCartTtitle(productTitle),
                              buildProductColorAndSize(productColor, productSize),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: 36,
                                        width: 36,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey.withOpacity(0.3),
                                                  blurRadius: 5,
                                                  spreadRadius: 1,
                                                  offset: Offset(1, 2))
                                            ]),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          decrement(index);
                                        },
                                        icon: Icon(
                                          Icons.remove,
                                          size: 25,
                                          color: Colors.grey,
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    height: 36,
                                    width: 36,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${productQuantities[index]}",
                                      style: TextStyle(
                                          fontSize: 18, fontFamily: "metropolis.bold"),
                                    ),
                                  ),
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: 36,
                                        width: 36,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey.withOpacity(0.3),
                                                  blurRadius: 5,
                                                  spreadRadius: 1,
                                                  offset: Offset(1, 2))
                                            ]),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          increment(index);
                                        },
                                        icon: Icon(
                                          Icons.add,
                                          size: 25,
                                          color: Colors.grey,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          buildProductPriceAndMoreButton(productPrices[index]),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.transparent,
                    );
                  },
                )

            ),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(totalAmount: totalAmount, context: context, itemCount: productQuantities),
    );
  }

}
