import 'package:flutter/material.dart';

void examples() => runApp(Example()); 

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyApp"),
      centerTitle: true,
      ),
      body: 
      Container(
        width: double.infinity,
        //comando para pegar a largura total da pagina
        color: Colors.red,
        child: ListView(

scrollDirection: Axis.horizontal,
//Comando para alinhas o ListView em horizontal.

//scrollDirection: Axis.vertical,
//Comando para alinhas o ListView em vertical.

// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// comando para que os Itens tenham de pegar a tela inteira.

// mainAxisAlignment: MainAxisAlignment.spaceAround,
//Comando para dar espaçamento entre os itens. (spaceAround)
//Comando, para alinhar as coisas em vertical. (mainAxisAlignment)

// crossAxisAlignment: CrossAxisAlignment.center,
//Comando para alinhar as coisas na horizontal.
children: [
  Text("Item 1"),
  Text("Item 2"),
  Text("Item 3"),
  Text("Item 4"),
  Text("Item 5"),
],
        ),
      ),
      );
  
  }
}