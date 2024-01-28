import'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title:  Text("Home".toUpperCase(),textAlign: TextAlign.center,),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){},
        ),
        actions: [
         IconButton(
          icon: Icon(Icons.notifications_active),
           onPressed: () {},
         ),


        ],
      ),



      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello ${TotalSpend()}",
              textAlign: TextAlign.center,
            ),
            Text(
              "Hello ${TotalExpense()}",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}



int TotalSpend(){
  var number = 10000;
  return number;
}
int TotalExpense(){
  var number = 69000;
  return number;
}