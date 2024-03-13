
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI Calculator'),
          ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
                ),
            ),
            ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour, 
              cardChild: Column(
                
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:<Widget> [
                  Text(
                    'Normal',
                    style: kResultTextStyle,
                    ),
                    Text(
                      '18.3',
                      style: kBMITextStyle,
                    ),
                    Text(
                      'Your Bmi result is quite low,you should eat more!',
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                      ),
                ],
              ),
               onPress:(){} 
               ),
             ),

            BottomButton(
             
               buttonTitle: 'RE-Calculator',
                onTap: (){
                  Navigator.pop(context);
                },
               ) ,
        ],
      )
    );
  }
}