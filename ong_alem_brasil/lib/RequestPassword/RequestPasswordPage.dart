import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RequestPasswordPage extends StatefulWidget {
  const RequestPasswordPage({ Key? key }) : super(key: key);
  @override
  State<RequestPasswordPage> createState() => _RequestPasswordPageState();
}
class _RequestPasswordPageState extends State<RequestPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: 
        Center(child: FormsPassword()),
    );
  }
}
class FormsPassword extends StatefulWidget {
  const FormsPassword({ Key? key }) : super(key: key);
  @override
  State<FormsPassword> createState() => _FormsPasswordState();
}

class _FormsPasswordState extends State<FormsPassword> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,
          ),
          Center(
            child: Text("Recuperação de Senha", 
              style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold,
              ),
            ),
          ), 
          Container(
            margin: EdgeInsets.fromLTRB(55, 12, 55, 0),
            child: Center(
              child: Text("Para redefinir a sua senha, informe o seu e-mail cadastrado, para assim enviarmos um link com as instruções",
                textAlign: TextAlign.justify, style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30,20,30,20),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Email',
                hintText: "Digite o seu email",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Digite aqui o seu Email';
                }
                return null;
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(350, 45), 
                primary: Color.fromARGB(255, 14, 174, 62),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('ENVIAR',style: TextStyle(fontSize: 17),),
            ),
          ),
        ],
      ),
    );
  }
}



