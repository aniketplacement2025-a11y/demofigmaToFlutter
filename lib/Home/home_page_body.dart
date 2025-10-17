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
        category: 'All Coffee',
        rating: 4.8,
        reviewCount: 230,
        description: 'Rich chocolate and espresso blend with creamy foam',
        necessary_supplies: '',
        necessaryTools: '',
        price: 4.53),
    Coffee(
      imagePath: 'assets/Coffee-shop/Flat White.png',
      title: 'Flat White',
      subtitle: 'Espresso',
      category: 'Machiato',
      rating: 4.6,
      reviewCount: 180,
      description: 'Smooth and velvety texture with double shot espresso',
      necessary_supplies: 'Fresh whole milk\nEspresso beans\nMilk thermometer\nCleaning cloths\nCoffee filters',
      necessaryTools: 'Pump Driven Espresso Machine (\$250 minimum)\n'
          'Quality Burr Grinder (\$150 minimum)\n'
          'Espresso Tamper (\$25 minimum)\n'
          'Espresso Cups (\$10)\n'
          'Steam Pitcher (\$15)',
      price: 3.53,
    ),

    Coffee(
        imagePath: 'assets/Coffee-shop/Traditional_Italian_Machiato.png',
        title: 'Traditional Italian Macchiato',
        subtitle: 'Espresso',
        category: 'Machiato',
        rating: 4.8,
        reviewCount: 280,
        description: 'very espresso-forward drink.its magic on the crema, softening it and balancing it out',
        necessary_supplies: 'Fresh Roasted Coffee \nFiltered Water\nFresh Whole Milk',
        necessaryTools: 'Pump Driven Espresso Machine (\$250 minimum)\n'
            'Quality Burr Grinder (\$150 minimum)\n'
            'Espresso Tamper (\$25 minimum)\n'
            'Espresso Cups (\$10)\n'
            'Steam Pitcher (\$15)',
        price: 3.56),
    Coffee(
      imagePath: 'assets/Coffee-shop/caramel macchiato.png',
      title: 'Caramel Macchiato',
      subtitle: 'Espresso with Milk and Caramel',
      category: 'Macchiato',
      rating: 4.9,
      reviewCount: 420,
      description:
      'A sweet and creamy espresso-based drink made with steamed milk, vanilla syrup, and topped with rich caramel drizzle. It offers a perfect balance of strong espresso and smooth sweetness.',
      necessary_supplies:
      'Fresh Roasted Espresso Beans\nFiltered Water\nWhole Milk\nVanilla Syrup\nCaramel Sauce',
      necessaryTools: 'Pump Driven Espresso Machine (\$250 minimum)\n'
          'Quality Burr Grinder (\$150 minimum)\n'
          'Espresso Tamper (\$25 minimum)\n'
          'Espresso Cups (\$10)\n'
          'Steam Pitcher (\$15)\n'
          'Spoon or Drizzle Bottle for Caramel',
      price: 4.25,
    ),

    Coffee(
      imagePath: 'assets/Coffee-shop/Double Macchiato Espresso.png',
      title: 'Double Macchiato Espresso',
      subtitle: 'Espresso',
      category: 'Macchiato',
      rating: 4.9,
      reviewCount: 340,
      description:
      'A strong, bold espresso shot topped with just a dash of steamed milk — '
          'delivering a richer, double-strength macchiato experience with intense flavor and aroma.',
      necessary_supplies: 'Freshly Roasted Coffee Beans\nFiltered Water\nFresh Whole Milk',
      necessaryTools: 'Pump Driven Espresso Machine (\$250 minimum)\n'
          'Quality Burr Grinder (\$150 minimum)\n'
          'Espresso Tamper (\$25 minimum)\n'
          'Espresso Cups (\$10)\n'
          'Steam Pitcher (\$15)',
      price: 4.25,
    ),

    Coffee(
        imagePath: 'assets/Coffee-shop/Caffe Latte.png',
        title: 'Caffe Latte',
        subtitle: 'Steamed Milk',
        category: 'Latte',
        rating: 4.5,
        reviewCount: 150,
        description: 'Creamy milk with rich espresso and light foam',
        necessary_supplies: '',
        necessaryTools: '',
        price: 4.10),

    Coffee(
      imagePath: 'assets/Coffee-shop/Earl Grey latte.png',
      title: 'Earl Grey Latte',
      subtitle: 'Black Tea with Steamed Milk',
      category: 'Latte',
      rating: 4.6,
      reviewCount: 120,
      description: 'A soothing combination of Earl Grey tea, steamed milk, and a hint of vanilla — smooth, aromatic, and lightly floral.',
      necessary_supplies: 'Earl Grey Tea Leaves or Tea Bags\nHot Water\nMilk (preferably whole or oat)\nVanilla Syrup or Extract\nSugar or Honey (optional)',
      necessaryTools: 'Teapot or Kettle (\$25 minimum)\nMilk Frother or Steam Wand (\$30 minimum)\nMug or Latte Cup (\$10)\nMeasuring Spoon (\$5)\nSmall Whisk (\$8)',
      price: 4.50,
    ),

    Coffee(
      imagePath: 'assets/Coffee-shop/Pumpkin spice latte.png',
      title: 'Pumpkin Spice Latte',
      subtitle: 'Espresso with Pumpkin & Spices',
      category: 'Latte',
      rating: 4.9,
      reviewCount: 520,
      description: 'A cozy blend of espresso, steamed milk, pumpkin purée, and warm spices like cinnamon, nutmeg, and clove — topped with whipped cream for a perfect autumn treat.',
      necessary_supplies: 'Freshly Brewed Espresso\nSteamed Milk\nPumpkin Purée\nPumpkin Spice Mix (Cinnamon, Nutmeg, Clove)\nWhipped Cream\nSugar or Sweetener',
      necessaryTools: 'Pump Driven Espresso Machine (\$250 minimum)\n'
          'Quality Burr Grinder (\$150 minimum)\n'
          'Espresso Tamper (\$25 minimum)\n'
          'Espresso Cups (\$10)\n'
          'Steam Pitcher (\$15)\n'
          'Small Saucepan (\$20)',
      price: 4.75,
    ),

    Coffee(
      imagePath: 'assets/Coffee-shop/Matcha latte.png',
      title: 'Matcha Latte',
      subtitle: 'Green Tea + Milk',
      category: 'Latte',
      rating: 4.7,
      reviewCount: 310,
      description:
      'A creamy and energizing blend of high-quality matcha green tea powder whisked into steamed milk, offering a smooth, earthy flavor with gentle sweetness.',
      necessary_supplies: 'Premium Matcha Powder\nFiltered Water\nFresh Whole Milk\nOptional Sweetener (Honey or Sugar)',
      necessaryTools: 'Matcha Bowl (Chawan) (\$20 minimum)\n'
          'Matcha Whisk (Chasen) (\$15 minimum)\n'
          'Fine Sifter (\$10)\n'
          'Spoon or Scoop (\$5)\n'
          'Milk Frother or Steam Wand (\$25 minimum)',
      price: 4.25,
    ),

    Coffee(
        imagePath: 'assets/Coffee-shop/Cappuccino.png',
        title: 'Cappuccino',
        subtitle: 'Rich & Dark',
        category: 'Americano',
        rating: 4.7,
        reviewCount: 200,
        description:
            'Classic Italian coffee with equal parts espresso, milk, and foam',
        necessary_supplies: '',
        necessaryTools: '',
        price: 4.20),

    Coffee(
      imagePath: 'assets/Coffee-shop/Iced Caffe Americano.png',
      title: 'Iced Caffè Americano',
      subtitle: 'Cool & Bold',
      category: 'Americano',
      rating: 4.8,
      reviewCount: 340,
      description:
      'A refreshing, bold espresso drink made by diluting rich espresso shots with cold water and ice, offering a smooth yet intense flavor.',
      necessary_supplies: 'Ice cubes\nChilled water\nFreshly brewed espresso',
      necessaryTools: 'Espresso Machine (\$250 minimum)\n'
          'Quality Burr Grinder (\$150 minimum)\n'
          'Espresso Tamper (\$25 minimum)\n'
          'Tall Glasses (\$10)\n'
          'Stirring Spoon (\$5)',
      price: 4.50,
    ),

    Coffee(
      imagePath: 'assets/Coffee-shop/Americano Coffee Cup.png',
      title: 'Americano Coffee Cup',
      subtitle: 'Bold & Smooth',
      category: 'Americano',
      rating: 4.5,
      reviewCount: 150,
      description:
      'Americano is a classic coffee made by diluting espresso with hot water, giving it a smooth yet bold flavor without the heaviness of milk.',
      necessary_supplies: 'Coffee Beans, Hot Water',
      necessaryTools: 'Pump Driven Espresso Machine (\$250 minimum)\n'
          'Quality Burr Grinder (\$150 minimum)\n'
          'Espresso Tamper (\$25 minimum)\n'
          'Espresso Cups (\$10)\n'
          'Steam Pitcher (\$15)',
      price: 3.80,
    ),
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
                    30.0), //Adds 30 pixels of padding on the left and right sides.
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

