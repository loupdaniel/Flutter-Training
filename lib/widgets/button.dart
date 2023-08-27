import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const Button({
    Key? key,
    required this.text,
    required this.bgColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //Container == Box
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal:
              50, //code actions can refactor your code in a very easy way
        ),
        child: Text(text,
            style: TextStyle(
              color: textColor,
              fontSize: 22,
            )),
      ),
    );
  }
}



afsdfasfafaffa