import 'package:flutter/material.dart';
import 'models/food_item.dart';
import 'components/menu_card.dart';

void main() {
  runApp(const RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        backgroundColor:
            Colors.grey[100], // Light grey background makes white cards pop
        appBar: AppBar(
          title: const Text('Menu', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.orange,
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        // THE LIST BUILDER
        body: ListView.builder(
          // 1. How many items do we have?
          itemCount: menu.length,

          // 2. Build each item by index
          itemBuilder: (context, index) {
            // Get the specific food object
            final food = menu[index];

            // Return our custom card
            return MenuCard(
              food: food,
              onTap: () {
                // Show a feedback message
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${food.name} added to cart!'),
                    duration: const Duration(seconds: 1),
                    backgroundColor: Colors.green,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
