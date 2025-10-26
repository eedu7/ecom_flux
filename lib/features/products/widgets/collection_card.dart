import 'package:flutter/material.dart';

class CollectionCard extends StatefulWidget {
  const CollectionCard({super.key});

  @override
  State<CollectionCard> createState() => _CollectionCardState();
}

class _CollectionCardState extends State<CollectionCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.asset(
            'assets/images/collection_image.png',
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            gradient: LinearGradient(
              colors: [Color.fromRGBO(0, 0, 0, 0.5), Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          right: 8,
          bottom: 8,
          width: 120,
          child: Text(
            'Autumn Collection 2025',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  color: Color.fromRGBO(0, 0, 0, 0.7),
                  offset: Offset(1, 1),
                  blurRadius: 4,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
