import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BillPage extends StatefulWidget {
  const BillPage({ Key? key }) : super(key: key);

  @override
  State<BillPage> createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {
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
          Text("Contas"),
        ],
      ),
    );
  }
}