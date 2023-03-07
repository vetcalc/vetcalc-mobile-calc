class Concentration {
  final int concentration_id;
  final double temperature_low;
  final double temperature_high;
  final double heart_rate_low;
  final double heart_rate_high;
  final double respiratory_rate_low;
  final double respiratory_rate_high;

  Concentration(
      this.concentration_id,
      this.temperature_low,
      this.temperature_high,
      this.heart_rate_low,
      this.heart_rate_high,
      this.respiratory_rate_low,
      this.respiratory_rate_high);

  Concentration.fromJson(Map<String, dynamic> json)
      : concentration_id = json['id'],
        temperature_low = json['temperature_low'],
        temperature_high = json['temperature_high'],
        heart_rate_low = json['heart_rate_low'],
        heart_rate_high = json['heart_rate_high'],
        respiratory_rate_low = json['respiratory_rate_low'],
        respiratory_rate_high = json['respiratory_rate_high'];
}
