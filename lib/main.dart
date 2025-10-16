import 'package:flutter/material.dart';
import 'screen/onboarding_page.dart'; // Import the new onboarding page
import 'screen/home_page.dart';
import 'screen/detail_page.dart';
import 'screen/delivery_page.dart';
import 'models/coffee_model.dart';
import 'screen/order_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop',
      theme: ThemeData(primarySwatch: Colors.blue),
      // Set the initial route to your onboarding page
      initialRoute: '/',

      // b. DEFINE YOUR APP'S ROUTES HERE
      routes: {
        '/': (context) => const OnboardingPage(), // This is your root page
        '/home': (context) =>
            const HomePage(), // This is your new home page route
        '/detail': (context) {
          // Get the coffee data from arguments
          final args = ModalRoute.of(context)!.settings.arguments as Coffee?;
          // If no coffee data is passed, use the sample coffee
          return DetailPage(coffee: args ?? sampleCoffee);
        },
        '/order': (context) {
          // Get the coffee data from arguments
          final args = ModalRoute.of(context)!.settings.arguments as Coffee?;
          return OrderPage(coffee: args ?? sampleCoffee);
        },
        '/delivery': (context) => const DeliveryPage(),
      },
    );
  }
}
