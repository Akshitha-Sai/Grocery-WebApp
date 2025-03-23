import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/product.dart'; // Ensure the path to your Product model is correct

// Import the logger package for better logging in production
import 'package:logger/logger.dart';

class FirebaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final Logger _logger = Logger(); // Logger instance for logging errors

  // User authentication method
  Future<User?> signInWithEmailPassword(String email, String password) async {
    try {
      final UserCredential userCredential = await _auth
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential.user; // Returns User? (Nullable)
    } catch (e) {
      _logger.e("Sign-in error: $e"); // Log the error using logger
      return null; // Return null if sign-in fails
    }
  }

  // Add product to Firestore
  Future<void> addProduct(Product product) async {
    try {
      await _firestore
          .collection('products')
          .add(product.toMap()); // Ensure product.toMap() is valid
    } catch (e) {
      _logger.e("Failed to add product: $e"); // Log the error using logger
      throw Exception('Failed to add product: $e');
    }
  }

  // Fetch products from Firestore
  Future<List<Product>> getProducts() async {
    try {
      final snapshot = await _firestore.collection('products').get();
      return snapshot.docs
          .map(
            (doc) => Product.fromMap(doc.data() as Map<String, dynamic>? ?? {}),
          )
          .toList();
    } catch (e) {
      _logger.e("Failed to fetch products: $e"); // Log the error using logger
      throw Exception('Failed to fetch products: $e');
    }
  }
}
