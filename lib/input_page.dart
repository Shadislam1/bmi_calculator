
import 'package:flutter/material.dart';

//color, height define
const bottomContainerHeight = 80.0;
const  activeCardColour =  Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);


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

          Expanded(
            child: Row(
            children:<Widget> [
               Expanded(
                child: ReusableCard(
                  colour: activeCardColour,
                  ),

               ),
                Expanded(
                  child:ReusableCard(
                    colour:  activeCardColour,
                    ),
                   ),
            ],
          ),
          ),
           Expanded(
            child: ReusableCard(
              colour: activeCardColour,
              ),
                   ),

             Expanded(
              child: Row(
            children:<Widget> [
               Expanded(
                child: ReusableCard(
                  colour:  activeCardColour,
                  ),
                   ),
                Expanded(
                  child:ReusableCard(
                    colour: activeCardColour, 
                    ),
                   ),

            
            ],
          ),
          ),
          //i================================================
          // it used for bellow red shape container
             Container(
              color: bottomContainerColour,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
             //Colors.green,
            ),
        
            
        ],
      )
    );
  }
}

//re use row collunm functionality
class ReusableCard extends StatelessWidget {
  //when use re useable widget we remove const key for customize owon

  ReusableCard({required this.colour});
   final Color colour;



  @override
  Widget build(BuildContext context) {
    return Container(
                 
     margin: EdgeInsets.all(15.0),
     decoration: BoxDecoration(
       color: colour,
      borderRadius: BorderRadius.circular(10.0),
     ),
     );
  }
}


 