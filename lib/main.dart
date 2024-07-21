import 'package:flutter/material.dart';
import 'bar_chart_sample.dart';
import 'line_chart_sample.dart';
import 'pie_chart_sample.dart';

void main() {
  runApp(ChartsApp());
}

class ChartsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Charts App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChartsHomePage(),
    );
  }
}

class ChartsHomePage extends StatefulWidget {
  @override
  _ChartsHomePageState createState() => _ChartsHomePageState();
}

class _ChartsHomePageState extends State<ChartsHomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    BarChartSample(),
    LineChartSample(),
    PieChartSample(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Charts App'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Bar Chart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            label: 'Line Chart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'Pie Chart',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
