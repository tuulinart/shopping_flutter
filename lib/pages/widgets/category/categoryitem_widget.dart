import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  
  final String image;

  CategoryItem({@required this.image});
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration:
      BoxDecoration(
        color: Theme.of(context).accentColor,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(1,1),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(64),
        )
      ),
      child: Image.asset(image),
      );
  }
}