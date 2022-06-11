import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QueryPage extends StatefulWidget {
  const QueryPage({ Key? key }) : super(key: key);

  @override
  State<QueryPage> createState() => _QueryPageState();
}

class _QueryPageState extends State<QueryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                child: Container(
                    width: 90,
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 40),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green,
                          width: 3.0,
                          style: BorderStyle.solid
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  child:Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Funcionario"),
                  ),
                  )
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Pessoas"),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Cestas"),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Contas"),
                  ),
                ],
              ),
            ],
          )
        ],
      ),)
    );
  }
}