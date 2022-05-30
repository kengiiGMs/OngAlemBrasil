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
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Inicio"),
              selectedColor: Colors.purple,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text("Cadastro"),
              selectedColor: Colors.pink,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("Avisos"),
              selectedColor: Colors.orange,
            ),

            /// Profile
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
