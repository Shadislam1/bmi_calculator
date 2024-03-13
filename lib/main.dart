import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const BMICalculator());
}
class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color.fromARGB(255, 35, 37, 46),
       // textTheme: TextTheme(
         // bodyLarge: TextStyle(color: Color(0XFFFFFFFF)),
       // ),
      ),
      home: const InputPage(),
      );
  }
}
