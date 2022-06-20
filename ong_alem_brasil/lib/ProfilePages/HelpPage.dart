import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({ Key? key }) : super(key: key);

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          width: 900,
          decoration: BoxDecoration(
          border: Border.all(
            color: Colors.green,
            width: 4.0,
            style: BorderStyle.solid
          ),
          borderRadius: BorderRadius.circular(20),
        ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 120, 20, 15),
                child: Text("Caso Tenha alguma dúvida durante o uso do Aplicativo ou encontre algum problema, escreva aqui embaixo o seu comentário, que assim que possivel iremos lhe responder.",
                textAlign: TextAlign.justify, style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 30),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 150),
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: "Digite aqui a sua mensagem",
                    ),
                  ),
                ),
              ),
              Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(350, 45), 
                    primary: Color.fromARGB(255, 14, 174, 62),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                  onPressed: () {
                  },
                  child: const Text('ENVIAR', style: TextStyle(fontSize: 17),
                  ),
                ),
            ),
            ],
          ),
        ),
      )
    );
  }
}