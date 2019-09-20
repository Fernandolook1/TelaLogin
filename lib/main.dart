import 'curve.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    title: "Login",
    debugShowCheckedModeBanner:false
  ));
}
//~/Library/Android/sdk/emulator
class Home extends StatefulWidget {
  
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: Colors.white,
      body:SafeArea(
        child: Column(
          children: <Widget>[
            CurvadoWidget(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Login", 
                  style: TextStyle(
                    color: Color(0xff4d5f75),
                    fontSize: 25
                  ),
                  textAlign: TextAlign.right,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                        icon: Icon(Icons.account_circle),
                        hintText: 'Username',
                        ),
                      ),
                    Padding(
                      padding: EdgeInsets.only(left: 0.0,top: 10.0,bottom: 0.0, right: 0.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock),
                          hintText: 'Password'
                        ),
                      ),
                    ),
                    
                    ],
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

