import 'package:ehr/core/utils/styles/styles.dart';
import 'package:flutter/material.dart';

import '../utils/styles/colors.dart';

class LoginWelcomeMessageText extends StatelessWidget {
  final String mainText, loginOrRegisterText;
  const LoginWelcomeMessageText({
    super.key,
    required this.mainText,
    required this.loginOrRegisterText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            text: '$mainText \n to ',
            style: AppStyles.textStyle30,
            // default text style
            children: const <TextSpan>[
              TextSpan(
                text: 'HR Attendee',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Hello there, $loginOrRegisterText to continue",
          style: AppStyles.textStyle18.copyWith(color: AppColors.greyColor, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
