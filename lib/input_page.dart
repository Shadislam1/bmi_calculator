
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



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

// Gender selectedGender now working so we use late 
//when using late late initial error 
//thats why we use  initState()  mathod
late Gender selectedGender;

int height =180;

  @override
  void initState() {
    super.initState();
    selectedGender = Gender.male; // Initialize with a default value
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [

          Expanded(
            child: Row(
            children:<Widget> [
               Expanded(
                child: ReusableCard(
                  onPress: (){
                    setState(() {
                      selectedGender =Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male ? kActiveCardColour:kInactiveColour,
                   cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                   ),
                  ),

               ),
                Expanded(
                  child:ReusableCard(
                     onPress: (){
                      setState(() {
                        selectedGender =Gender.female;
                      });
                     },
                    colour:  selectedGender == Gender.female ? kActiveCardColour:kInactiveColour,
                     cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                  
                       label: 'FEMALE',
                       ),
                    ),
                   ),
            ],
          ),
          ),


           Expanded(
            child: ReusableCard(
               onPress: (){},
              colour: kActiveCardColour,
               cardChild:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style:kNumberTextStyle
                        ),
                        Text(
                          'cm',
                          style: kLabelTextStyle,

                        ),

                      ],
                    ),
                    Slider(
                      value:height.toDouble(),
                      min: 120,
                      max: 220,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                           height = newValue.round();
                        });
                      },  
                    ),
                ],
               ) ,
              ),
            ),



             Expanded(
              child: Row(
            children:<Widget> [
               Expanded(
                child: ReusableCard(
                   onPress: (){},
                  colour:  kActiveCardColour, 
                  cardChild: Column(),
                  ),
                   ),


                Expanded(
                  child:ReusableCard(
                     onPress: (){},
                    colour: kActiveCardColour,
                     cardChild: Column(), 
                    ),
                   ),

            
            ],
          ),
          ),
          //i================================================
          // it used for bellow red shape container
            
             Container(
              color: kBottomContainerColour,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kBottomContainerHeight,
             //Colors.green,
            ),
        
            
        ],
      )
    );
  }
}


