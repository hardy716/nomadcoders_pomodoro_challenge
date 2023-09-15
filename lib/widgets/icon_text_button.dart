import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  final IconData buttonIcon;
  final double buttonIconSize;
  final String buttonText;
  final double buttonTextSize;
  final Color buttonColor;
  final void Function() onButtonPressed;

  final bool isPrivate = true;

  const IconTextButton({
    super.key,
    required this.buttonIcon,
    required this.buttonIconSize,
    required this.buttonText,
    this.buttonTextSize = 16.0,
    required this.buttonColor,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(buttonIcon),
          iconSize: buttonIconSize,
          color: buttonColor,
          onPressed: onButtonPressed,
        ),
        Text(
          buttonText,
          style: TextStyle(
            fontSize: buttonTextSize,
            color: buttonColor,
          ),
        ),
      ],
    );
  }
}
