import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  
  
  final String image;
  
  ProductPage({
    @required this.image});
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget> [
            SliverAppBar(
              backgroundColor: Colors.white.withOpacity(0),
              elevation: 0,
              expandedHeight: 500.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Hero(
                  tag: image,
                  child: Image.asset(
          image,
          width: double.infinity,
          fit: BoxFit.contain
        ),
                ),
              ),
            ),
          ];
        },
        body: Container(
          child: Center(
            child: Text("Detalhes do produto"
            ),
          ),
        ),
      ),
    );
  }
}