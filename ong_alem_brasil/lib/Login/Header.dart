import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(child: Image.asset('Logo.png')),
          Center(
            child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),),
          ),
          SizedBox(height: 10,),
          Center(
            child: Text("Bem vindo ao novo aplicativo da Ong Alem Brasil", style: TextStyle(color: Colors.white, fontSize: 18),),
          )
        ],
      ),
    );
  }
}