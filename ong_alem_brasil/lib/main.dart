import 'package:flutter/material.dart';
import 'package:ong_alem_brasil/CreateProfile/CreateProfilePage.dart';
import 'package:ong_alem_brasil/Login/login.dart';
import 'package:ong_alem_brasil/Profile/ProfilePage.dart';

import 'Change/ChangePage.dart';
import 'Query/QueryPage.dart';
import 'Register/RegisterPage.dart';
import 'RequestPassword/RequestPasswordPage.dart';
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
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/profile':(context) => ProfilePage(),
        '/register':(context) => RegisterPage(),
        '/query':(context) => QueryPage(),
        '/change':(context) => ChangePage(),
        '/requestPassword':(context) => RequestPasswordPage(),
        '/createProfile':(context) => CreateProfilePage(),
        },
    );
  }
}

