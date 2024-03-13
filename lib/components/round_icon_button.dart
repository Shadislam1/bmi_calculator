
// stateless widget crete customize add floataction button replace with round icon button

import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
   RoundIconButton({required this.icon, required this.onPressed});

  final  IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 0.0,
      
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        ),
      
    );
  }
}

