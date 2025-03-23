import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'pages/login_page.dart'; // Ensure this path is correct

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Management System',
      theme: ThemeData(
        primaryColor: Color(0xFF3D8D7A),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color(0xFFB3D8A8),
        ),
        cardColor: Color(0xFFA3D1C6),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black), // Updated to bodyLarge
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        // Wrap your LoginPage in Scaffold if not already wrapped
        backgroundColor: Color(
          0xFFFBFFE4,
        ), // Background color is applied to the Scaffold
        body: LoginPage(),
      ),
    );
  }
}
