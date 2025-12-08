//-------Session 1: intro to Dart
//-------29/11/2025

//------1

// void main() {
//   print('hello, i am a Flutter developer');
// }

//------2
// void main() {
//   String job = "Flutter Developer";
//   print('hello, i am a $job');
// }

//------3
// void main() {
//   String job = "Flutter Developer";
//   print('hello, i am a ${job.toLowerCase()}');
// }

//------4
// int, double, num
// void main() {
//   int x = 9;
//   print(x);
// }

//------5
// round, floor, ceil
// void main() {

//   double x = 9.5;
//   print(x.round());
//   print(x.floor());
//   print(x.ceil());
// }

//------6
// toStringAsFixed
// void main() {

//   String x = "9.56789";
//   int res = double.parse(x).round();
//   print(res);
// }

//------7
// length (1) , index (0)
// void main() {
//   String name = "Youssef";
//   print(name.length);
//   print(name[4]);
//   print(name[name.length - 1]);
// }

//------8
// contains , startsWith , endWith
// void main() {
//   String name = 'Youssef Salem';
//   print(name.contains('Youssef'));
//   print(name.startsWith('Youssef'));
//   print(name.endsWith('Youssef'));
// }

//------9
// trim
// void main() {
//   String name = '            youssef@gmail.com';
//   print(name.trim());
// }

//------10
// replaceAll
// void main() {
//   String name = 'Youssef Salem';
//   print(name.replaceAll(' ', '_'));
// }

//------11
// substring
// void main() {
//   String name = 'Youssef Salem';
//   print(name.substring(1, 4));
// }

//------12
// toUpperCase and substring
void main() {
  String name = 'youssef Salem';
  String nameA = name[0].toUpperCase() + name.substring(1);
  print(nameA);
}
