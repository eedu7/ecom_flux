import 'package:ecom_flux/features/products/widgets/category_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductCategories extends StatefulWidget {
  const ProductCategories({super.key});

  @override
  State<ProductCategories> createState() => _ProductCategoriesState();
}

class _ProductCategoriesState extends State<ProductCategories> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CategoryIcon(title: 'Female', icon: FontAwesomeIcons.personDress),
          CategoryIcon(title: 'Male', icon: FontAwesomeIcons.person),
          CategoryIcon(title: 'Accessories', icon: FontAwesomeIcons.glasses),
          CategoryIcon(
            title: 'Beauty',
            icon: FontAwesomeIcons.sprayCanSparkles,
          ),
        ],
      ),
    );
  }
}
