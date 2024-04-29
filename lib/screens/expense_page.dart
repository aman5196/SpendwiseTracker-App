import 'package:flutter/material.dart';

class ExpensePage extends StatelessWidget {

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
      // color: Colors.red,

      body: Stack(
          children: [

            Column(


              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.blue,

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
                top: 15, // Adjust the position as needed
                left: 15, // Adjust the position as needed
                right: 15, // Adjust the position as needed
                child: Container(
                  height: 730, // Adjust the height as needed
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        20), // Adjust the border radius as needed
                  ), // Set the color of the container

                  child: Column(
                    children: [
                      Container(
                        child: Center(
                          child:  Text(
                            " TODAY ", // Change text here
                            style: TextStyle(color: Colors.lightBlue,fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child:  Text(
                            " Amount", // Change text here
                            style: TextStyle(color: Colors.grey,fontSize: 18),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        //color: Colors.red,
                        height: 200,
                        child: ListView(
                          children: [
                            ListTile(
                              leading: Icon(Icons.medical_services),
                             textColor: Colors.lightBlue,
                              title: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:[ 
                                    Text('Map'),
                                    Text('1000')
                                  ]
                              ),),
                            ListTile(
                              leading: Icon(Icons.photo_album),
                              title: Text('Album'),
                            ),
                            ListTile(
                              leading: Icon(Icons.phone),
                              title: Text('Phone'),
                            ),
                          ],
                        ),

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
