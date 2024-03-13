
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({required this.interpretation,required this.bmiResult,required this.resultText});

  final String bmiResult;
  final String resultText;
  final String  interpretation;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI Calculator'),
          ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
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
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
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