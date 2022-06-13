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
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text("Nome |"),
                              Text(" Celular |"),
                              Text(" Email |"),
                              Text(" CEP "),
                            ],
                          ),
                        ),
                      ],
                    ),
            ),
          )
        ],
      ),
    );
  }
}
/* https://www.syncfusion.com/flutter-widgets/flutter-datagrid?gclid=EAIaIQobChMI3s30noGr-AIVdhbUAR0zgwADEAAYASAAEgLWY_D_BwE */