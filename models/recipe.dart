class Recipe {
  final String title;
  final String imageUrl;
  final String instructions;

  Recipe({
    required this.title,
    required this.imageUrl,
    required this.instructions,
  });

  // Convert a Recipe to a Map for Firestore (if needed)
  Map<String, dynamic> toMap() {
    return {'title': title, 'imageUrl': imageUrl, 'instructions': instructions};
  }

  // Convert a Map from Firestore to a Recipe object (if needed)
  factory Recipe.fromMap(Map<String, dynamic> map) {
    return Recipe(
      title: map['title'],
      imageUrl: map['imageUrl'],
      instructions: map['instructions'],
    );
  }
}
