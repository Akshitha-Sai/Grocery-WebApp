import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF3D8D7A), // Updated from 'primary'
        foregroundColor: Colors.white, // Updated from 'onPrimary'
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      ),
      child: Text(text),
    );
  }
}
