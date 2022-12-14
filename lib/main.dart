import 'package:accessibility_sample/accessible_icon.dart';
import 'package:accessibility_sample/accessible_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AccessibleText(
          text: widget.title,
        ),
        excludeHeaderSemantics: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const AccessibleIcon(
              iconData: Icons.flutter_dash_rounded,
              descrip: "This is a picture of Dash, Flutter's logo",
              size: 100.0,
            ),
            const AccessibleText(
              text: 'You have pushed the button this many times:',
            ),
            AccessibleText(
              text: "$_counter",
              descrip: "$_counter times pressed",
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const AccessibleIcon(
          iconData: Icons.add,
          descrip: "Press this button to increment the previous counter",
          size: 50.0,
        ),
      ),
    );
  }
}
