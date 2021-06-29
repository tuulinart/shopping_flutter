import 'package:flutter/material.dart';
import 'package:shopping/pages/product_page.dart';

class ProductCard extends StatelessWidget {
  
  final String image;
  final String title;
  final String description;
  final double price;
  
  ProductCard({
    @required this.image,
    @required this.title,
    @required this.description,
    @required this.price,
  });

  
  
  
  
  @override
  Widget build(BuildContext context) {
     return Container(
  padding: EdgeInsets.all(10),
  margin: EdgeInsets.all(10),
  width: 160,
  color: Colors.black.withOpacity(0.1),
  child: Column(
    children: <Widget> [
      GestureDetector(
        onTap: () {
      Navigator.push(context,
        MaterialPageRoute(
            builder: (context) => ProductPage(image: image,),
               )
             );
        },
        child: Hero(
          tag: image,
          child: Image.asset(
            image,
          width: 140,
          height: 140,
          ),
        ),
      ),
    SizedBox(
            height: 10,
            ),
    Container(
      height: 40,
      child: Text("$title",
      style: TextStyle(
        fontSize: 17,
      ),
      ),
    ),  
    SizedBox(
            height: 10,
            ),
             Row(
        children: [
          Text("$description",
          style: TextStyle(
            fontSize: 17,
          ),
          ),
        ],
      ),
  SizedBox(
    height: 10,
 ),
    Row(children: [
      Text("\$ $price",
    style: TextStyle(
      fontSize: 17,
    color: Colors.orange,
      ),
    ),
  ],
  ),
  ],
  ),
  );
  }
}