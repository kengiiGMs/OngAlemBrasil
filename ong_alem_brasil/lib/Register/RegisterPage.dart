import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ong_alem_brasil/Register/RegisterPages/RegisterBillPage.dart';
import 'package:ong_alem_brasil/Register/RegisterPages/RegisterFoodsPage.dart';
import 'package:ong_alem_brasil/Register/RegisterPages/RegisterPersonPage.dart';
import 'package:ong_alem_brasil/homePage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> 
with SingleTickerProviderStateMixin {

  @override
  void initState(){
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  late TabController tabController;
   @override
  void dispose(){
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
     return SingleChildScrollView(
      child: Container(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    child: Container(
                      width: 112,
                        margin: EdgeInsets.fromLTRB(20, 20, 20, 15),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.green,
                              width: 3.0,
                              style: BorderStyle.solid
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)
                            ),
                          ),
                        child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Administrador"),
                        ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.all(5),
                              child: TabBar(
                                unselectedLabelColor: Colors.white,
                                labelColor: Colors.green,
                                indicatorColor: Colors.white,
                                indicatorWeight: 3,
                                indicator: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                controller: tabController,
                                  tabs: [
                                    Tab(
                                      text: "Pessoas",
                                    ),
                                    Tab(
                                      text: "Cestas",
                                    ),
                                    Tab(
                                      text: "Contas",
                                    ),
                                  ],
                              ),
                            ),
                          ],
                        ),
                      ),
                        Expanded( 
                          child: TabBarView(
                            controller: tabController,
                            children: [
                              RegisterPersonPage(),
                              RegisterFoodPage(),
                              RegisterBillPage()
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


