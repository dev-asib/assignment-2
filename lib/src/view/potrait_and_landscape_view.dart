import 'package:flutter/material.dart';
import 'package:ostad_assignment_2/src/view/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LandscapeAndPotraitMode extends StatefulWidget {
  const LandscapeAndPotraitMode({super.key});

  @override
  State<LandscapeAndPotraitMode> createState() =>
      _LandscapeAndPotraitModeState();
}

class _LandscapeAndPotraitModeState extends State<LandscapeAndPotraitMode> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: OrientationBuilder(builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return HomeActivity(

            //////////////////////ForCart////////////////////////
            cartHeight:MediaQuery.sizeOf(context).height/9,
            spaceImageToMiddleColumn: screenWidth/30,
            //////////////////////ForCart////////////////////////

            //////////////////////ForCartProductPriceAndMoreIcon////////////////////////
            priceAndMoreButtonContainerWidth: screenWidth / 9,
            //////////////////////ForCartProductPriceAndMOreIcon////////////////////////

            //////////////////////ForCartMiddleColumn////////////////////////
            increementDecreementValueContainerHeight:screenHeight/30,
            increementDecreementValueContainerWidth:screenWidth/14,
            increementIconContainerHeight:screenHeight/30,
            increementIconContainerWidth:screenWidth/14,
            decreementIconContainerHeight:screenHeight/30,
            decreementIconContainerWidth: screenWidth/14,
            increementDecreementContainerWidth:screenWidth/2.7,
            increementDecreementContainerHeight:screenHeight/25,
            titleTextHeight:screenHeight/32,
            titleTextWidth:screenWidth/2.7,
            productColorAndSizeTextHeight:screenHeight/64,
            productColorAndSizeTextWidth: screenWidth/2.7,
            increementDecreementTopSpace: screenHeight/80,
            //////////////////////ForCartMiddleColumn////////////////////////



            //////////////////////ForDialog////////////////////////
            dialogHeight: screenWidth / 1.5,
            dialogWidth: screenWidth / .5,
            //////////////////////ForDialog////////////////////////

            //////////////////////ForBottomNav////////////////////////

            bottomNavBottomHeight: MediaQuery.sizeOf(context).height / 92,
            bottomNavTopHeight: MediaQuery.sizeOf(context).height / 52,
            totalAmountHeight: screenHeight / 30,
            totalAmountPriceTextWidth: screenWidth / 8,
            totalAmountTextWidth: screenWidth / 3.5,
            checkOutButtonHeight: MediaQuery.sizeOf(context).height / 17,
            bottomNavHeight: MediaQuery.sizeOf(context).height / 7,
            bottomNavPaddingLeft: 14.r,
            bottomNavPaddingRight: 14.r,
            bottomNavPaddingTop: 0,
            bottomNavPaddingBottom: 0,
            middleSpacer: SizedBox(
              height: 10,
            ),
            //////////////////////ForBottomNav////////////////////////

            //////////////////////ForAppBar////////////////////////
            preferedSizedFromHeight: MediaQuery.sizeOf(context).height / 6,
            preferedSize: MediaQuery.sizeOf(context).height / 5,
            myBagTextSize: 35,
            serachIconSize: 35,
            //////////////////////ForAppBar////////////////////////

            //////////////////////ForProductCartImage////////////////////////
            imageWidth: screenWidth / 8,
            cardImageWidth: screenWidth/3.5,
            //////////////////////ForProductCartImage////////////////////////


            //////////////////////ForProducCartMiddleWidgets////////////////////////
            productMiddleWidgetsSize: screenWidth / 2.5,
            productPriceMoreButtonWidth: screenWidth / 5,
            //////////////////////ForProducCartMiddleWidgets////////////////////////
          );
        }



        else {
          return HomeActivity(

            //////////////////////ForCart////////////////////////
            cartHeight:MediaQuery.sizeOf(context).height/9 ,
            spaceImageToMiddleColumn: screenWidth/30,
            //////////////////////ForCart////////////////////////


            //////////////////////ForCartProductPriceAndMoreIcon////////////////////////
            priceAndMoreButtonContainerWidth: screenWidth / 9,
            //////////////////////ForCartProductPriceAndMOreIcon////////////////////////


            //////////////////////ForCartMiddleColumn////////////////////////
            increementDecreementValueContainerHeight:screenHeight/30,
            increementDecreementValueContainerWidth:screenWidth/14,
            increementIconContainerHeight:screenHeight/30,
            increementIconContainerWidth:screenWidth/14,
            decreementIconContainerHeight:screenHeight/30,
            decreementIconContainerWidth: screenWidth/14,
            increementDecreementContainerWidth:screenWidth/2.7,
            increementDecreementContainerHeight:screenHeight/20,
            titleTextHeight:screenHeight/32,
            titleTextWidth:screenWidth/2.7,
            productColorAndSizeTextHeight:screenHeight/64,
            productColorAndSizeTextWidth: screenWidth/2.7,
            increementDecreementTopSpace: screenHeight/80,
            //////////////////////ForCartMiddleColumn////////////////////////


            //////////////////////ForDialog////////////////////////
            dialogHeight: screenHeight / 1,
            dialogWidth: screenHeight / 1,
            //////////////////////ForDialog////////////////////////

            //////////////////////ForBottomNav////////////////////////
            bottomNavBottomHeight: MediaQuery.sizeOf(context).height / 92,
            bottomNavTopHeight: MediaQuery.sizeOf(context).height / 52,

            totalAmountHeight: screenHeight / 30,
            totalAmountPriceTextWidth: screenWidth / 8,
            totalAmountTextWidth: screenWidth / 3.5,
            checkOutButtonHeight: MediaQuery.sizeOf(context).height / 17,
            bottomNavHeight: MediaQuery.sizeOf(context).height / 7,
            bottomNavPaddingLeft: 14.r,
            bottomNavPaddingRight: 14.r,
            bottomNavPaddingTop: 0,
            bottomNavPaddingBottom: 0,
            middleSpacer: Spacer(),
            //////////////////////ForBottomNav////////////////////////

            //////////////////////ForAppBar////////////////////////
            preferedSizedFromHeight: MediaQuery.sizeOf(context).height / 8,
            preferedSize: MediaQuery.sizeOf(context).height / 5,
            myBagTextSize: 15,
            serachIconSize: 20,
            //////////////////////ForAppBar////////////////////////

            //////////////////////ForProductCartImage////////////////////////
            imageWidth: screenWidth / 8,
            cardImageWidth: screenWidth/3.5,
            //////////////////////ForProductCartImage////////////////////////

            //////////////////////ForProducCartMiddleWidgets////////////////////////
            productMiddleWidgetsSize: screenWidth / 2.5,
            productPriceMoreButtonWidth: screenWidth / 5,
            //////////////////////ForProducCartMiddleWidgets////////////////////////
          );
        }
      }),
    );
  }
}
