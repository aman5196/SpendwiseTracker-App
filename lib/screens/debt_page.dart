import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DebtPage extends StatelessWidget {

  int TotalDebt() {
    var number = 123456;
    return number;
  }

  int TotalBorrow() {
    var number = 69000;
    return number;
  }

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
                          "BDT ${TotalDebt()}",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                          //textAlign: TextAlign.center,
                        ),
                        //SizedBox(height: 10), // Add some spacing between the texts if needed
                        Text(
                          "Total Debt",
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
                                child: Text("Lent",
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
                                child: Text("BDT ${TotalDebt()} ",
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
                                child: Text("Borrow",
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
                                child: Text("BDT ${TotalBorrow()} ",
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
                          //color: Colors.transparent,
                          color: Colors.yellowAccent,
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
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(
                                50), // Adjust the border radius as needed
                          ),
                          child: Center(


                          ),
                        ),

                      ),

                       Container(
                         margin: const EdgeInsets.all(10),
                         height: 50,
                         color: Colors.cyan,
                      ),


                    ],
                  ),
                )
            )
          ]
      ),
    );
  }
}
