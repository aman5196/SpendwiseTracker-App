import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';


class Dashboard extends StatefulWidget {


  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  int TotalSpend() {
    var number = 10000;
    return number;
  }

  int TotalExpense() {
    var number = 69000;
    return number;
  }




  Map<String, double>datamap = {
    "RENT": 18.47,
    "GROCERY": 17.70,
    "FEES": 4.25,
    "MEDICINE": 30,
    "TRANSPORT": 6,
    "OTHER": 20
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // color: Colors.blue,

      body: Stack(
          children: [

            Column(


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
                          style: TextStyle(fontSize: 30, color: Colors.white),
                          //textAlign: TextAlign.center,
                        ),
                        //SizedBox(height: 10), // Add some spacing between the texts if needed
                        Text(
                          "Balance",
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white),
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
                  height: 645, // Adjust the height as needed
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        20), // Adjust the border radius as needed
                  ), // Set the color of the container

                  child: Column(
                    children: [


                      Container(
                        height: 50,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(
                              4), // Adjust the border radius as needed
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: Center(
                                child: Text("Total Spent",
                                  style: TextStyle(color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),),
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 150,
                              margin: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    4), // Adjust the border radius as needed
                              ),

                              child: Center(
                                child: Text("BDT ${TotalSpend()} ",
                                  style: TextStyle(
                                      color: Colors.lightBlueAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),),
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
                          borderRadius: BorderRadius.circular(
                              4), // Adjust the border radius as needed
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: Center(
                                child: Text("Total Expense",
                                  style: TextStyle(color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),),
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 150,
                              margin: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    4), // Adjust the border radius as needed
                              ),

                              child: Center(
                                child: Text("BDT ${TotalExpense()} ",
                                  style: TextStyle(
                                      color: Colors.lightBlueAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),),
                              ),
                            ),
                          ],
                        ),
                      ),


                      Container(
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(
                              50), // Adjust the border radius as needed
                        ),
                        child: Center(
                          child: Text("Expense Chart",
                            style: TextStyle(color: Colors.lightBlueAccent,
                              fontWeight: FontWeight.bold,),),
                        ),
                      ),


                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            //color: Colors.red,
                            borderRadius: BorderRadius.circular(
                                50), // Adjust the border radius as needed
                          ),
                          child: Center(
                              child: PieChart(
                                dataMap: datamap,
                                colorList: [
                                  Color(0xff8A2BE2),
                                  Color(0xFFFF4500),
                                  Color(0xFF32CD32),
                                  Color(0xFF4169E1),
                                  Color(0xFFFFD700),
                                ],
                                chartRadius: MediaQuery.of(context).size.width /1.6,
                                chartValuesOptions: ChartValuesOptions(
                                  showChartValuesOutside: true,
                                  showChartValuesInPercentage: true,
                                  showChartValueBackground: false,
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

                      /* Container(
                        height: 50,
                      ),*/


                    ],
                  ),
                )
            )
          ]
      ),
    );
  }
}
