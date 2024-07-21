import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barGroups: [
          BarChartGroupData(
            x: 1,
            barRods: [
              BarChartRodData(toY: 8, color: Colors.lightBlueAccent),
              BarChartRodData(toY: 10, color: Colors.lightBlueAccent),
              BarChartRodData(toY: 14, color: Colors.lightBlueAccent),
            ],
          ),
        ],
      ),
    );
  }
}
