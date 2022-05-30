import 'package:flutter/material.dart';

 String email = "";
    String password = "";

/* Input */
class InputField extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          child: TextField(
            onChanged: (text) {
                    email = text;
                  },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Entre com seu email",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: TextField(
            onChanged: (text) {
                    password = text;
                  },
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Senha",
                hintText: "Entre com sua senha",
                hintStyle: TextStyle(color: Colors.grey),
                
            ),
          ),
        ),
        SizedBox(height: 10,),
        Button(),
      ],
    
    );
  }
}
/* FimInput */

class Button extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.cyan[500],
        borderRadius: BorderRadius.circular(10),
      ),
     child:  Center(
       child: Container(
         width: 500,
         height: 60,
         child: TextButton(
                          child: Text(
                            "Entrar".toUpperCase(),
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                          onPressed: () {
                            if (email == "mahki@hotmail.com" &&
                                password == "1234") {
                              Navigator.of(context).pushReplacementNamed('/home');
                            } else {
                              Navigator.of(context).pushReplacementNamed('/');
                            }
                          },
                        ),
       ),
     ),
    );
  }
}
