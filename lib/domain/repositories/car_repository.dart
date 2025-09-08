import 'package:flash_rent/data/models/car.dart';

abstract class CarRepository {
  Future<List<Car>> fetchCars();
}