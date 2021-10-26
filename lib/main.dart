import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test-task"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: const Text('Input'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Output'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: const Center(),
    );
  }
}

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class OutputPage extends StatefulWidget {
  const OutputPage({Key? key}) : super(key: key);

  @override
  State<OutputPage> createState() {
    return _OutputPageState();
  }
}

class _OutputPageState extends State<OutputPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
