import 'package:flutter/material.dart';
import 'InputField.dart';

class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: InputField(),
          ),
          SizedBox(height: 20,),
          InkWell(
            child: Text(
              "Esqueci minha senha",
              style: TextStyle(color: Colors.grey), 
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/requestPassword');
            }
                            
          ),
          
          SizedBox(height: 20,),
          InkWell(
            child: Text(
              "Criar uma conta",
              style: TextStyle(color: Colors.grey),
            ),onTap: () {
              Navigator.of(context).pushNamed('/createProfile');
            },
          ),
        ],
      ),
    );
  }
}