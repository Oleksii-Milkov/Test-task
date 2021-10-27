import 'package:flutter/material.dart';
import 'package:test_task/output_page.dart';

class InputForm extends StatefulWidget {
  const InputForm({Key? key}) : super(key: key);

  @override
  InputFormState createState() {
    return InputFormState();
  }
}

class InputFormState extends State<InputForm> {
  final _formKey = GlobalKey<FormState>();

  final _firstName = TextEditingController();
  final _lastName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter your first name"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Not valid";
              }
              return null;
            },
            controller: _firstName,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 0),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter your last name"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Not valid";
                }
                return null;
              },
              controller: _lastName,
            ),
          ),
          Row(
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return OutputPage(
                            fullName: _firstName.text + " " + _lastName.text);
                      }),
                    );
                  }
                },
                child: const Text("Submit"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
