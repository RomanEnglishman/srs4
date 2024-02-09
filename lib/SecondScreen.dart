import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to the second screen!'),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Pop'),
            ),
          ],
        ),
      ),
    );
  }
}