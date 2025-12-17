// 7) Write a function to count Number of Digits in an Integer

void main() {
  int number = 123456;

  int digitCount = countDigits(number);
  print('Number of digits in $number is: $digitCount');
}

int countDigits(int number) {
  String num = number.toString();

  List<String> numbers = num.split("").toList();
  return numbers.length;
}
