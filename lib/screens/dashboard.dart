import 'package:flutter/material.dart';

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
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Home".toUpperCase(),
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_active),
            onPressed: () {},
          ),
        ],
      ),





      body: Stack(
        children:[ Column(


          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.blue,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hello ${TotalSpend()}",
                      //textAlign: TextAlign.center,
                    ),
                    //SizedBox(height: 10), // Add some spacing between the texts if needed
                    Text(
                      "Hello ${TotalSpend()}",
                      //textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),


            Expanded(
                flex: 6,
                child: Container(
                   color: Colors.deepOrangeAccent,
                  //child: Text( "Hello ${TotalSpend()}",
                  //textAlign: TextAlign.center,),
              )
            ),
          ],
        ),
            Positioned(
              top: 100, // Adjust the position as needed
              left: 20, // Adjust the position as needed
              right: 20, // Adjust the position as needed
             child: Container(
                   height: 500, // Adjust the height as needed
                   color: Colors.green, // Set the color of the container
                child: Center(
                    child: Text("Additional Container",
                           style: TextStyle(color: Colors.white),),
                ),
             )
            )
      ]
      ),
    );
  }
}

int TotalSpend() {
  var number = 10000;
  return number;
}

int TotalExpense() {
  var number = 69000;
  return number;
}
