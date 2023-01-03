import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Counter extends StatefulWidget {
  static int counter = 0;

  static void incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    counter = (prefs.getInt('counter') ?? 0) + 1;
    prefs.setInt('counter', counter);
  }

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  // Loading counter value on start
  _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      Counter.counter = (prefs.getInt('counter') ?? 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Persiste despues del reinicio',
          ),
          SizedBox(height: 20.0),
          Text(
            'boton presionado : ${Counter.counter} de veces',
          ),
        ],
      ),
    );
  }
}
