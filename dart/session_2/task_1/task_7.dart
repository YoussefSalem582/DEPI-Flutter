//7) Create a Body Mass Index calculator that takes weight (kg) and height (m) as input: Calculates BMI = weight / (height × height)
//Classifies the result:
//Underweight: BMI < 18.5
//Normal: 18.5 ≤ BMI < 25
//Overweight: 25 ≤ BMI < 30
//Obese: BMI ≥ 30
import 'dart:io';

void main() {
  print("Enter weight:");
  double w = double.parse(stdin.readLineSync()!);
  print("Enter height:");
  double h = double.parse(stdin.readLineSync()!);
  double bmi = w / (h * h);
  print("Your BMI is: $bmi");
  if (bmi < 18.5) {
    print("Underweight");
  } else if (bmi < 25) {
    print("Normal");
  } else if (bmi < 30) {
    print("Overweight");
  } else {
    print("Obese");
  }
}
