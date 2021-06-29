import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shopping/pages/widgets/products/productcard.dart';

class ProductList extends StatelessWidget {
  
  final Axis scrollDirection;

  ProductList({this.scrollDirection});
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
    child: ListView(
          scrollDirection: scrollDirection,
          children: <Widget> [
            ProductCard(
              title: "Sharingan",
              description: "Sasuke",
              image: "assets/sharingan.png",
              price: 9999.00,
            ),
            ProductCard(
              title: "Rinnegan",
              description: "Madara",
              image: "assets/rinnegan.png",
              price: 99999.00,
            ),
            ProductCard(
              title: "Byakugan",
              description: "Neji",
              image: "assets/byakugan.png",
              price: 4999.00,
            ),
            ProductCard(
              title: "RinneSharingan",
              description: "Kaguya",
              image: "assets/rinnesharingan.png",
              price: 0.00,
            ),
            ProductCard(
              title: "Tenseigan",
              description: "Boruto",
              image: "assets/tenseigan.png",
              price: 7999.00,
            ),
            ProductCard(
              title: "Mangekyou Sharingan",
              description: "Itachi",
              image: "assets/mangekyou.png",
              price: 49999.00,
            ),
            ProductCard(
              title: "Jōgan",
              description: "Boruto",
              image: "assets/jogan.png",
              price: 79999.00,
            )
          ],
          ),
  );
  }
}