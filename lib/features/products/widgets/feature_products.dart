import 'package:flutter/material.dart';

class FeatureProducts extends StatefulWidget {
  const FeatureProducts({super.key});

  @override
  State<FeatureProducts> createState() => _FeatureProductsState();
}

class _FeatureProductsState extends State<FeatureProducts> {
  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.horizontal);
  }
}
