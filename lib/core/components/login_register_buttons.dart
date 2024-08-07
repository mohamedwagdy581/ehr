import 'package:ehr/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';
import '../utils/styles/colors.dart';
import '../utils/styles/styles.dart';

class LoginRegisterButtons extends StatelessWidget {
  final VoidCallback loginOnPressed, googleOnPressed, loginRegisterOnPressed;
  final String text, haveAccount, logOrRegisterText;
  const LoginRegisterButtons({super.key, required this.loginOnPressed, required this.googleOnPressed, required this.text, required this.haveAccount, required this.logOrRegisterText, required this.loginRegisterOnPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Login Button
        SizedBox(
          width: double.maxFinite,
          child: CustomButton(
            onPressed: loginOnPressed,
            text: text,
            buttonColor: AppColors.blueButtonColor,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        // Or continue with google Text Row
        Row(
            children: [
              const Expanded(
                  child: Divider()
              ),

              Text(
                "  Or continue with social account  ",
                style: AppStyles.textStyle18.copyWith(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.normal,
                ),
              ),

              const Expanded(
                  child: Divider()
              ),
            ]
        ),
        const SizedBox(
          height: 15,
        ),
        // Google Button
        SizedBox(
          width: double.maxFinite,
          child: MaterialButton(
            onPressed: googleOnPressed,
            color: AppColors.whiteColor,
            textColor: AppColors.whiteColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                // Google Icon
                const CircleAvatar(
                  backgroundImage: AssetImage(AppAssets.googleLogo),
                  backgroundColor: AppColors.whiteColor,
                ),
                const SizedBox(
                  width: 5,
                ),
                // Google Text
                Text(
                  "Google",
                  style: AppStyles.textStyle25.copyWith(color: Colors.black,),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(
          height: 65,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text(
              haveAccount,
              style: AppStyles.textStyle18.copyWith(fontWeight: FontWeight.normal,),
            ),
            TextButton(
              onPressed: loginRegisterOnPressed,
              child: Text(
                logOrRegisterText,
                style: AppStyles.textStyle18.copyWith(
                  color: AppColors.blueButtonColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
