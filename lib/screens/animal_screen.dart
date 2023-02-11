import 'package:flutter/material.dart';
import 'package:open_file_plus/open_file_plus.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:io';
import 'dart:convert';
import 'package:vet_app/lib.dart';
import 'animal_details_screen.dart';

class AnimalScreen extends StatefulWidget {
  const AnimalScreen({super.key, required this.title});

  final String title;

  @override
  State<AnimalScreen> createState() => _AnimalScreenState();
}

class _AnimalScreenState extends State<AnimalScreen> {
  final List<Animal> animals = [
    Animal(1, 'Dog', 99, 120, 90, []),
    Animal(2, 'Cat', 98, 120, 100, []),
    Animal(3, 'Equine', 100, 110, 90, []),
    Animal(4, 'Sheep/Goat', 99, 95, 85, []),
    Animal(5, 'Swine', 97, 122, 110, []),
    Animal(6, 'Cattle', 96, 75, 60, []),
    Animal(7, 'Camelid', 101, 60, 50, []),
  ];

  var animalData = {
    {
      "id": 1,
      "name": "Dog",
      "temperature": "99",
      "heart_rate": "120",
      "respiratory_rate": 90
    },
    {
      "id": 2,
      "name": "Cat",
      "temperature": 98,
      "heart_rate": 120,
      "respiratory_rate": 100
    },
    {
      "id": 3,
      "name": "Equine",
      "temperature": 100,
      "heart_rate": 110,
      "respiratory_rate": 90
    },
    {
      "id": 4,
      "name": "Sheep/Goat",
      "temperature": 99,
      "heart_rate": 95,
      "respiratory_rate": 85
    },
    {
      "id": 5,
      "name": "Swine",
      "temperature": 97,
      "heart_rate": 122,
      "respiratory_rate": 110
    },
    {
      "id": 6,
      "name": "Cattle",
      "temperature": 96,
      "heart_rate": 75,
      "respiratory_rate": 60
    },
    {
      "id": 7,
      "name": "Camelid",
      "temperature": 101,
      "heart_rate": 60,
      "respiratory_rate": 50
    }
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: animals.length,
          itemBuilder: (context, index) {
            return ListTile(
                title: Text(animals[index].name),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              AnimalDetailsScreen(animal: animals[index])));
                });
          }),
    );
  }
}
