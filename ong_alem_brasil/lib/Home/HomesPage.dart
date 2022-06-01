import 'package:flutter/cupertino.dart';

class HomesPage extends StatefulWidget {
  const HomesPage({ Key? key }) : super(key: key);

  @override
  State<HomesPage> createState() => _HomesPageState();
}

class _HomesPageState extends State<HomesPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Inicio")),
    );
  }
}