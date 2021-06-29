import 'package:flutter/material.dart';
import 'package:shopping/pages/login_page.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
        //para elevar o AppBa
        centerTitle: true,
        leading: IconButton(
          color: Colors.blue,
          icon: Icon (Icons.arrow_back_ios),
          onPressed: () {
                      Navigator.push(context,
                       MaterialPageRoute(
                        builder: (context) => LoginPage()
                      ),
                    );
                  },
                ),
              actions: [
            Icon(
          Icons.content_paste,
        color: Colors.blue,
      ),
    ],
  ),
     body: SingleChildScrollView(
       child:
          Container(
              padding:EdgeInsets.only(
                top: 80,
                  left: 20,
                    right: 20,
                      bottom: 40
                        ),
                          child: Column (
                            children: <Widget> [
                              Container(
                                height: 450,
                              decoration: BoxDecoration(
                            color: Colors.white,
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
    child: Column(
  children: <Widget> [
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        children: [
          Text("Sign Up", 
          style: Theme.of(context).textTheme.display2,
                ),
                  ],
                    ),
                      ],
                        ),
                          SizedBox(
                            height: 20,
                              ),
                                TextFormField(
                                  // autofocus: true,
                                keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                            hintText: "Insire seu nome",
                          hintStyle: TextStyle(
                          color: Theme.of(context).primaryColor,
                          ),
                          labelText: "Name",
                        labelStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            style: TextStyle(
          fontSize: 20
        ),
      ),
    SizedBox(
      height: 10,
        ),
          TextFormField(
            //autofocus: true,
              keyboardType: TextInputType.text,
                obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Digite seu email",
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
                                          ),
                                            SizedBox(
                                              height: 10,
                                                ),
                                              TextFormField(
                                            //autofocus: true,
                                          keyboardType: TextInputType.text,
                                        obscureText: true,
                                      decoration: InputDecoration(
                                    hintText: "Insira uma senha",
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
              ),
            SizedBox(
          height: 50,
        ),
      Container(
    height: 60,
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
                  child: Text ("Signup",
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.w400,
                          fontSize: 16,
                            ),
                              ),
                                onPressed: () {
                                   Navigator.push(context,
                                    MaterialPageRoute(
                                    builder: (context) => LoginPage()
                                      ),
                                        );
                                          },
                                            ),
                                              ),
                                                ],
                                                  ),
                                                    ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                        }