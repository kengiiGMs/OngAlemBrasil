import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterBillPage extends StatefulWidget {
  const RegisterBillPage({Key? key}) : super(key: key);

  @override
  State<RegisterBillPage> createState() => _RegisterBillPageState();
}

class _RegisterBillPageState extends State<RegisterBillPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 60),
            child: Center(
              child: SizedBox(
                child: Container(
                  width: 900,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 4.0,
                      style: BorderStyle.solid
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(90),
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Center(child: Text("Cadastro de Contas", style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 14, 174, 62,),))),
                        ),
                        Text("Insira os dados", style: TextStyle(color: Color.fromARGB(255, 14, 174, 62),)),
                        TextField(
                          decoration: InputDecoration(labelText: "Código",
                          hintText: "Digite o código",
                          hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Tipo de Conta",
                            hintText: "Digite o Tipo de Conta",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Data de vencimento",
                            hintText: "Digite a data de vencimento",
                          hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Valor",
                            hintText: "Digite o valor",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(350, 45), 
                              primary: Color.fromARGB(255, 14, 174, 62),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                            onPressed: () {}, 
                            child: Text("CADASTRAR", style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ), 
        ),
    );
  }
}