import 'package:ehr/core/utils/styles/styles.dart';
import 'package:flutter/material.dart';

import '../utils/styles/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color buttonColor;
  final Color? textColor;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.buttonColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: buttonColor,
      textColor: AppColors.whiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      height: 60,
      child: Text(
        text,
        style: AppStyles.textStyle25,
      ),
    );
  }
}
