import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
         SizedBox(
           height: 5,
           width: double.infinity,
         ),
         
         Expanded(
          //Comando para que o Container tome o espaço total da tela.
           child: Container(
           child: productList(),
           ),
         ),

        Container(
          color: Colors.black12,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Padding(
               padding: EdgeInsets.only(top: 20, left: 20),
               child: 
               Column(
                 children: [
                   Text("TOTAL"
                   ),
                    SizedBox(
                  height: 5,
                            ),
                  Text("\$1000000",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.orange,
                  ),
                   ),
                 ],
               ),
             ),
            Container(
               height: 50,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            )
          ),
          margin: EdgeInsets.only(
            right: 20,
          ),
              
              child: FlatButton(
                child: Text( "Checkout",
                 style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),

                onPressed: () {},
              ),
            ),
            ],
          ),
        ),
      ],
      ),
      );
  }
}


Widget productList() {
  return ListView(
    children: <Widget> [
      productItem(),
      productItem(),
      productItem(),
      productItem(),
      productItem(),
      productItem(),

    ],
  );
}

Widget productItem() {
  return Container(
    height: 120,
    margin: EdgeInsets.all(5),
    child: Row(
      children: <Widget> [
     Container(
       height: 90,
       width: 90,
       margin: EdgeInsets.all(10),
       
       child: Image.asset(
         "assets/sharingan.png",
         fit: BoxFit.fitWidth,
       ),
      ),   
    Padding(
      padding: const EdgeInsets.only(left: 10, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
        Text("Titulo do produto"),
        SizedBox(
           height: 5
        ),
        Text("\$9999",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.orange,
        ),
        ),
        SizedBox(
           height: 10
        ),
        Container(
          height: 30,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            )
          ),
        child: Row(children: [
          Container(
          width: 40,
          alignment: Alignment.center,
          child: FlatButton(
            child: Text("-",
            style: TextStyle(
              fontSize: 20,
            ),
            ),
            onPressed: () {},
          ),
          ),
          Container(
          width: 40,
          alignment: Alignment.center,
          child: Text("1",
          style: TextStyle(
            fontSize: 20,
            ),
          ),
          ),
          Container(
          width: 40,
        alignment: Alignment.center,
        child: FlatButton(
            child: Text("+",
            style: TextStyle(
              fontSize: 20,
            ),
            ),
            onPressed: () {},
        ),
          ),
        ],
        ),
        ),
      ],
      ),
    ),
    ],
    ),
  );
 }