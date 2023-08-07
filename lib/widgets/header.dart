import 'package:flutter/material.dart';

class HeaderBorderRadius extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 800,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              Colors.blue,
            ]
          )
      ),);
  }
}