import 'package:flutter/material.dart';
import 'package:ostad_assignment_2/src/view/home_screen.dart';


class LandscapeAndPotraitMode extends StatefulWidget {
  const LandscapeAndPotraitMode({super.key});

  @override
  State<LandscapeAndPotraitMode> createState() => _LandscapeAndPotraitModeState();
}

class _LandscapeAndPotraitModeState extends State<LandscapeAndPotraitMode> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation){
      if(orientation == Orientation.portrait){
       return HomeActivity();
      } else{
        return HomeActivity();
      }
    });
  }
}
