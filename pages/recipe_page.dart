import 'package:flutter/material.dart';
import '../models/recipe.dart';
import '../services/recipe_api_service.dart';

class RecipePage extends StatefulWidget {
  @override
  _RecipePageState createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  final RecipeApiService _recipeApiService = RecipeApiService();
  List<Recipe> _recipes = [];

  @override
  void initState() {
    super.initState();
    _fetchRecipes();
  }

  _fetchRecipes() async {
    try {
      final recipes = await _recipeApiService.fetchRecipes(['tomato', 'rice']);
      setState(() {
        _recipes = recipes.map((recipe) => Recipe.fromMap(recipe)).toList();
      });
    } catch (e) {
      print("Failed to fetch recipes: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Recipes")),
      body: ListView.builder(
        itemCount: _recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_recipes[index].title),
            subtitle: Text(_recipes[index].instructions),
            leading: Image.network(_recipes[index].imageUrl),
          );
        },
      ),
    );
  }
}
