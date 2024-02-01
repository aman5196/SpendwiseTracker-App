import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:spendwise_tracker_app/screens/analysis_page.dart';
import 'package:spendwise_tracker_app/screens/debt_page.dart';
import 'package:spendwise_tracker_app/screens/expense_page.dart';
import 'package:spendwise_tracker_app/screens/homepage.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
 /* List pages=[
    Homepage(),
    DebtPage(),
    ExpensePage(),
    AnalysisPage()

  ];
  int currentIndex=0;
  void onTap(int index){

    setState(() {
      currentIndex=index;
    });

  }
*/

  Map<String ,double>datamap={
    "RENT":18.47,
    "GROCERY":17.70,
    "FEES":4.25,
    "MEDICINE":5,
    "TRANSPORT":6,
    "OTHER":20
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Home".toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
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





      body: //pages[0],


      Stack(
        children:[ Column(


          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "BDT ${TotalSpend()}",
                      style: TextStyle(fontSize: 30),
                      //textAlign: TextAlign.center,
                    ),
                    //SizedBox(height: 10), // Add some spacing between the texts if needed
                    Text(
                      "Hello ${TotalSpend()}",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                      //textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),


            Expanded(
                flex: 6,
                child: Container(
                   color: Colors.grey,
                  //child: Text( "Hello ${TotalSpend()}",
                  //textAlign: TextAlign.center,),
              )
            ),
          ],
        ),
            Positioned(
              top: 100, // Adjust the position as needed
              left: 15, // Adjust the position as needed
              right: 15, // Adjust the position as needed
             child: Container(
                   height: 600, // Adjust the height as needed
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(20), // Adjust the border radius as needed
               ), // Set the color of the container

                child: Column(
                  children: [


                    Container(
                      height: 50,
                      margin: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(4), // Adjust the border radius as needed
                      ),
                      child: Row(
                        children: [
                          Center(
                              child: Text("Total Spent",
                                     style: TextStyle(color: Colors.white),),
                          ),
                          Spacer(),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4), // Adjust the border radius as needed
                            ),

                            child: Center(
                              child: Text("BDT 2000 ",
                                style: TextStyle(color: Colors.blue),),
                            ),
                          ),
                        ],
                      ),
                    ),



                    Container(
                      height: 50,
                      margin: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(4), // Adjust the border radius as needed
                      ),
                      child: Row(
                        children: [
                          Center(
                            child: Text("Total Spent",
                              style: TextStyle(color: Colors.white),),
                          ),
                          Spacer(),
                          Container(
                            margin: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4), // Adjust the border radius as needed
                            ),

                            child: Center(
                              child: Text("BDT 2000 ",
                                style: TextStyle(color: Colors.blue),),
                            ),
                          ),
                        ],
                      ),
                    ),


                    Container(
                      margin: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(50), // Adjust the border radius as needed
                      ),
                      child: Center(
                        child: Text("Expense Chart",
                          style: TextStyle(color: Colors.blueAccent),),
                      ),
                    ),




                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          //color: Colors.red,
                          borderRadius: BorderRadius.circular(50), // Adjust the border radius as needed
                        ),
                        child: Center(
                          child:PieChart(
                            dataMap: datamap,
                            colorList: [
                              Color(0xff8A2BE2),
                              Color(0xFFFF4500),
                              Color(0xFF32CD32),
                              Color(0xFF4169E1),
                              Color(0xFFFFD700),
                            ],
                            chartRadius: MediaQuery.of(context).size.width/2,
                            chartValuesOptions: ChartValuesOptions(
                              showChartValuesOutside: true,
                              showChartValuesInPercentage:true,
                              showChartValueBackground:false,
                            ),
                            legendOptions: LegendOptions(
                              legendShape: BoxShape.rectangle,
                              legendPosition: LegendPosition.bottom,
                              showLegendsInRow: true,
                            ),
                          )
                      
                        ),
                      ),
                    ),



                  ],
                ),
             )
            )
      ]
      ),




      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.blue,

        //onTap: onTap,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money_rounded),label: 'Debt'),


          BottomNavigationBarItem(icon: Icon(Icons.auto_graph),label:'expense'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart),label:'analysis'),

        ],
      ) ,

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
