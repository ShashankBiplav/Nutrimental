import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';
  final Function toggleFavourite;
  final Function isFavourite;
  MealDetailScreen({this.toggleFavourite,this.isFavourite});

  Widget _buildSectionTitle(BuildContext context, String text) {
    return Container(
      child: Text(
        text,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }

  Widget buildContainer({Widget child}) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 150,
      width: double.infinity,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeal.name}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            _buildSectionTitle(context, 'Ingredients'),
            buildContainer(
              child: ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: Theme.of(context).accentColor,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(
                      selectedMeal.ingredients[index],
                    ),
                  ),
                ),
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            _buildSectionTitle(context, 'Steps'),
            buildContainer(
                child: ListView.builder(
              itemBuilder: (ctx, index) => Column(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      child: Text('#${(index + 1)}'),
                    ),
                    title: Text(
                      selectedMeal.steps[index],
                    ),
                  ),
                  Divider(
                    thickness: 0.4,
                    color: Colors.black87,
                  ),
                ],
              ),
              itemCount: selectedMeal.steps.length,
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(isFavourite(mealId)?Icons.star:Icons.star_border),
        onPressed: () =>toggleFavourite(mealId),
      ),
    );
  }
}
