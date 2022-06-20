import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ong_alem_brasil/FoodsPage.dart';
import 'package:ong_alem_brasil/FuncionarioPage.dart';
import 'package:ong_alem_brasil/PersonPage.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBody: true,
        appBar:  AppBar(
              centerTitle: true,
              title: Text("Ong Alem Brasil"),
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.green, Colors.lightGreen
                  ], begin: Alignment.bottomRight, end: Alignment.topLeft)
                ),
              ),
              bottom: TabBar(
                indicatorColor: Colors.white,
                tabs: [
                Tab(icon: Icon(Icons.person), text: "Pessoas",),
                Tab(icon: Icon(Icons.food_bank), text: "Cestas",),
                Tab(icon: Icon(Icons.person), text: "Funcionarios",),
              ]),
            ),
          body: PageView(
            children: [
              TabBarView(children: [
                PersonPage(),
                FoodsPage(),
                FuncionarioPage(),
              ])
            ],
          ),
          drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: ClipOval(
                  child: Image.asset('Perfil.png')
                  ),
                  accountName: Text('Mahki'), 
                  accountEmail: Text('Mahki@gmail.com'),
                  ),
                ListTile(
                leading: Icon(Icons.account_box_outlined),
                title: Text('Alterar Perfil'),
                onTap: () {
                  Navigator.of(context).pushNamed('/changeProfile');
                },
              ),
              ListTile(
                leading: Icon(Icons.announcement),
                title: Text('Ajuda'),
                onTap: () {
                  Navigator.of(context).pushNamed('/helpProfile');
                },
              ),
              ListTile(
                leading: Icon(Icons.backspace_outlined),
                title: Text('Sair'),
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil('/',(Route< dynamic > route) => false );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
