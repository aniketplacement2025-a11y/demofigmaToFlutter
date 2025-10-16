// favorite_page_body.dart
import 'package:flutter/material.dart';

class FavoritePageBody extends StatelessWidget {
  const FavoritePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Center(
          child: Text(
            'Your Favorite Coffee Items Will Appear Here',
            style: TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}