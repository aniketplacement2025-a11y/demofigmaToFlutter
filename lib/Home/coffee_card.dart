// coffee_card.dart
import 'package:flutter/material.dart';
import '../models/coffee_model.dart';
import 'dart:ui';

class CoffeeCard extends StatelessWidget {
  final Coffee coffee;
  const CoffeeCard({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/detail',
          arguments: coffee,
        );
      },
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 15,
                offset: const Offset(0, 5))
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: Image.asset(
                    coffee.imagePath,
                    height: 160,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    // IMPROVED ERROR BUILDER TO SHOW MORE INFO
                    errorBuilder: (context, error, stackTrace) {
                      print('Image error: $error');
                      print('Image path: ${coffee.imagePath}');
                      return Container(
                        color: Colors.grey[300],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.broken_image,
                                color: Colors.grey, size: 40),
                            const SizedBox(height: 8),
                            Text(
                              'Image not found',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              coffee.imagePath,
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 8,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const Positioned(top: 8, left: 8, child: StarRating()),
              ],
            ),
            // Content Section - No fixed height, let it take only needed space
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(coffee.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xFF2F2D2C))),
                  const SizedBox(height: 4),
                  Text(coffee.subtitle,
                      style: const TextStyle(
                          fontSize: 12, color: Color(0xFF9B9B9B))),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$ ${coffee.price.toStringAsFixed(2)}',
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xFF2F4B4E))),
                      const AddButton(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StarRating extends StatelessWidget {
  const StarRating({super.key});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          color: Colors.black.withOpacity(0.2),
          child: const Row(
            children: [
              Icon(Icons.star, color: Colors.amber, size: 14),
              SizedBox(width: 4),
              Text('4.8',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12)),
            ],
          ),
        ),
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
          color: const Color(0xFFC67C4E),
          borderRadius: BorderRadius.circular(10)),
      child: const Icon(Icons.add, color: Colors.white),
    );
  }
}
