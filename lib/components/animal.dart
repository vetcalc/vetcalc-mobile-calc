import 'package:vet_app/lib.dart';

class Animal {
  final int id;
  final String name;
  final int temperature;
  final int heartRate;
  final int breathRate;
  List<Drug> druglist = [];

  Animal(this.id, this.name, this.temperature, this.heartRate, this.breathRate,
      this.druglist);

  Animal.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        temperature = json['temperature'],
        heartRate = json['heart_rate'],
        breathRate = json['breath_rate'],
        druglist = json['druglist'];
}
