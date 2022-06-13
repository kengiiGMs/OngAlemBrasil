import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodStampsPage extends StatefulWidget {
  const FoodStampsPage({ Key? key }) : super(key: key);

  @override
  State<FoodStampsPage> createState() => _FoodStampsPageState();
}

class _FoodStampsPageState extends State<FoodStampsPage> {
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
          Text("Cestas"),
        ],
      ),
    );
  }
}