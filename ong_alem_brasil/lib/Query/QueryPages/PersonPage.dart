import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({ Key? key }) : super(key: key);

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.height,
            child: Divider(
              color: Colors.black,
            ),
          ),
          Text("Pessoas"),
        ],
      ),
    );
  }
}