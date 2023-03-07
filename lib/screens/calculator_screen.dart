import 'package:flutter/material.dart';
import 'package:open_file_plus/open_file_plus.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:io';
import 'dart:convert';
import 'package:vet_app/lib.dart';
import 'animal_details_screen.dart';
import 'package:http/http.dart' as http;

class CalculatorScreen extends StatefulWidget {
  // final DrugList drugList;
  // final AnimalList animalList;
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  List<String> selectedItemValue = [];

  List<Animal> animals = [];
  var animalList = AnimalList(entries: []);

  List<Drug> drugs = [];
  var drugList = DrugList(entries: []);

  @override
  void initState() {
    super.initState();
    retrieveAnimalData();
    retrieveDrugData();
  }

  void retrieveAnimalData() async {
    final http.Response apiResponse =
        await http.get(Uri.parse(AnimalScreen.URL));
    animalList = AnimalList.fromJson(jsonDecode(apiResponse.body));
    // print('API Response' + apiResponse.body);
    // print('AnimalList object: ' + animals.toString());
    setState(() {});
  }

  void retrieveDrugData() async {
    final http.Response apiResponse = await http.get(Uri.parse(DrugScreen.URL));
    drugList = DrugList.fromJson(jsonDecode(apiResponse.body));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Flexible(child: Text("Species")),
        Flexible(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: AnimalDropdownButton(
              animalList: animalList,
            ),
          ),
        ),
        Flexible(child: Text("Medication")),
        Flexible(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: DrugDropdownButton(
              drugList: drugList,
            ),
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
