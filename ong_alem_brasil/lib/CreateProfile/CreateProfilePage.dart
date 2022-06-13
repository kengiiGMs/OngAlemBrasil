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
      body: Center(child: FormsProfile(),),
    );
  }
}

class FormsProfile extends StatefulWidget {
  const FormsProfile({ Key? key }) : super(key: key);

  @override
  State<FormsProfile> createState() => _FormsProfileState();
}

class _FormsProfileState extends State<FormsProfile> {
  final _formKey2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Form(
          key: _formKey2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
                Center(
                  child: Text("Criação de Conta", 
                    style: TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold,),
                  ),
                ), 
              Container(
                margin: EdgeInsets.fromLTRB(55, 12, 55, 0),
                child: Center(
                  child: Text("Criar a sua Conta",
                    textAlign: TextAlign.justify, style: TextStyle(fontSize: 15),),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30,7,30,7),
                child: TextFormField(
                  decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Nome',
                  hintText: "Digite o Nome",
                ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Digite o seu Nome';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30,7,30,7),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Sobrenome',
                    hintText: "Digite o seu sobrenome",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Digite o seu Sobrenome';
                    }
                      return null;
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30,7,30,7),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Email',
                    hintText: "Digite o seu Email",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Digite o seu Email';
                    }
                      return null;
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30,7,30,7),
                child: TextFormField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Senha',
                    hintText: "Digite a sua Senha",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Digite a sua Senha';
                    }
                      return null;
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30,7,30,17),
                child: TextFormField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Confirme a sua Senha',
                    hintText: "Digite a sua Senha",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Confirme a sua Senha';
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
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                  onPressed: () {
                    if (_formKey2.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data'),
                        ),
                      );
                    }
                  },
                  child: const Text('ENVIAR',style: TextStyle(fontSize: 17),),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}







