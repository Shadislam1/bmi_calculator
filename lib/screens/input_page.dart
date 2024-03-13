
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/calculator_brain.dart';


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
int weight = 60;

int age = 20;

  @override
  void initState() {
    super.initState();
    selectedGender = Gender.male; // Initialize with a default value
  }

    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
      backgroundColor: const Color(0xFF0A0E21),
        title: const Center(
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
                  const Text(
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
                        const Text(
                          'cm',
                          style: kLabelTextStyle,

                        ),

                      ],
                    ),

                    
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: const Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: const Color(0xFFEB1555),
                        overlayColor: const Color(0x29EB1555),
                        thumbShape: 
                          const RoundSliderThumbShape(enabledThumbRadius: 15.0),

                       overlayShape: 
                          const RoundSliderOverlayShape(
                          overlayRadius: 20.0,
                        ),
                      ),
                      child: Slider(
                        value:height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        inactiveColor: const Color(0xFF8D8E98),
                        onChanged: (double newValue) {
                          setState(() {
                             height = newValue.round();
                          });
                        },  
                      ),
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
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Widget',
                        style: kLabelTextStyle,
                        ),
                        Text(
                        weight.toString(),
                        style: kNumberTextStyle,
                        ),
                      
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          
                           RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                weight--;
                              });
                            },
                            ),
                            const SizedBox(width: 10,),
                      
                         RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                                weight++;
                              });
                            },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  ),
                   ),


                Expanded(
                  child:ReusableCard(
                     onPress: (){},
                    colour: kActiveCardColour,
                     cardChild: Column(
            
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Age',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),

                        Expanded(
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(icon: FontAwesomeIcons.minus, 
                            onPressed: (){
                              setState(() {
                                age--;
                              });
                            }
                            ),
                            const SizedBox(width: 10),
                             RoundIconButton(icon: FontAwesomeIcons.plus, 
                            onPressed: (){
                              setState(() {
                                age++;
                              });
                            }
                            ),
                          ],
                          ),
                        ),
                      ],
                     ), 
                    ),
                   ),

            
            ],
          ),
          ),
          //i================================================
          // it used for bellow red shape container
            
             BottomButton(
              buttonTitle: 'Calculate',
              onTap:() {
                CalculatorBrain cale = CalculatorBrain(height: height, weight: weight);
       //navigate on page to another page
        Navigator.push(
      context, MaterialPageRoute(
       builder: (context) => ResultsPage(
        bmiResult:cale.CalculateBMI(),
        resultText: cale.getResult(),
        interpretation: cale.getInterpretation(),
       )
       
       ),
    );
  }, 
  ),
        
            
        ],
      )
    );
  }
}


