// 6) Write a function to count how many even and odd numbers in a list.

void main() {
  List<int> myList = [12, 7, 5, 22, 18, 31, 40, 9];

  countEvenOdd(myList);
}

void countEvenOdd(List<int> numbers) {
  int evenCount = 0;
  int oddCount = 0;

  for (int n in numbers) {
    if (n % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }

  print('Total numbers: ${numbers.length}'); // 8
  print('Even numbers: $evenCount'); // 4
  print('Odd numbers: $oddCount'); // 4
}
