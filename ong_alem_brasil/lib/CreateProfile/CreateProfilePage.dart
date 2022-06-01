import 'package:flutter/cupertino.dart';

class CreateProfilePage extends StatefulWidget {
  const CreateProfilePage({ Key? key }) : super(key: key);

  @override
  State<CreateProfilePage> createState() => _CreateProfilePageState();
}

class _CreateProfilePageState extends State<CreateProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Criar conta")),
    );
  }
}