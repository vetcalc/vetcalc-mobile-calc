import 'package:flutter/material.dart';
import 'package:vet_app/lib.dart';

List<Animal> speciesList = [
  Animal(1, 'Dog', 99, 120, 90, []),
  Animal(2, 'Cat', 98, 120, 100, []),
  Animal(3, 'Equine', 100, 110, 90, []),
  Animal(4, 'Sheep/Goat', 99, 95, 85, []),
  Animal(5, 'Swine', 97, 122, 110, []),
  Animal(6, 'Cattle', 96, 75, 60, []),
  Animal(7, 'Camelid', 101, 60, 50, []),
];

class AnimalDropdownButton extends StatefulWidget {
  const AnimalDropdownButton({super.key});

  @override
  State<AnimalDropdownButton> createState() => _AnimalDropdownButtonState();
}

class _AnimalDropdownButtonState extends State<AnimalDropdownButton> {
  Animal? dropdownValue = speciesList.first;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1.0, style: BorderStyle.solid, color: Colors.indigo),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 0.0),
        child: DropdownButton<Animal>(
          value: dropdownValue,
          icon: const Icon(Icons.keyboard_arrow_down),
          elevation: 0,
          isExpanded: true,
          hint: Text("Select an Animal"),
          onChanged: (Animal? value) {
            setState(() {
              dropdownValue = value;
            });
          },
          items: speciesList.map<DropdownMenuItem<Animal>>((Animal value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value.name),
            );
          }).toList(),
        ),
      ),
    );
  }
}
