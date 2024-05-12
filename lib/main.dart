import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ostad_assignment_2/src/view/potrait_and_landscape_view.dart';
import 'package:device_preview/device_preview.dart';

void main(){
  runApp( 
    DevicePreview(builder: (context)=>Assignment2())
  );
}

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      designSize:  Size(360, 690),


      builder: (_, child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home:  LandscapeAndPotraitMode(),
          theme: ThemeData(
              scaffoldBackgroundColor: Colors.grey.shade50,
              appBarTheme:  AppBarTheme(
                  backgroundColor: Colors.white
              )
          ),
        );
      },
    );
  }
}
