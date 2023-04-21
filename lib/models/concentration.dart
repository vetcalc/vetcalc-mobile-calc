import 'package:flutter/material.dart';
import 'package:vet_app/lib.dart';

class Concentration {
  final int concentration_id;
  final value;
  final Unit? unit;
  final int dosage_id;

  Concentration(
      {required this.concentration_id,
      required this.value,
      required this.unit,
      required this.dosage_id});

  factory Concentration.fromJson(Map<String, dynamic> json) {
    return Concentration(
        concentration_id: int.parse(json['concentration_id']),
        value: (json['value']),
        unit: Unit.fromJson(json['unit']),
        dosage_id: int.parse(json['dosage_id']));
  }
}
