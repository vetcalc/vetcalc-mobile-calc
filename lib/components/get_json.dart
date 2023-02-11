import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

Future<Map<String, dynamic>> getJson(String assetPath) async {
  print('-------Parse json from: $assetPath');
  return rootBundle
      .loadString(assetPath)
      .then((jsonStr) => jsonDecode(jsonStr));
}

// var animalFile = getJson();
// String dataString = animalFile.cast();
// // var animalFile = OpenFile.open("/mock_animals.json");
// Map<String, dynamic> animalMap = jsonDecode(animalFile);
// var animalList = Animals.fromJson(animalMap);
