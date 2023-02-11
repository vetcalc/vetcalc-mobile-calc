import 'package:flutter/material.dart';
import 'package:vet_app/lib.dart';

class DrugScreen extends StatefulWidget {
  const DrugScreen({super.key, required this.title});

  final String title;

  @override
  State<DrugScreen> createState() => _DrugScreenState();
}

class _DrugScreenState extends State<DrugScreen> {
  final List<Drug> drugs = [
    Drug(1, 'Acepromazine'),
    Drug(2, 'Alfaxalone'),
    Drug(3, 'Atropine'),
    Drug(4, 'Azaperone'),
    Drug(5, 'Buprenorphine')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: drugs.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text(drugs[index].name));
            }));
  }
}
