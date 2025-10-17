// models/coffee_model.dart
class Coffee {
  final String imagePath;
  final String title;
  final String subtitle;
  final String category;
  final double rating;
  final int reviewCount;
  final String description;
  final String necessary_supplies;
  final String necessaryTools;
  final double price; // Change from String to double

  const Coffee({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.category,
    this.rating = 4.5, // Provide default value
    this.reviewCount = 0, // Provide default value
    this.description = '', // Provide default value
    this.necessary_supplies='',
    this.necessaryTools='',
    required this.price,
  });
}

final sampleCoffee = Coffee(
  imagePath: 'assets/Coffee-shop/Caffe Mocha.png',
  title: 'Caffe Mocha',
  subtitle: 'Ice/Hot',
  category: 'Machiato',
  rating: 4.8,
  reviewCount: 230,
  description:
      'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo...',
  necessary_supplies: '',
  necessaryTools: '',
  price: 4.53, // Remove $ sign, use double
);
