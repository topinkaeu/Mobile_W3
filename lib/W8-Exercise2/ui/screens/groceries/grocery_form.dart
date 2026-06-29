// ---------------------------------------------
// Create a new statefull widget : GroceryForm
// ---------------------------------------------

// The form shall be composed of 2 text fields:
// -	Name of the grocery item
//-	Quantity (number only)

// ⚠️  For now we don’t select the grocery type, we assume it’s always food

// The form shall be composed of 2 buttons:
//-	Cancel button
// -	Add item button


import 'package:flutter/material.dart';
import '../../../models/grocery.dart';

class GroceryAddItem extends StatefulWidget {
  final Function(GroceryItem) onAddItem;
  const GroceryAddItem({super.key, required this.onAddItem});

  @override
  State<GroceryAddItem> createState() => _GroceryAddItemState();
}

class _GroceryAddItemState extends State<GroceryAddItem> {
  
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
