import 'package:ecom_flux/features/auth/widgets/form_title.dart';
import 'package:ecom_flux/features/auth/widgets/login_form.dart';
import 'package:ecom_flux/features/auth/widgets/social_login.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 24.0,
          children: <Widget>[
            FormTitle(title: 'Log into', subTitle: 'your account'),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  LoginForm(),
                  SizedBox(height: 24.0),
                  Text(
                    'or log in with',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey.shade600,
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
                  'Don\'t have an account?',
                  style: TextStyle(fontSize: 14.0),
                ),
                TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                  onPressed: () {
                    print('Action');
                    context.goNamed('signup');
                  },
                  child: Text(
                    'Sign Up',
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
