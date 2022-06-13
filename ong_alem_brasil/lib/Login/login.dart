import 'package:flutter/material.dart';

import 'Header.dart';
import 'InputWapper.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                Colors.lightGreen,
                  Colors.green,
                  Colors.lightGreenAccent,
              ]),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 60,),
                Header(),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      ),
                    ),
                    child: InputWrapper(),
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