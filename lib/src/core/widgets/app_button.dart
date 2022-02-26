import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final double? height;
  final double? width;

  const AppButton({
    Key? key,
    required this.text,
    required this.textColor,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: width,
        height: height,
        margin: const EdgeInsets.only(right: 20),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: textColor),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
