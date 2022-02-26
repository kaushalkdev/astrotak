import 'package:flutter/material.dart';

import 'app_button.dart';

class BlueBar extends StatelessWidget {
  final String title;
  final String buttonText;
  final double fontSize;
  final FontWeight weight;
  final EdgeInsets margin;
  final double radius;
  const BlueBar({
    Key? key,
    required this.title,
    required this.buttonText,
    this.fontSize = 14,
    this.radius = 0,
    this.weight = FontWeight.normal,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.circular(radius),
      ),
      width: double.infinity,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
                fontWeight: weight,
              ),
            ),
          ),
          const Spacer(),
          AppButton(
            text: buttonText,
            textColor: Colors.indigo,
            height: 30,
            width: 100,
          )
        ],
      ),
    );
  }
}
