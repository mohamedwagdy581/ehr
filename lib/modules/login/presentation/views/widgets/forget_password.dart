import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/colors.dart';
import '../../../../../core/utils/styles/styles.dart';

class ForgetPassword extends StatelessWidget {
  final VoidCallback onPressed;
  const ForgetPassword({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          'Forget Password?',
          textAlign: TextAlign.end,
          style: AppStyles.textStyle18.copyWith(color: AppColors.blueButtonColor, fontWeight: FontWeight.normal,),
        ),
      ),
    );
  }
}
