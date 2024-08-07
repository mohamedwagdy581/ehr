import 'package:ehr/core/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/components/custom_text_field.dart';

class EmailPasswordTextField extends StatelessWidget {
  final TextEditingController emailController, passwordController;
  const EmailPasswordTextField({super.key, required this.emailController, required this.passwordController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        CustomTextField(
          secure: false,
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          label: 'Email',
          hint: 'Email Address',
          textStyle: AppStyles.textStyle18,
          validator: (String? value) {
            if(value!.isEmpty)
            {
              return 'Please enter your email address';
            }
            if(!RegExp("^[a-zA-Z0-9_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value))
            {
              return 'Please Enter a Valid Email';
            }
            return null;
          },
          prefix: Icons.email_outlined,

        ),
        const SizedBox(
          height: 15.0,
        ),
        CustomTextField(
          controller: passwordController,
          keyboardType: TextInputType.visiblePassword,
          label: 'Password',
          hint: 'Enter Your Password',
          validator: (String? value) {
            if(value!.isEmpty)
            {
              return 'Please Enter valid Password';
            }
            return null;
          },
          secure: true,
          prefix: Icons.password,
          suffix: FontAwesomeIcons.eyeSlash,
          suffixPressed: ()
          {
            //LoginCubit.get(context).changePasswordVisibility();
          },
        ),
      ],
    );
  }
}
