import 'package:contadorshared/widget/counter.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Preferences Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preferences Counter'),
      ),
      body: Counter(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Increment the counter
          setState(() {
            Counter.incrementCounter();
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
