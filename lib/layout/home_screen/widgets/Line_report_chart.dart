import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineReportChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:2.2,
      child:LineChart(
          LineChartData(
              gridData:FlGridData(show:false),
              borderData:FlBorderData(show:false),
              titlesData:FlTitlesData(show:false),
              lineBarsData:[
                LineChartBarData(
                    isCurved:true,
                    spots:getSpot(),
                    dotData:FlDotData(show: false),
                  belowBarData: BarAreaData(show: false),
                ),
              ]
          )
      ),
    );
  }
  List<FlSpot> getSpot(){
    return [
      FlSpot(0,.5),
      FlSpot(1,1.5),
      FlSpot(2,.5),
      FlSpot(3,.7),
      FlSpot(4,.2),
      FlSpot(5,2),
      FlSpot(6,1.5),
      FlSpot(7,1.7),
      FlSpot(8,1),
      FlSpot(9,2.8),
      FlSpot(10,2.5),
      FlSpot(11,2.65),
    ];
  }
}
