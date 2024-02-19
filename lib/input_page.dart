
import 'package:flutter/material.dart';

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
      body: Column(
        children: <Widget> [

          Expanded(child: Row(
            children:<Widget> [
               Expanded(child: Container(
                 
                   margin: EdgeInsets.all(15.0),
                   decoration: BoxDecoration(
                     color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10.0),
                   ),
                   ),
               ),
                Expanded(child:Container(
                 
                   margin: EdgeInsets.all(15.0),
                   decoration: BoxDecoration(
                     color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10.0),
                   ),
                   ), ),
            ],
          )),
           Expanded(child: Container(
                 
                   margin: EdgeInsets.all(15.0),
                   decoration: BoxDecoration(
                     color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10.0),
                   ),
                   ),),

             Expanded(child: Row(
            children:<Widget> [
               Expanded(child: Container(
                 
                   margin: EdgeInsets.all(15.0),
                   decoration: BoxDecoration(
                     color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10.0),
                   ),
                   ),),
                Expanded(child: Container(
                 
                   margin: EdgeInsets.all(15.0),
                   decoration: BoxDecoration(
                     color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(10.0),
                   ),
                   ),),
            ],
          )),
            
        ],
      )
    );
  }
}


 