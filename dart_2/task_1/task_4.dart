//4) Program to find largest and smallest element of 3 values.
import 'dart:io';

void main() {
  print("Enter first number:");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter second number:");
  int num2 = int.parse(stdin.readLineSync()!);
  print("Enter third number:");
  int num3 = int.parse(stdin.readLineSync()!);
  int max = 0, min = 0;
  if (num1 >= num2 && num1 >= num3) {
    max = num1;
  } else if (num2 >= num1 && num2 >= num3) {
    max = num2;
  } else {
    max = num3;
  }
  if (num1 <= num2 && num1 <= num3) {
    min = num1;
  } else if (num2 <= num1 && num2 <= num3) {
    min = num2;
  } else {
    min = num3;
  }
  print("the max value is $max , and the min value is $min");
}
