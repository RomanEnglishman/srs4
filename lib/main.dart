import 'package:flutter/material.dart';
import 'RedPage.dart';
import 'YellowPage.dart';
import 'package:srs_4/BluePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Navigation Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RedPage()),
              ),
              child: Text('Red Page'),
            ),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellow)),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => YellowPage()),
              ),
              child: Text('Yellow Page'),
            ),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BluePage()),
              ),
              child: Text('Blue Page'),
            ),
          ],
        ),
      ),
    );
  }
}