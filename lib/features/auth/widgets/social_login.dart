import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialLogin extends StatefulWidget {
  const SocialLogin({super.key});

  @override
  State<SocialLogin> createState() => _SocialLoginState();
}

class _SocialLoginState extends State<SocialLogin> {
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 24.0,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.google,
            size: 18.0,
            color: Color(0xFFDB4437),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.facebookF,
            size: 18.0,
            color: Color(0xFF1877F2),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const FaIcon(FontAwesomeIcons.apple, size: 18.0),
        ),
      ],
    );
  }
}
