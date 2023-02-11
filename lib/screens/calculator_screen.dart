import 'package:flutter/material.dart';
import 'package:vet_app/lib.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  List<String> selectedItemValue = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: const [
        Flexible(child: Text("Species")),
        Flexible(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: AnimalDropdownButton(),
          ),
        ),
        Flexible(child: Text("Medication")),
        Flexible(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: DrugDropdownButton(),
          ),
        ),
        Flexible(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter the animal's weight in kg"),
            ),
          ),
        )
      ]),
    );
  }
}
