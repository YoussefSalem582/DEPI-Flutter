// 5) Make a Simple Calculator Using Functions and Switch case.

import 'dart:io';

void main() {
  print('--- Simple Dart Calculator ---');

  // Input first number
  print('Enter first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  // Input operator
  print('Enter an operator (+, -, *, /):');
  String? operator = stdin.readLineSync();

  // Input second number
  print('Enter second number:');
  double num2 = double.parse(stdin.readLineSync()!);

  // Perform calculation
  calculate(num1, num2, operator);
}

void calculate(double n1, double n2, String? op) {
  double result;

  switch (op) {
    case '+':
      result = add(n1, n2);
      print('Result: $n1 + $n2 = $result');
      break;
    case '-':
      result = subtract(n1, n2);
      print('Result: $n1 - $n2 = $result');
      break;
    case '*':
      result = multiply(n1, n2);
      print('Result: $n1 * $n2 = $result');
      break;
    case '/':
      if (n2 == 0) {
        print('Error: Division by zero is not allowed.');
      } else {
        result = divide(n1, n2);
        print('Result: $n1 / $n2 = $result');
      }
      break;
    default:
      print('Invalid operator! Please use +, -, *, or /.');
  }
}

// Math Functions
double add(double a, double b) => a + b;
double subtract(double a, double b) => a - b;
double multiply(double a, double b) => a * b;
double divide(double a, double b) => a / b;
