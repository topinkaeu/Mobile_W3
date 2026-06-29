// ---------------------------------------------
// Create a new stateless widget : GroceryTile
// ---------------------------------------------

// The widget shall take as required parameter a Grocery

// 	Use a ListTile widget to layout the elements

// https://api.flutter.dev/flutter/material/ListTile-class.html

import 'package:flutter/material.dart';
import '../../../models/grocery.dart';

class GroceryItemTile extends StatelessWidget {
  final GroceryItem item;

  const GroceryItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(width: 15, height: 15, color: item.category.color),
      title: Text(item.name),
      trailing: Text('${item.quantity}'),
    );
  }
}
