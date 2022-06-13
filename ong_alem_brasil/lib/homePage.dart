import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ong_alem_brasil/Change/ChangePage.dart';
import 'package:ong_alem_brasil/Profile/ProfilePage.dart';
import 'package:ong_alem_brasil/Query/QueryPage.dart';
import 'package:ong_alem_brasil/Register/RegisterPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageNow = 0;
  List<Widget> _pages = [
    QueryPage(),
    RegisterPage(),
    ChangePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
          child: AppBar(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only( bottomRight: Radius.circular(30),
              ),
            ),
            centerTitle: true,
              leading: Padding(
                padding: EdgeInsets.only(right: 10.0),
                ),
            flexibleSpace: 
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                  ),
                ),
              ),
            title: Text("Ong Alem Brasil"),
          ),
        ),
        body: PageView(
          children: [
            _pages[pageNow],
          ],
        ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index){
                setState(() { pageNow = index;}); 
              }, 
            currentIndex: pageNow,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.content_paste_search_outlined),
                backgroundColor: Colors.green,
                label: "CONSULTA"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.assignment_rounded),
                  backgroundColor: Colors.green,
                  label: "CADASTRO"
                ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.app_registration),
                  backgroundColor: Colors.green,
                  label: "ALTERAR"
                ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  backgroundColor: Colors.green,
                  label: "PERFIL"
                ),
            ]
          ),
    );
  }
}

