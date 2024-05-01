import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class AnalysisPage extends StatefulWidget {

  @override
  State<AnalysisPage> createState() => _AnalysisPageState();
}

class _AnalysisPageState extends State<AnalysisPage> {
  late List<_ChartData> data;

  late TooltipBehavior _tooltip;

  void initState() {
    data = [
      _ChartData('CHN', 12),
      _ChartData('GER', 15),
      _ChartData('RUS', 30),
      _ChartData('BRZ', 6.4),
      _ChartData('IND', 14)
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

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
                      Container(
                        child: Center(
                          child:  Text(
                            " Select months to compare  ", // Change text here
                            style: TextStyle(color: Colors.lightBlue,fontSize: 20, ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.yellow,
                        height: 100,
                        child: Center(

                        ),
                      ),

                      Container(
                        child: Center(
                          child:  Text(
                            "Expense Comparison  ", // Change text here
                            style: TextStyle(color: Colors.lightBlue,fontSize: 20, ),
                          ),
                        ),
                      ),
                      Container(
                               margin: const EdgeInsets.all(10),
                               //color: Colors.red,
                               height: 480,
                        child: SfCartesianChart(
                            primaryXAxis: CategoryAxis(),
                            primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
                            tooltipBehavior: _tooltip,
                            series: <CartesianSeries<_ChartData, String>>[
                              ColumnSeries<_ChartData, String>(
                                  dataSource: data,
                                  xValueMapper: (_ChartData data, _) => data.x,
                                  yValueMapper: (_ChartData data, _) => data.y,
                                  name: 'Gold',
                                  color: Colors.purple,),
                            ]),
                      ),








                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 50,
                        //color: Colors.cyan,
                        child:Center(
                          child: ElevatedButton(

                            child: Text("Generate report".toUpperCase(),style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,),),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightBlueAccent,
                              elevation: 5,
                            ),
                            onPressed: () {},
                          ),
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
class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}