import 'dart:convert';
import 'package:http/http.dart' as http;

class RecipeApiService {
  static const String apiUrl =
      "https://api.spoonacular.com/recipes/findByIngredients";

  Future<List<dynamic>> fetchRecipes(List<String> ingredients) async {
    final response = await http.get(
      Uri.parse('$apiUrl?ingredients=${ingredients.join(",")}'),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception("Failed to load recipes");
    }
  }
}
