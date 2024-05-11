import 'package:flutter/material.dart';
import 'package:ostad_assignment_2/src/view/potrait_and_landscape_view.dart';

void main(){
  runApp(const Assignment2());
}

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LandscapeAndPotraitMode(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade50,
          appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white
        )
      ),
    );
  }
}
