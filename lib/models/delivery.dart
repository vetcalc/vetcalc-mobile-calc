class Dosage {
  final int dosage_id;
  final int method_id;

  Dosage(this.dosage_id, this.method_id);

  Dosage.fromJson(Map<String, dynamic> json)
      : dosage_id = json['dosage_id'],
        method_id = json['method_id'];
}
