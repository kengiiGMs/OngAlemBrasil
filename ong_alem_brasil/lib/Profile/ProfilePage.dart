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
    return Center(
      child: SizedBox(
        child: Container(
          width: 900,
          margin: EdgeInsets.fromLTRB(40, 20, 40, 60),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
                width: 4.0,
                style: BorderStyle.solid),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(90),
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                  child: Column(
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
                                    child: Image(image: AssetImage("Perfil.png"),width: 140,),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(350, 40), 
                                  primary: Color.fromARGB(255, 14, 174, 62),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))
                                ),
                              onPressed: () {},
                              child: const Text('ALTERAR PERFIL',style: TextStyle(fontSize: 15),),
                              ),
                            ),
                          ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 15),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(350, 40), 
                                  primary: Color.fromARGB(255, 14, 174, 62),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))
                                ),
                              onPressed: () {},
                              child: const Text('CONFIGURAÇÕES',style: TextStyle(fontSize: 15),),
                              ),
                            ),
                          ],
                      ),
                    ],
                ),
          )
      ),
    );
  }
}


