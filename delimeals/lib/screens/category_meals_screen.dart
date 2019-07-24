import 'package:flutter/material.dart';
import 'package:delimeals/widgets/meal_item.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/categories-meals';
  // final String categoryId;
  // final String categoryTitle;

  // const CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArguments =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArguments['title'];
    final categoryId = routeArguments['id'];
    final filterMeals = DUMMY_MEALS.where((meal){
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          print(filterMeals[index].imageUrl);
          return MealItem(
             id: filterMeals[index].id,
             title: filterMeals[index].title,
            imageUrl: filterMeals[index].imageUrl,
            duration: filterMeals[index].duration,
            affordability: filterMeals[index].affordability,
            complexity: filterMeals[index].complexity,
          );
        },
        itemCount: filterMeals.length,
      ),
    );
  }
}
