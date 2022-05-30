import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);
  static final title = 'salomon_bottom_bar';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.only( bottomRight: Radius.circular(30))),
          centerTitle: true,
          flexibleSpace: 
            Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
              ),
            ),
          title: Text("Ong Alem Brasil"),
        ),),
            bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i){
            switch(i){
              case 0:
                Navigator.pushNamed(context, "/");
              break;
            } setState(() => _currentIndex = i); 
          },
          items: [
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Inicio"),
              selectedColor: Colors.red,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.assignment_rounded),
              title: Text("Cadastro"),
              selectedColor: Colors.blue,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.message),
              title: Text("Avisos"),
              selectedColor: Colors.orange,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Conta"),
              selectedColor: Colors.teal,
            ),
          ],
          
        ),
        );
  }
}

