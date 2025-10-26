import 'package:ecom_flux/features/auth/widgets/form_title.dart';
import 'package:ecom_flux/features/auth/widgets/signup_form.dart';
import 'package:ecom_flux/features/auth/widgets/social_login.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 24.0,
          children: <Widget>[
            FormTitle(title: 'Create', subTitle: 'your account'),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  SignupForm(),
                  Text(
                    'or signup in with',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  SizedBox(height: 24.0),
                  SocialLogin(),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Already have an account?',
                  style: TextStyle(fontSize: 14.0),
                ),
                TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                  onPressed: () {
                    print('Action');
                    context.goNamed('login');
                  },
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 14.0,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
