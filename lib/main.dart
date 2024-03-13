import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(  BMICalculator());
}
class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
       // textTheme: TextTheme(
         // bodyLarge: TextStyle(color: Color(0XFFFFFFFF)),
       // ),
      ),
      home: InputPage(),
      );
  }
}
