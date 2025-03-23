import 'package:flutter/material.dart';
import 'expiry_reminder_page.dart';
import 'shopping_list_page.dart';
import 'product_entry_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F1DE), // Light background color
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Color(0xFF007074), // Dark color for the AppBar
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildHomePageButton(
              context,
              "Check Expiry Reminders",
              Color(0xFFF38C79), // Light orange color
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExpiryReminderPage()),
                );
              },
            ),
            SizedBox(height: 20),
            _buildHomePageButton(
              context,
              "Shopping List",
              Color(0xFF007074), // Dark teal color
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShoppingListPage()),
                );
              },
            ),
            SizedBox(height: 20),
            _buildHomePageButton(
              context,
              "Add Product",
              Color(0xFF8AB2A6), // Light green color
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductEntryPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // Custom button widget to reuse for each button in the HomePage
  Widget _buildHomePageButton(
    BuildContext context,
    String text,
    Color color,
    Function() onPressed,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Corrected parameter: Button color
        foregroundColor: Colors.white, // Corrected parameter: Text color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0), // Rounded corners
        ),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
