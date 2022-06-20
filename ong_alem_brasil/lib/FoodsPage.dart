import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FoodsPage extends StatefulWidget {
  const FoodsPage({Key? key}) : super(key: key);

  @override
  State<FoodsPage> createState() => _FoodsPageState();
}

class _FoodsPageState extends State<FoodsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10,),
          HeaderFoods(),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 4,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                  gradient: LinearGradient(colors: [
                    Colors.green, Colors.lightGreen
                  ], begin: Alignment.bottomRight, end: Alignment.bottomLeft),
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: PersonData(),
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderFoods extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Text("Cestas Basicas", style: TextStyle(color: Colors.green, fontSize: 30),),
          ),
          SizedBox(height: 10,),
          Center(
            child: Text("Cadastro e Consulta de Cestas Básicas", style: TextStyle(color: Colors.green, fontSize: 16),),
          )
        ],
      ),
    );
  }
}


class PersonData extends StatefulWidget {
  const PersonData({Key? key}) : super(key: key);

  @override
  State<PersonData> createState() => _PersonDataState();
}

class _PersonDataState extends State<PersonData> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(18),
                    child: Text(
                      "Dados", style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Icon(Icons.food_bank, size: 70, color: Colors.white,),
                    Text("Cestas", style: TextStyle(color: Colors.white, fontSize: 13),),
                    Text("Cadastradas", style: TextStyle(color: Colors.white, fontSize: 13),),
                    Text("Total: 4", style: TextStyle(color: Colors.white, fontSize: 16),),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
            child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(350, 45), 
          primary: Color.fromARGB(255, 14, 174, 62),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )
        ),
        onPressed: () {
           Navigator.of(context).pushNamed('/registerFood');
        },
        child: const Text('CADASTRAR', style: TextStyle(fontSize: 17),
        ),
      ),
          ),
          Container(
            child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(350, 45), 
          primary: Color.fromARGB(255, 14, 174, 62),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )
        ),
        onPressed: () {
           Navigator.of(context).pushNamed('/querryFood');
        },
        child: const Text('CONSULTAR E EDITAR', style: TextStyle(fontSize: 17),
        ),
      ),
          ),
            SizedBox(height: 10,),
        ],
      ),
    );
  }
}
