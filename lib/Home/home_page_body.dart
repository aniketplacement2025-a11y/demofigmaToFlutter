// home_page_body.dart
import 'package:flutter/material.dart';
import '../models/coffee_model.dart';
import 'coffee_card.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  static const List<Coffee> coffeeList = [
    Coffee(
        imagePath: 'assets/Coffee-shop/Caffe Mocha.png',
        title: 'Caffe Mocha',
        subtitle: 'Deep Foam',
        rating: 4.8,
        reviewCount: 230,
        description: 'Rich chocolate and espresso blend with creamy foam',
        price: 4.53),
    Coffee(
        imagePath: 'assets/Coffee-shop/Flat White.png',
        title: 'Flat White',
        subtitle: 'Espresso',
        rating: 4.6,
        reviewCount: 180,
        description: 'Smooth and velvety texture with double shot espresso',
        price: 3.53),
    Coffee(
        imagePath: 'assets/Coffee-shop/Caffe Latte.png',
        title: 'Caffe Latte',
        subtitle: 'Steamed Milk',
        rating: 4.5,
        reviewCount: 150,
        description: 'Creamy milk with rich espresso and light foam',
        price: 4.10),
    Coffee(
        imagePath: 'assets/Coffee-shop/Cappuccino.png',
        title: 'Cappuccino',
        subtitle: 'Rich & Dark',
        rating: 4.7,
        reviewCount: 200,
        description:
            'Classic Italian coffee with equal parts espresso, milk, and foam',
        price: 4.20),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 0), // Reduced since header is positioned
          const FilterTabs(),
          const SizedBox(height: 24),
          Padding(
            // Adds space around the GridView (on left and right because of horizontal).
            padding: const EdgeInsets.symmetric(
                horizontal:
                    25.0), //Adds 30 pixels of padding on the left and right sides.
            child: GridView.builder(
              //Dynamically builds grid items on demand using a builder function — efficient for lists that can grow.
              physics:
                  const NeverScrollableScrollPhysics(), //Disables scrolling for this GridView.
              shrinkWrap:
                  true, //Tells GridView to shrink to fit its content instead of taking infinite height.
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //Defines how the grid is arranged (columns, spacing, aspect ratio).
                //Used when you want a fixed number of columns.
                crossAxisCount: 2, //Defines 2 columns in each grid row.
                mainAxisExtent: 270,
                crossAxisSpacing: 15, //Space between columns.
                mainAxisSpacing: 20, //Space between rows.
                childAspectRatio:
                    0.60, //Controls the width-to-height ratio of each grid item
              ),
              itemCount: coffeeList.length, //Number of items to build
              itemBuilder: (context, index) {
                //Function that builds each grid item dynamically.
                final coffee = coffeeList[
                    index]; //Fetches a single coffee object from the list.
                return CoffeeCard(
                    coffee:
                        coffee); //Custom widget that displays coffee details.
              },
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class FilterTabs extends StatelessWidget {
  const FilterTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 30),
        children: ['All Coffee', 'Machiato', 'Latte', 'Americano']
            .map((category) => Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Chip(
                    label: Text(category,
                        style: TextStyle(
                            color: category == 'All Coffee'
                                ? Colors.white
                                : const Color(0xFF2F2D2C),
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                    backgroundColor: category == 'All Coffee'
                        ? const Color(0xFFC67C4E)
                        : Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    side: BorderSide.none,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
