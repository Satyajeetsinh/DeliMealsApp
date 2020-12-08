import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal-item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeal;
  FavoritesScreen(this.favoriteMeal);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeal.isEmpty) {
      return Center(
        child: Text("No favorites added yet"),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoriteMeal[index].id,
            title: favoriteMeal[index].title,
            duration: favoriteMeal[index].duration,
            affordability: favoriteMeal[index].affordability,
            complexity: favoriteMeal[index].complexity,
            imageUrl: favoriteMeal[index].imageUrl,
          );
        },
        itemCount: favoriteMeal.length,
      );
    }
  }
}
