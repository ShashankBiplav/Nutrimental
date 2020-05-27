import 'package:flutter/foundation.dart';

enum Complexity {
  SIMPLE,
  CHALLENGING,
  HARD,
}
enum Affordability {
  AFFORDABLE,
  PRICEY,
  LUXURIOUS,
}

class Meal {
  final String id;
  final List<String> categories;
  final String name;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  Meal({
    @required this.id,
    @required this.categories,
    @required this.name,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.steps,
    @required this.duration,
    @required this.complexity,
    @required this.affordability,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian,
  });
}
