import 'package:flutter/material.dart';
import 'package:jeunes_pousses/screens/home.dart';
import 'package:jeunes_pousses/screens/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    MyHomeScreen(), //name of other screen
    Testingnav() //Checking Nav
  ];
  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.description), title: Text('News')),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.euro_symbol), title: Text('Safe')),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.check_circle_outline), title: Text('Objectifs')),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.credit_card), title: Text('Services')),
          BottomNavigationBarItem(
              icon: Icon(Icons.check_circle), title: Text('Testing')),
        ],
      ),
    );
  }
}
