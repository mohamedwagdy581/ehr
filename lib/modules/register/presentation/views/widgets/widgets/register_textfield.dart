import 'package:ehr/core/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/components/custom_text_field.dart';


class RegisterTextFields extends StatelessWidget {
  final TextEditingController firstNameController, lastNameController, emailController, passwordController, confirmPasswordController;
  const RegisterTextFields({super.key, required this.emailController, required this.passwordController, required this.firstNameController, required this.lastNameController, required this.confirmPasswordController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        // First Name
        CustomTextField(
          secure: false,
          controller: firstNameController,
          keyboardType: TextInputType.text,
          label: 'First Name',
          hint: 'First Name',
          textStyle: AppStyles.textStyle18,
          validator: (String? value) {
            if(value!.isEmpty)
            {
              return 'Please enter your first name';
            }
            return null;
          },
          prefix: Icons.person,
        ),

        const SizedBox(
          height: 10.0,
        ),

        // First Name
        CustomTextField(
          secure: false,
          controller: lastNameController,
          keyboardType: TextInputType.text,
          label: 'Last Name',
          hint: 'Last Name',
          textStyle: AppStyles.textStyle18,
          validator: (String? value) {
            if(value!.isEmpty)
            {
              return 'Please enter your last name';
            }
            return null;
          },
          prefix: Icons.person,
        ),

        const SizedBox(
          height: 10.0,
        ),

        // Email Address
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
          height: 10.0,
        ),
        // Password
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

        const SizedBox(
          height: 10.0,
        ),

        // Confirm Password
        CustomTextField(
          controller: passwordController,
          keyboardType: TextInputType.visiblePassword,
          label: 'Confirm Password',
          hint: 'Confirm Password',
          validator: (String? value) {
            if(value!.isEmpty)
            {
              return 'Please Enter valid Password';
            }if (passwordController.text != confirmPasswordController.text)
            {
              return "Password doesn't match";
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
