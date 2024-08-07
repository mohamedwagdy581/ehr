import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/components/login_register_buttons.dart';
import '../../../../../core/components/login_register_welcome_message.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets.dart';
import 'login_textfields.dart';
import 'forget_password.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    late var formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
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
              height: 100,
              alignment: AlignmentDirectional.bottomStart,
            ),
            const SizedBox(
              height: 20,
            ),
            // Welcome Login Message
            const LoginWelcomeMessageText(
              mainText: 'Welcome Back 👋',
              loginOrRegisterText: 'login',
            ),
            const SizedBox(
              height: 25.0,
            ),
            // Email & Password TextFormField
            EmailPasswordTextField(
              emailController: emailController,
              passwordController: passwordController,
            ),
            // Forget Password
            ForgetPassword(
              onPressed: (){},
            ),

            const SizedBox(
              height: 20,
            ),

            // Login Button and google button
            LoginRegisterButtons(
              text: "Login",
              loginOnPressed: () {
                if(formKey.currentState!.validate())
                {
                  GoRouter.of(context).go(AppRouter.kHomeView);
                }else
                {
                  _dialogBuilder(context);
                }

              },
              googleOnPressed: (){},
              haveAccount: "Didn't have an account?",
              logOrRegisterText: "Register",
              loginRegisterOnPressed: ()
              {
                GoRouter.of(context).push(AppRouter.kRegisterView);
              },
            ),

          ],
        ),
      ),
    );
  }
}
Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Error in validation'),
        content: const Text(
          'Please check if email of password is correct\n'
              'and then try to log in\n'
              'with email and password or google\n'
              'or register new account if you have not email.',
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
            child: const Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}