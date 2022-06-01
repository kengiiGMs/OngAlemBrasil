import 'package:flutter/cupertino.dart';

class RequestPasswordPage extends StatefulWidget {
  const RequestPasswordPage({ Key? key }) : super(key: key);

  @override
  State<RequestPasswordPage> createState() => _RequestPasswordPageState();
}

class _RequestPasswordPageState extends State<RequestPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Recuperar Senha")),
    );
  }
}