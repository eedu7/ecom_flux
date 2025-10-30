import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryIcon extends StatefulWidget {
  final String title;
  final IconData icon;

  const CategoryIcon({super.key, required this.title, required this.icon});

  @override
  State<CategoryIcon> createState() => _CategoryIconState();
}

class _CategoryIconState extends State<CategoryIcon> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Todo: Categories
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8.0,
          children: [FaIcon(widget.icon), Text(widget.title)],
        ),
      ),
    );
  }
}
