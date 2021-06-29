import 'package:flutter/material.dart';
import 'package:shopping/pages/checkout.dart';
import 'package:shopping/pages/home_page.dart';
import 'package:shopping/pages/login_page.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: [
          CenterPage(),
          CheckOut(),
          LoginPage(),
        ],
      ),
    bottomNavigationBar: TabBar(
      tabs: <Tab> [
        Tab(
        icon: Icon(Icons.home),
        ),
        Tab(
          icon: Icon(Icons.shopping_cart),
        ),
        Tab(
          icon: Icon(Icons.perm_identity),
        ),
      ],
    labelColor: Theme.of(context).primaryColor,
    unselectedLabelColor: Colors.black38,
    //Comando para colocar a cor da tab que não está selecionada
    indicatorSize: TabBarIndicatorSize.label,
    //Tamanho do indicador em baixo dos icones.
    indicatorPadding: EdgeInsets.all(5.0),
    
    indicatorColor: Theme.of(context).primaryColor,
    //Cor do indicador.
    ),
    );
  }
}