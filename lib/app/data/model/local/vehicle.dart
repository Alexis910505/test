import 'package:meta/meta.dart';

class Vehicle {
  final String image;
  final String trademark;
  final double cost;
  int count;

  Vehicle({
    @required this.image,
    @required this.trademark,
    @required this.cost,
  }) : this.count = 0;
}
