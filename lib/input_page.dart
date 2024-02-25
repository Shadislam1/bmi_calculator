
import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//color, height define
const bottomContainerHeight = 80.0;
const  activeCardColour =  Color(0xFF1D1E33);
const inactiveColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

  enum Gender{
    male,
    female,
  }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColour =inactiveColour;
  Color femaleCardColour = inactiveColour;
    //felame card pressed
  void updateColour(Gender selectedgender) {
  if (selectedgender == Gender.male) {
    if (maleCardColour == inactiveColour) {
      maleCardColour = activeCardColour; // Use assignment statement (=) instead of ==
      femaleCardColour = inactiveColour;
    } else {
      maleCardColour = inactiveColour;
    }
  }
  // female card
  if (selectedgender == Gender.female) {
    if (femaleCardColour == inactiveColour) {
      femaleCardColour = activeCardColour; // Use assignment statement (=) instead of ==
      maleCardColour = inactiveColour;
    } else {
      femaleCardColour = inactiveColour;
    }
  }
}

    
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
                child: GestureDetector(
                 onTap:() {
                   setState(() {
                    updateColour(Gender.male);
                   });
                //  print('male taped');
                  },
                  child: ReusableCard(
                    colour: maleCardColour,
                     cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                     ),
                    ),
                ),

               ),
                Expanded(
                  child:GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      colour:  femaleCardColour,
                       cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                  
                         label: 'FEMALE',
                         ),
                      ),
                  ),
                   ),
            ],
          ),
          ),


           Expanded(
            child: ReusableCard(
              colour: activeCardColour,
               cardChild: Column(),
              ),
            ),



             Expanded(
              child: Row(
            children:<Widget> [
               Expanded(
                child: ReusableCard(
                  colour:  activeCardColour, 
                  cardChild: Column(),
                  ),
                   ),


                Expanded(
                  child:ReusableCard(
                    colour: activeCardColour,
                     cardChild: Column(), 
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


