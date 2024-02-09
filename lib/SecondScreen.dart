import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final Color color;

  const SecondScreen({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Второй экран'),
      ),
      body: Container(
        color: color,
        child: Center(
          child: Text('Цвет фона изменен', style: TextStyle(fontSize: 24, color: Colors.white)),
        ),
      ),
    );
  }
}
