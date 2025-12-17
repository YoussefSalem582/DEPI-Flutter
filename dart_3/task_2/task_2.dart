//2) Write a function to display the middle character of a string.
//    a) If the length of the string is even there will be two middle characters.
//    b) If the length of the string is odd there will be one middle character.
void main() {
  // Test Case 1: Odd length
  print("Input: 'testing'");
  print("Middle: ${getMiddle('testing')}"); // Output: t

  print("---");

  // Test Case 2: Even length
  print("Input: 'middle'");
  print("Middle: ${getMiddle('middle')}"); // Output: dd

  print("---");

  // Test Case 3: Shortest even
  print("Input: 'of'");
  print("Middle: ${getMiddle('of')}"); // Output: of
}

String getMiddle(String word) {
  // Get the length of the string
  int len = word.length;

  // Find the middle index using integer division
  int mid = len ~/ 2;

  if (len % 2 == 0) {
    // Case A: Even length - Return the two middle characters
    // substring(start, end) includes 'start' but excludes 'end'
    return word.substring(mid - 1, mid + 1);
  } else {
    // Case B: Odd length - Return the single middle character
    return word[mid];
  }
}
