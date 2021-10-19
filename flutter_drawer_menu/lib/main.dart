import 'package:drawer_menu/settings.dart';
import 'package:flutter/material.dart';
import 'package:drawer_menu/mainDrawer.dart';

void main() => runApp(
      MaterialApp(
        //home: HomeScreen(),
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/settings': (context) => Settings(),
        },
      ),
    );

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[500],
      ),
      drawer: MainDrawer(),
    );
  }
}
