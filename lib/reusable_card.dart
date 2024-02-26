


import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  //when use re useable widget we remove const key for customize owon

  ReusableCard({required this.colour,required this.cardChild,required this.onPress});
   final Color colour;

  //when we used this we must initialize required property
    final Widget cardChild;
   final VoidCallback onPress;
   //in course uses Function onpress it gives error we uses  VoidCallback 


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
                   
       margin: EdgeInsets.all(15.0),
       decoration: BoxDecoration(
         color: colour,
        borderRadius: BorderRadius.circular(10.0),
       ),
       ),
    );
  }
}


 