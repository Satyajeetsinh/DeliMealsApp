import 'package:flutter/material.dart';

import './dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = "/category-meals";
  // final String id;
  // final String title;

  // CategoryMealsScreen(this.id, this.title);
  @override
  Widget build(BuildContext context) {
    final routArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final title = routArgs["title"];
    final id = routArgs["id"];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Text(categoryMeals[index].title);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
