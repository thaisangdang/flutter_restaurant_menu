// 1. Define the blueprint for a single food item
class FoodItem {
  final String name;
  final String description;
  final String imagePath;
  final double price;

  // Constructor
  FoodItem({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
  });
}

// 2. Create a Mock Data List (Simulating a database)
// In a real app, this would come from an API or Firebase.
final List<FoodItem> menu = [
  FoodItem(
    name: 'Margherita Pizza',
    description: 'Tomato sauce, mozzarella, and fresh basil.',
    imagePath:
        'assets/images/pizza.jpg', // Ensure you have these assets or use network URLs
    price: 12.99,
  ),
  FoodItem(
    name: 'Double Cheeseburger',
    description: 'Two beef patties, cheddar, lettuce, and house sauce.',
    imagePath: 'assets/images/burger.jpg',
    price: 15.50,
  ),
  FoodItem(
    name: 'Caesar Salad',
    description: 'Romaine lettuce, croutons, parmesan, and caesar dressing.',
    imagePath: 'assets/images/salad.jpg',
    price: 9.99,
  ),
  FoodItem(
    name: 'Spaghetti Carbonara',
    description: 'Egg, hard cheese, cured pork, and black pepper.',
    imagePath: 'assets/images/pasta.jpg',
    price: 14.00,
  ),
  FoodItem(
    name: 'Chocolate Lava Cake',
    description: 'Warm chocolate cake with a liquid core.',
    imagePath: 'assets/images/cake.jpg',
    price: 6.50,
  ),
];
