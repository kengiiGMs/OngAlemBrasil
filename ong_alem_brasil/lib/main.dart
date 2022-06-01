import 'package:flutter/material.dart';
import 'package:ong_alem_brasil/Login/login.dart';
import 'package:ong_alem_brasil/Profile/ProfilePage.dart';

import 'Home/HomesPage.dart';
import 'News/NewsPage.dart';
import 'Register/RegisterPage.dart';
import 'homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ong Alem Brasil',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
         '/home': (context) => HomePage(),
         '/profile':(context) => ProfilePage(),
         '/profile':(context) => ProfilePage(),
         '/register':(context) => RegisterPage(),
         '/news':(context) => NewsPage(),
         '/homes':(context) => HomesPage(),
         },
    );
  }
}

