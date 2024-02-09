import 'package:flutter/material.dart';


class BluePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Blue Page')),
      body: Container(color: Colors.blue),
    );
  }
}