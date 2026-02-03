// 1) Write a function to find out if number is prime or not.

void main() {
  // Test cases
  List<int> testNumbers = [1, 2, 3, 4, 17, 18, 29, 97, 100];

  for (int n in testNumbers) {
    print('$n is prime? ${isPrime(n)}');
  }
}

bool isPrime(int number) {
  // 1. Handle edge cases: numbers less than 2 are not prime
  if (number < 2) {
    return false;
  }
  // 2. Optimization: Check for 2 (the only even prime)
  if (number == 2) {
    return true;
  }
  // 3. Optimization: Eliminate all other even numbers immediately
  if (number % 2 == 0) {
    return false;
  }
  // 4. Check odd divisors from 3 up to the square root of the number.
  for (int i = 3; i * i <= number; i += 2) {
    if (number % i == 0) {
      return false; // Found a divisor, so it's not prime
    }
  }
  return true; // No divisors found
}
