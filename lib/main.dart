import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Widget> myList =
      List.generate(100, (index) => Text(index.toString()));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Belajar ListView'),
        ),
        body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate((context, index) => Text(
                "${index + 1}",
                style: TextStyle(fontSize: 20 + index.toDouble()),
              )),
        ),
      ),
    );
  }
}
