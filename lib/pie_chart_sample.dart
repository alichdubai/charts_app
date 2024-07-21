import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(value: 40, color: Colors.blue, title: '40%'),
          PieChartSectionData(value: 30, color: Colors.red, title: '30%'),
          PieChartSectionData(value: 15, color: Colors.green, title: '15%'),
          PieChartSectionData(value: 15, color: Colors.yellow, title: '15%'),
        ],
      ),
    );
  }
}
