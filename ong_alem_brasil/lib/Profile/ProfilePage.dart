import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 60),
            child: Center(
              child: SizedBox(
                child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 4.0,
                      style: BorderStyle.solid
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(90),
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Container(
                    width: 800,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Container(
                        width: MediaQuery.of(context).size.height,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(14.0),
                                          child: Icon(Icons.account_box, size: 100,),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text("Nome")
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text("Email@email.com")
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(350, 45), 
                                  primary: Color.fromARGB(255, 14, 174, 62),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('/changeProfile');
                                  }, 
                                child: Text("ALTERAR PERFIL", style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(350, 45), 
                                  primary: Color.fromARGB(255, 14, 174, 62),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/cp');
                                }, 
                                child: Text("AJUDA", style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 7.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(350, 45), 
                                  primary: Color.fromARGB(255, 14, 174, 62),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pushNamedAndRemoveUntil('/',(Route< dynamic > route) => false );
                                }, 
                                child: Text("SAIR", style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ) 
        ),
    );
  }
}






