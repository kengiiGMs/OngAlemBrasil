import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangeProfilePage extends StatefulWidget {
  const ChangeProfilePage({ Key? key }) : super(key: key);

  @override
  State<ChangeProfilePage> createState() => _ChangeProfilePageState();
}

class _ChangeProfilePageState extends State<ChangeProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(child: Text("Alterar conta")),
      ),
    );
  }
}