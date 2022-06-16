import 'package:flutter/material.dart';
import 'package:ong_alem_brasil/CreateProfile/CreateProfilePage.dart';
import 'package:ong_alem_brasil/Login/login.dart';
import 'package:ong_alem_brasil/QueryPages/QuerryFunc.dart';
import 'package:ong_alem_brasil/QueryPages/QuerryPerson.dart';
import 'package:ong_alem_brasil/RegisterPages/RegisterFoodsPage.dart';
import 'package:ong_alem_brasil/RegisterPages/RegisterPersonPage.dart';
import 'ProfilePages/HelpPage.dart';
import 'ProfilePages/ChangeProfilePage.dart';
import 'QueryPages/QuerryFoods.dart';
import 'RegisterPages/RegisterFuncPage.dart';
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
        '/requestPassword':(context) => RequestPasswordPage(),
        '/createProfile':(context) => CreateProfilePage(),
        '/helpProfile':(context) => HelpPage(),
        '/changeProfile':(context) => ChangeProfilePage(),
        '/querryPerson':(context) => QuerryPerson(),
        '/querryFood':(context) => QuerryFoods(),
        '/querryFunc':(context) => QuerryFunc(),
        '/registerPerson':(context) => RegisterPersonPage(),
        '/registerFood':(context) => RegisterFoodPage(),
        '/registerFunc':(context) => RegisterFuncPage(),
      },
    );
  }
}

