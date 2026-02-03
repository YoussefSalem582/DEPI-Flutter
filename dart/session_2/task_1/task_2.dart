//2) Write a program to calculate sum all elements in list and get the average.
void main() {
  List<int> numbers = [10, 20, 30, 40];

  int sum = numbers.reduce((a, b) => a + b);
  double avg = sum / numbers.length;

  print("Sum = $sum");
  print("Average = $avg");
}
