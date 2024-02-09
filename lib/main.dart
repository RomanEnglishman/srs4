import 'package:flutter/material.dart';
import 'SecondScreen.dart'; // Убедитесь, что вы создали SecondScreen.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главный экран'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => navigateToSecondScreen(context, Colors.red),
              child: Text('Красная'),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
            ElevatedButton(
              onPressed: () => navigateToSecondScreen(context, Colors.yellow),
              child: Text('Желтая'),
              style: ElevatedButton.styleFrom(primary: Colors.yellow),
            ),
            ElevatedButton(
              onPressed: () => navigateToSecondScreen(context, Colors.blue),
              child: Text('Синяя'),
              style: ElevatedButton.styleFrom(primary: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToSecondScreen(BuildContext context, Color color) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondScreen(color: color)),
    );
  }
}
