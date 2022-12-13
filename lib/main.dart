import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Semantics(
      value: "Welcome to the accessible counter app in Flutter",
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
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
              semanticLabel: "This image depicts the Flutter logo, Dash!",
            ),
            const Text(
              'You have pushed the button this many times:',
              semanticsLabel: "This text shows the number of times you've pressed the button",
            ),
            Text(
              '$_counter',
              semanticsLabel: "You've pressed $_counter times",
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Semantics(
            value: "Hey...",
            child: const Icon(Icons.add, semanticLabel: "press this button if you want to increment the former value")),
      ),
    );
  }
}
