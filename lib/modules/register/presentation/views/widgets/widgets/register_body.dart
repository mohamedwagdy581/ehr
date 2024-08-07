import 'package:ehr/modules/register/presentation/views/widgets/widgets/register_textfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/components/login_register_buttons.dart';
import '../../../../../../core/components/login_register_welcome_message.dart';
import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/assets.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    late var formKey = GlobalKey<FormState>();
    final firstNameController = TextEditingController();
    final lastNameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              AppAssets.logo,
              height: 75,
              alignment: AlignmentDirectional.bottomStart,
            ),
            const SizedBox(
              height: 20,
            ),
            // Welcome Login Message
            const LoginWelcomeMessageText(
              mainText: 'Register Account',
              loginOrRegisterText: 'register',
            ),
            const SizedBox(
              height: 25.0,
            ),
            // Email & Password TextFormField
            RegisterTextFields(
              emailController: emailController,
              passwordController: passwordController,
              firstNameController: firstNameController,
              lastNameController: lastNameController,
              confirmPasswordController: confirmPasswordController,
            ),

            // Accept Conditions

            const SizedBox(
              height: 20,
            ),

            // Login Button and google button
            LoginRegisterButtons(
              text: "Register",
              loginOnPressed: () {
                if (formKey.currentState!.validate()) {
                  GoRouter.of(context).go(AppRouter.kHomeView);
                } else {
                  //_dialogBuilder(context);
                }
              },
              googleOnPressed: () {},
              haveAccount: "Already have an account?",
              logOrRegisterText: "Login",
              loginRegisterOnPressed: () {
                GoRouter.of(context).push(AppRouter.kRegisterView);
              },
            ),
          ],
        ),
      ),
    );
  }
}
