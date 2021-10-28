import 'package:flutter/material.dart';
import 'package:test_task/input/input_form.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input page"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: InputForm(),
      ),
    );
  }
}
