import 'animal.dart';

class Animals {
  List<Animal> animals;

  Animals({this.animals = const []});

  Animals.fromJson(Map<String, dynamic> json)
      : animals = (json['Animals'] as List<dynamic>)
            .map((animal) => Animal.fromJson(animal))
            .toList();
}
