import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color colorBk;

  CategoryItem({this.title, this.colorBk});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Text(title),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorBk.withOpacity(0.7), colorBk],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
