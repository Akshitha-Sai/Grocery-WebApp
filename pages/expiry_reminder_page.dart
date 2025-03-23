import 'package:flutter/material.dart';

class ExpiryReminderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F1DE), // Light background color
      appBar: AppBar(
        title: Text("Expiry Reminder"),
        backgroundColor: Color(0xFF3E3F5B), // Dark color for AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 8,
            color: Color(0xFFFFFFFF), // White background for the content
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Here are your expiry reminders:",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3E3F5B), // Dark text color
                    ),
                  ),
                  SizedBox(height: 30),
                  // Example list of reminders
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5, // Example count of reminders
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          "Product ${index + 1} Expiry Date: 2025-12-31", // Example reminder
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF3E3F5B), // Dark text color
                          ),
                        ),
                        leading: Icon(
                          Icons.notifications_active,
                          color: Color(0xFF8AB2A6), // Light green icon color
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 16,
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(
                        0xFF8AB2A6,
                      ), // Light green background for button
                      padding: EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 40,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      // Handle the button press
                    },
                    child: Text(
                      "Set New Reminder",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
