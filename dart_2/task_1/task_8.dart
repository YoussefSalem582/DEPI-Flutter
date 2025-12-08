//7) Build a menu system that offers options:
// Calculate Area of Circle
// Calculate Area of Rectangle
// Calculate Area of Triangle
// Exit : Use switch to handle user choice and perform calculations.
import 'dart:io';
import 'dart:math';

void main() {
  print("------ MENU ------");
  print("1) Area of Circle");
  print("2) Area of Rectangle");
  print("3) Area of Triangle");
  print("4) Exit");

  print("Enter choice:");
  int choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      print("Enter radius:");
      double r = double.parse(stdin.readLineSync()!);
      print("Area = ${pi * r * r}");
      break;

    case 2:
      print("Enter width:");
      double w = double.parse(stdin.readLineSync()!);

      print("Enter height:");
      double h = double.parse(stdin.readLineSync()!);

      print("Area = ${w * h}");
      break;

    case 3:
      print("Enter base:");
      double b = double.parse(stdin.readLineSync()!);

      print("Enter height:");
      double h = double.parse(stdin.readLineSync()!);

      print("Area = ${0.5 * b * h}");
      break;

    case 4:
      print("Exiting program...");
      break;

    default:
      print("Invalid choice");
  }
}
