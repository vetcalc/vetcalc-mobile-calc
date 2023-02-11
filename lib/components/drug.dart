class Drug {
  final int id;
  final String name;

  Drug(this.id, this.name);

  Drug.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'];
}
