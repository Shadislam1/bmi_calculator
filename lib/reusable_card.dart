


import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  //when use re useable widget we remove const key for customize owon

  ReusableCard({required this.colour,required this.cardChild});
   final Color colour;

  //when we used this we must initialize required property
    final Widget cardChild;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
                 
     margin: EdgeInsets.all(15.0),
     decoration: BoxDecoration(
       color: colour,
      borderRadius: BorderRadius.circular(10.0),
     ),
     );
  }
}


 