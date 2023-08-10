
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyListView(),
    );
  }
}

class MyListView extends StatelessWidget {
  final List<int> numbers = List.generate(100, (index) => index + 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.builder Example'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Number ${numbers[index]}'),
          );
        },
      ),
    );
  }
}
