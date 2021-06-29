import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shopping/pages/widgets/category/categorylist_widget.dart';
import 'package:shopping/pages/widgets/products/productlist.dart';
import 'package:shopping/pages/widgets/search_widget.dart';

class CenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        body: SingleChildScrollView(
          child: Container(
             padding: EdgeInsets.all(15),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
              SizedBox(
                height: 20,
              ),
              SearchWidget(),
              SizedBox(
                height: 20,
              ),
            Text(
              "Categories",
            style: TextStyle(
              fontSize: 25,
            ),
            ),
            SizedBox(
                height: 10
                ),
            Container(
              height: 90,
              width: 90,
              child: 
              CategoryList(),
            ),
             SizedBox(
                height: 20,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
              Text("Best Selling",
              style: TextStyle( 
              fontSize: 25,
              ),
            ),
            FlatButton(
              child: Text("See All",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
              ),
              onPressed: () {},
            ),
            ],
            ),
            SizedBox(
                height: 10,
                ),
            Container(
              height: 320,
              child: 
            ProductList(scrollDirection: Axis.horizontal),
            )
            ],
            ),
          ),
        ),
    )
    );
  }
}