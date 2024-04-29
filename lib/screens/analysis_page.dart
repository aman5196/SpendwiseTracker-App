import 'package:flutter/material.dart';

class AnalysisPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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




                    ],
                  ),
                )
            )
          ]
      ),
    );
  }
}
