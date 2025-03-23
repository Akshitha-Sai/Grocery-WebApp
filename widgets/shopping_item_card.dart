import 'package:flutter/material.dart';
import '../models/shopping_item.dart';

class ShoppingItemCard extends StatelessWidget {
  final ShoppingItem shoppingItem;

  const ShoppingItemCard({required this.shoppingItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(shoppingItem.name),
        subtitle: Text("Quantity: ${shoppingItem.quantity}"),
      ),
    );
  }
}
