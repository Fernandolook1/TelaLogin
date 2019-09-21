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
          // mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            CurvadoWidget(),
            Padding(
              padding: EdgeInsets.only(left: 0.0,top: 10.0,bottom: 0.0, right: 30.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Login", 
                    style: TextStyle(
                      color: Color(0xff4d5f75),
                      fontSize: 25
                    ),
                    textAlign: TextAlign.right,
                  ),
                
                  Container(
                    width: MediaQuery.of(context).size.width-10,
                    decoration: BoxDecoration(
                    
                    ),
                    padding: EdgeInsets.only(left: 0.0,top: 10.0,bottom: 0.0, right: 0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              // bottomRight: Radius.circular(40.0),
                              topRight: Radius.circular( 40.0)
                              ),
                            color: Colors.white,
                            boxShadow:[
                              BoxShadow(
                              color:Colors.black12,
                              offset: Offset(0,0),  
                              spreadRadius: 1.0,
                              blurRadius: 1.0
                              ),
                            ],
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                            icon: Icon(Icons.account_circle),
                            hintText: 'Username',
                            border: InputBorder.none
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(40.0),
                              // topRight: Radius.circular( 40.0)
                              ),
                            color: Colors.white,
                            boxShadow:[
                              BoxShadow(
                              color:Colors.black12,
                              offset: Offset(0,0),  
                              spreadRadius: 1.0,
                              blurRadius: 1.0
                              ),
                            ],
                          ),
                          // padding: EdgeInsets.only(left: 0.0,top: 10.0,bottom: 0.0, right: 0.0)
                          child: TextFormField( 
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(Icons.lock),
                              hintText: 'Password'
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

