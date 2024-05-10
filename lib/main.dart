import 'package:flutter/material.dart';
import 'package:ostad_assignment_2/src/view/home_screen.dart';

void main(){
  runApp(Assignment2());
}

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade50,
          appBarTheme: AppBarTheme(
          backgroundColor: Colors.white
        )
      ),
    );
  }
}
