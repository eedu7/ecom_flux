import 'package:ecom_flux/app/constants/app_text_style.dart';
import 'package:flutter/material.dart';

class FormTitle extends StatelessWidget {
  final String title;
  final String subTitle;

  const FormTitle({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title, style: AppTextStyles.baseAuthStyle),
          Text(subTitle, style: AppTextStyles.baseAuthStyle),
        ],
      ),
    );
  }
}
