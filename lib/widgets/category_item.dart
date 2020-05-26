import 'package:flutter/material.dart';
import '../widgets/categorymeals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color colorBk;
  final String id;

  CategoryItem({this.title, this.colorBk, this.id});

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      '/categorymeals_Screen', 
      arguments: {
      'id': id,
      'title': title,
    }
        // MaterialPageRoute(builder: (_){
        //   return CategoryMealsScreen(categoryId: id,categorytitle: title,);
        // },)
        );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [colorBk.withOpacity(0.7), colorBk],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
