import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color colorBk;

 const Category(
      {@required this.id, 
      @required this.title,
       this.colorBk = Colors.amber});
}
