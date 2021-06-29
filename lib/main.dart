import 'package:flutter/material.dart';
import 'package:shopping/pages/signup.dart';
import 'package:shopping/pages/tabpage.dart';
import 'package:shopping/thems/dartk_theme.dart';
import 'package:shopping/thems/light_theme.dart';

void main() => runApp(MyApp()); 

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'shopping',
      debugShowCheckedModeBanner: false,
      //Comando para tirar o DEBUG que aparece na tela do emulador/celular.
      theme: lightTheme(),
      home: DefaultTabController(
        length: 3,
        child: TabsPage(),
      ),
    routes: {
      "singup": (context) => SignUpPage()
    },
    );
  }
}