import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  final String title;

  NewScreen(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(title, style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
