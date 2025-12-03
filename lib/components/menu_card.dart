import 'package:flutter/material.dart';
import '../models/food_item.dart';

class MenuCard extends StatelessWidget {
  final FoodItem food;
  final VoidCallback onTap;

  const MenuCard({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 4, // Adds shadow depth
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),

        // 1. LEADING: The Image
        // We use CircleAvatar for a quick round image
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(food.imagePath),
          // fallback to a color if image fails or isn't set up yet:
          // backgroundColor: Colors.orange,
        ),

        // 2. TITLE: Food Name
        title: Text(
          food.name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),

        // 3. SUBTITLE: Description + Price
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            Text(
              food.description,
              maxLines: 2, // Limit text so it doesn't break layout
              overflow: TextOverflow.ellipsis, // Add "..." if too long
            ),
            const SizedBox(height: 8),
            Text(
              '\$${food.price.toStringAsFixed(2)}', // Format price (e.g., 12.99)
              style: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),

        // 4. TRAILING: Add Button
        trailing: IconButton(
          icon: const Icon(Icons.add_circle, color: Colors.orange, size: 30),
          onPressed: onTap,
        ),
      ),
    );
  }
}
