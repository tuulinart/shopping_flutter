import 'package:flutter/material.dart';
import 'package:shopping/pages/signup.dart';

class LoginPage extends StatelessWidget {
  
  final _formKey = GlobalKey<FormState>() ;
  String _email;
  String _password;
  
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding:EdgeInsets.only(
              top: 50,
              left: 20,
              right: 20,
              bottom: 40
            ),
            child: Column (
              children: <Widget> [
                Container(
                  height: 420,
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(5 ,5.0),
                        blurRadius: 5,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                child: Padding(
                  padding: EdgeInsets.only(top: 40, left: 15, right: 15),
                  child: Form(
                    key: _formKey,
                    child: Column(
                    children: <Widget> [
                     Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children:<Widget> [
                        Column(children: <Widget> [
                          Text("Welcome,", style: Theme.of(context).textTheme.display2,
                      ),
                      Text("Sign in to continue",
                       style: Theme.of(context).textTheme.subhead,
                      ),
                     
                        ],
                        ),
                      FlatButton(
                      //RaisedButton(),
                      //Botão com Opacidade.  
                        child: Text("Sign up",
                         style: TextStyle(
                         color: Theme.of(context).primaryColor,
                         ),
                        ),
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                         
                         )
                        );
                      },
                 ),
                     ],
                     ),
                     SizedBox(
                       height: 10,
                     ),
                     TextFormField(
                      // autofocus: true,
                       keyboardType: TextInputType.emailAddress,
                       decoration: InputDecoration(
                          hintText: "Insira seu email",
                          hintStyle: TextStyle(
                          color: Theme.of(context).primaryColor,   
                          ),
                         labelText: "Email",
                         labelStyle: TextStyle(
                           color: Theme.of(context).primaryColor,
                           fontWeight: FontWeight.w400,
                           fontSize: 16,
                         ),
                       ),
                       style: TextStyle(
                         fontSize: 20
                       ),
                     validator: (value) {
                       if (value.isEmpty) {
                         return "Invalid E-mail";
                       }
                     return null;
                     },
                     onSaved: (input) => _email = input,
                     ),
                      SizedBox(
                       height: 10,
                     ),
                      TextFormField(
                      //autofocus: true,
                       keyboardType: TextInputType.text,
                       obscureText: true,
                       decoration: InputDecoration(
                          hintText: "Insira sua senha",
                          hintStyle: TextStyle(
                          color: Theme.of(context).primaryColor,   
                          ),
                         labelText: "Password",
                         labelStyle: TextStyle(
                           color: Theme.of(context).primaryColor,
                           fontWeight: FontWeight.w400,
                           fontSize: 16,
                         ),
                       ),
                       style: TextStyle(
                         fontSize: 20
                       ),
                     validator: (value) {
                       if (value.isEmpty) {
                         return "Invalid Password";
                       }
                     return null;
                     },
                     onSaved: (input) => _password = input,
                     ),
                     Container(
                       height: 40,
                       alignment: Alignment.centerRight,
                       child: FlatButton(
                         child: Text ("Forgot your password?",
                         style: TextStyle(
                            color: Theme.of(context).primaryColor,
                             fontWeight: FontWeight.w400,
                             fontSize: 16,
                         ),
                         ),
                         onPressed: () {}
                       ),
                     ),
                     SizedBox(
                       height: 10,
                     ),
                     Container(
                       width: double.infinity,
                       //Comando para o Cointainer pegar a tela inteira.
                       decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                         borderRadius: BorderRadius.all(
                           Radius.circular(5)
                         ),
                       ),
                       child: 
                       FlatButton(
                         child: Text ("Sign in",
                         style: TextStyle(
                           color: Colors.white,
                             fontWeight: FontWeight.w400,
                             fontSize: 16,
                         ),
                         ),
                         onPressed: () { 
                           if (_formKey.currentState.validate()) {
                             _formKey.currentState.save();

                             print(_email);
                             print(_password);

                             Scaffold.of(context).showSnackBar(
                               SnackBar(
                                 content: Text("Welcome $_email"),
                               )
                             );
                         }
                             },
                       ),
                     ),
                 ],
                ),
                  ),
                ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text("- OR -",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300
                  ),
                  ),
                ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Container(
                     height: 25,
                    width: 60,
                    child: Image.asset("assets/facebook.png",
                    ),
                  ),
                  Text("Sign in with Facebook"),
                ],),
              onPressed: () {},
              ),
              ),
              SizedBox(
                     height: 20,
                   ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Container(
                    height: 25,
                    width: 60,
                    child: Image.asset("assets/google.png"
                    ),
                  ),
                  Text("Sign in with Google    "),
                ],),
              onPressed: () {},
              ),
              ),
              ],
              ),
          ),
        ),
      );
  }
}