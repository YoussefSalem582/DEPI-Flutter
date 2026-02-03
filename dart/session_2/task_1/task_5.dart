//5) Write a program to input the value of the radius of a circle and then calculate its perimeter and area.
import 'dart:io';
import 'dart:math';

void main() {
  print("Enter radius:");

  double radius = double.parse(stdin.readLineSync()!);
  double perimeter = 2 * pi * radius;
  double area = pi * radius * radius;
  print("The perimeter of the circle = $perimeter , the area = $area");
}
