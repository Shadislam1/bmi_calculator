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

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
      backgroundColor: Color(0xFF0A0E21),
        title: Center(
          child: Text(
            'BMI Calculator',
            
            ),
            ),
      ),
      body:Center(
        child: Text('hello'),
        
      ),
   
         floatingActionButton: Theme(
        data: ThemeData(
         colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.purple,
         )
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            
          },
        ),
      ),
        
        
    );
  }
}