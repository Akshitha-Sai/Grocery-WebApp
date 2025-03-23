class Product {
  final String name;
  final DateTime expiryDate;
  final String category;

  Product({
    required this.name,
    required this.expiryDate,
    required this.category,
  });

  // Convert a product to a map for Firestore
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'expiryDate': expiryDate.toIso8601String(),
      'category': category,
    };
  }

  // Convert a map from Firestore to a Product object
  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'],
      expiryDate: DateTime.parse(map['expiryDate']),
      category: map['category'],
    );
  }
}
