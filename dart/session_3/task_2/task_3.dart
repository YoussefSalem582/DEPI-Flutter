// 3) Write a function to find the area of a circle.

import 'dart:math';

void main() {
  double radius = 5.0;
  double area = calculateCircleArea(radius);

  // toStringAsFixed(2) rounds the output to 2 decimal places for cleaner display
  print('Radius: $radius');
  print('Area: ${area.toStringAsFixed(2)}');
}

double calculateCircleArea(double radius) {
  // Edge case: Negative radius is physically impossible
  if (radius < 0) {
    throw ArgumentError('Radius cannot be negative');
  }

  // Formula: Area = pi * r^2
  return pi * (radius * radius);
}
