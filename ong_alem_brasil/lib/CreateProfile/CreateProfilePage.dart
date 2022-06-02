import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateProfilePage extends StatefulWidget {
  const CreateProfilePage({ Key? key }) : super(key: key);

  @override
  State<CreateProfilePage> createState() => _CreateProfilePageState();
}

class _CreateProfilePageState extends State<CreateProfilePage> {
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