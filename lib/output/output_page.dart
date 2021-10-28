import 'package:flutter/material.dart';

class OutputPage extends StatelessWidget {
  const OutputPage({Key? key, required this.fullName}) : super(key: key);

  final String fullName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Output page"),
      ),
      body: Center(
        child: Text(fullName),
      ),
    );
  }
}