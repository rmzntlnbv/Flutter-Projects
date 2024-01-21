import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.iconImg, required this.onPrassed});

  final IconData iconImg;
  final VoidCallback onPrassed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconImg),
      onPressed: onPrassed, 
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      elevation: 0.5,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
