import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RequestPasswordPage extends StatefulWidget {
  const RequestPasswordPage({ Key? key }) : super(key: key);

  @override
  State<RequestPasswordPage> createState() => _RequestPasswordPageState();
}

class _RequestPasswordPageState extends State<RequestPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(20),

      ),
    );
  }
}


