import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _toggle = true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _toggleImage() {
    setState(() {
      _toggle = !_toggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter & Image Toggle App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Counter: $_counter',
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _incrementCounter,
            child: const Text('Increment Counter'),
          ),
          const SizedBox(height: 40),
          Image.asset(
            _toggle ? 'assets/image1.jpg' : 'assets/image2.jpg',
            width: 200,
            height: 200,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _toggleImage,
            child: const Text('Toggle Image'),
          ),
        ],
      ),
    );
  }
}
