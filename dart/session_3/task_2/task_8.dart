// 8) Write a function to reverse a list.

void main() {
  List<String> fruits = ['apple', 'banana', 'cherry'];

  // Method 1
  var result = fruits.reversed.toList();
  print('Reversed: $result'); // [cherry, banana, apple]

  /// Method 2
  // List<int> numbers = [1, 2, 3, 4, 5];
  // reverseInPlace(numbers);
  // print('In-Place: $numbers'); // [5, 4, 3, 2, 1]
}
