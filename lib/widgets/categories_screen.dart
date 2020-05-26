import 'package:flutter/material.dart';
import './dummy_data.dart';
import '../widgets/category_item.dart';

class CatergoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Nutrimental'),),
          body: GridView(
            padding: EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map((catData) => CategoryItem(
                  title: catData.title,
                  colorBk: catData.colorBk,
                ),)
            .toList(),
      ),
    );
  }
}
