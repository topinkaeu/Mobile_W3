import 'package:flutter/material.dart';

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
st
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
          const SizedBox(height: 10,),
          Row(
            children: [
              Chip(label: Text('$restaurant.score'),
              backgroundColor: scoreColor(restaurant.score),
              ),
              const SizedBox(width: 10,),
              Chip(label: Text(restaurant.type.label),
              backgroundColor: restaurant.type.color,),
              
            ],
          )
        ],
      ),
    );
  }
}
