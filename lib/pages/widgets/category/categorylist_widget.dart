import 'package:flutter/material.dart';
import 'package:shopping/pages/widgets/category/categoryitem_widget.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Container(
    child:
        ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget> [
            CategoryItem(image: ("assets/naruto.png")),
            CategoryItem(image: ("assets/lee.png")),
            CategoryItem(image: ("assets/itachi.png")),
            CategoryItem(image: ("assets/kakashi.png")),
            CategoryItem(image: ("assets/sasuke.png")),
            CategoryItem(image: ("assets/jiraya.png")),
          ],
          ),
    );
}
  }