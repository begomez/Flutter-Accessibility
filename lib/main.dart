import 'package:accessibility_sample/utils.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyAccessibleApp());
}

class MyAccessibleApp extends StatelessWidget {
  const MyAccessibleApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    ).semantics(descrip: "Welcome to the accessible counter app in Flutter");
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
        title: Text(
          widget.title,
          semanticsLabel: widget.title,
        ),
        excludeHeaderSemantics: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.flutter_dash_rounded,
              size: 100,
            ).semantics(descrip: "This image depicts the Flutter logo, Dash!"),
            const Text(
              'You have pushed the button this many times:',
            ).semantics(descrip: "This text shows the number of times you've pressed the button"),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ).semantics(descrip: "You've pressed $_counter times"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add).semantics(descrip: "press this button if you want to increment the former value"),
      ),
    );
  }
}
