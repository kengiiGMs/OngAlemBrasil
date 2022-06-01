import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ong_alem_brasil/Home/HomesPage.dart';
import 'package:ong_alem_brasil/News/NewsPage.dart';
import 'package:ong_alem_brasil/Profile/ProfilePage.dart';
import 'package:ong_alem_brasil/Register/RegisterPage.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);
  static final title = 'salomon_bottom_bar';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageNow = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: pageNow);
  }
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

        body: PageView(
          controller: pc,
          children: [
            HomesPage(),
            RegisterPage(),
            NewsPage(),
            ProfilePage(),
          ],
        ),
            bottomNavigationBar: SalomonBottomBar(
          currentIndex: pageNow,
          
          onTap: (i){
            pc.animateToPage(
              i,
              duration: Duration(milliseconds: 400),
              curve: Curves.ease,
            );
           setState(() => pageNow = i); 
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




