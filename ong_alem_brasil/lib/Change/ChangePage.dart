import 'package:flutter/cupertino.dart';

class ChangePage extends StatefulWidget {
  const ChangePage({ Key? key }) : super(key: key);

  @override
  State<ChangePage> createState() => _ChangePageState();
}

class _ChangePageState extends State<ChangePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Alterar")),
    );
  }
}