class FilterTabs extends StatefulWidget {
  const FilterTabs({super.key});

  @override
  State<FilterTabs> createState() => _FilterTabsState();
}

class _FilterTabsState extends State<FilterTabs> {
  String _selectedCategory = 'All Coffee';

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
          child: InkWell(
            onTap: () {
              setState(() {
                _selectedCategory = category;
              });
              // You can add additional logic here when a category is selected
              print('Selected category: $category');
            },
            borderRadius: BorderRadius.circular(12),
            child: Chip(
              label: Text(category,
                  style: TextStyle(
                      color: category == _selectedCategory
                          ? Colors.white
                          : const Color(0xFF2F2D2C),
                      fontSize: 14,
                      fontWeight: FontWeight.w600)),
              backgroundColor: category == _selectedCategory
                  ? const Color(0xFFC67C4E)
                  : Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              side: BorderSide(
                color: category == _selectedCategory
                    ? const Color(0xFFC67C4E)
                    : const Color(0xFFDEDEDE),
                width: 1,
              ),
              padding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
          ),
        ))
            .toList(),
      ),
    );
  }
}
//                     backgroundColor: category == 'All Coffee'
//                         ? const Color(0xFFC67C4E)
//                         : Colors.white,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12)),
//                     side: BorderSide.none,
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                   ),
//                 ))
//             .toList(),
//       ),
//     );
//   }
// }      For Dynamic
