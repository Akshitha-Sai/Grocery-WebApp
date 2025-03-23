import 'package:flutter/material.dart';
import '../models/shopping_item.dart';
import '../widgets/shopping_item_card.dart';

class ShoppingListPage extends StatelessWidget {
  final List<ShoppingItem> shoppingItems = [
    ShoppingItem(name: "Rice", quantity: 2),
    ShoppingItem(name: "Tomatoes", quantity: 5),
    ShoppingItem(name: "Milk", quantity: 1),
  ];

  final List<ShoppingItem> expiredItems = [
    ShoppingItem(name: "Bread", quantity: 3),
    ShoppingItem(name: "Eggs", quantity: 6),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F1DE), // Light background
      appBar: AppBar(
        title: Text("Shopping List"),
        backgroundColor: Color(0xFF3E3F5B), // Dark color for AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Products in Shopping List",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF3E3F5B), // Dark text color
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: shoppingItems.length,
                itemBuilder: (context, index) {
                  return ShoppingItemCard(shoppingItem: shoppingItems[index]);
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Expired Products (To Rebuy)",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF3E3F5B), // Dark text color
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: expiredItems.length,
                itemBuilder: (context, index) {
                  return ShoppingItemCard(shoppingItem: expiredItems[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
