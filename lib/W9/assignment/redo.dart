import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: RestaurantApp()),
  );
}

enum RestaurantType {
  westernFood("Western Food", Color(0xFFFFC1C1)),
  khmerFood("Khmer Food", Color(0xFFFFE0B2)),
  italianFood("Italian Food", Color(0xFFE1BEE7)),
  streetFood("Street Food", Color(0xFFC8E6C9));

  final String label;
  final Color color;

  const RestaurantType(this.label, this.color);
}

class Restaurant {
  final String name;
  final RestaurantType type;
  final double score;
  const Restaurant({
    required this.name,
    required this.type,
    required this.score,
  });
}

class RestaurantTile extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantTile({super.key, required this.restaurant});

  Color scoreColor(double score) {
    if (score == 5) {
      return Colors.green;
    } else if (score >= 2 && score <= 4) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            restaurant.name,
            style: const TextStyle(fontSize: 18, color: Colors.black),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Chip(
                label: Text('${restaurant.score.toInt()}'),
                backgroundColor: scoreColor(restaurant.score),
              ),
              const SizedBox(width: 10),
              Chip(
                label: Text(restaurant.type.label),
                backgroundColor: restaurant.type.color,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Restaurant> MyRestaurant = [
      const Restaurant(
        name: "Ronan Restaurant",
        type: RestaurantType.westernFood,
        score: 4,
      ),
      const Restaurant(
        name: "Italian Pizza",
        type: RestaurantType.italianFood,
        score: 5,
      ),
      const Restaurant(
        name: "Angkor Watt Food",
        type: RestaurantType.khmerFood,
        score: 5,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Restuarant App", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          const SizedBox(height: 15,),
          RestaurantTile(restaurant: MyRestaurant[0]),
          RestaurantTile(restaurant: MyRestaurant[1]),
          RestaurantTile(restaurant: MyRestaurant[2]),

        ],
      ),
    );
  }
}
