import 'package:flutter/material.dart';

class FavoriteCard extends StatelessWidget {
  // Requirement: The widget takes a parameter for the isFavorite value
  final bool isFavorite;
  const FavoriteCard({super.key, required this.isFavorite});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Colors.black12)),
      ),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'title',
                  style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                ),
                const SizedBox(height: 10),
                Text('description', style: TextStyle(color: Colors.grey[600])),
              ],
            ),
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.red : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Favorite cards"),
      ),
      body: Column(
        children: [
          FavoriteCard(isFavorite: true),
          FavoriteCard(isFavorite: false),
          FavoriteCard(isFavorite: true),
        ],
      ),
    ),
  ),
);
