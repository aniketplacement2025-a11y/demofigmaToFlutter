// notifications_page_body.dart
import 'package:flutter/material.dart';

class NotificationsPageBody extends StatelessWidget {
  const NotificationsPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Center(
          child: Text(
            'Your Notifications Will Appear Here',
            style: TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
