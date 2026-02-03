//-------Session 3: intro to Dart
//-------6/12/2025

//------------ for, while, do while
//------------ factorial  5->  5*4*3*2*1
// void main() {
//   int n = 5;
//   int fact = 1;
//   for (int i = n; i > 0; i--) {
//     fact *= i;
//   }
//   print(fact);
// }

//--------------- methods
// can be made in switch

//--------------- ex 1
// void main() {
//   int res = delete(5, 8);
//   print(res);
// }

// int add(int x, int y) {
//   return x + y;
// }

// int delete(int x, int y) {
//   return x - y;
// }

// int multi(int x, int y) {
//   return x * y;
// }

// double dev(double x, double y) {
//   return x / y;
// }

//---------------- oop
// import 'person.dart';

// main() {
//   Person p1 = Person();
//   p1.name = "Joe";
//   p1.age = 22;
//   p1.display();
// }

//-------------- ex
import 'employee.dart';

main() {
  Employee e1 = Employee();
  e1.name = "Joe";
  e1.year = 22;
  e1.salary = 4000;
  e1.display();

  Employee e2 = Employee();
  e2.name = "Ahmed";
  e2.year = 26;
  e2.salary = 3000;
  e2.display();

  Employee e3 = Employee();
  e3.name = "Mohamed";
  e3.year = 33;
  e3.salary = 5000;
  e3.display();
}
