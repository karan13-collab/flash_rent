class Car {
  final String model;
  final double distance;
  final double fuelCapacity;
  final double pricePerHour;

  Car({
    required this.model,
    required this.distance,
    required this.fuelCapacity,
    required this.pricePerHour,
  });

  factory Car.fromMap(Map<String, dynamic> map) {
    double _toDouble(dynamic value) {
      if (value == null) return 0.0;
      if (value is num) return value.toDouble();
      if (value is String) return double.tryParse(value) ?? 0.0;
      return 0.0;
    }

    return Car(
      model: map['model']?.toString() ?? '',
      distance: _toDouble(map['distance']),
      fuelCapacity: _toDouble(map['fuelCapacity']),
      pricePerHour: _toDouble(map['pricePerHour']),
    );
  }
}
