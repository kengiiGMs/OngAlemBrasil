
import 'package:flutter/material.dart';

showAlertPassword(BuildContext context) 
{ 
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () { 
     Navigator.of(context).pushReplacementNamed('/');},
  );
  AlertDialog alerta = AlertDialog(
    title: Text("Conta ou Senha incorretas"),
    content: Text("Tente novamente ou crie uma nova conta"),
    actions: [
      okButton,
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}