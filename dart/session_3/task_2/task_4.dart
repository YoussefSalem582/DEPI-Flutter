// 4) Write a function to count all words in a String.

void main() {
  String text = "   The quick brown   fox jumps  ";

  int count = countWords(text);

  print("Text: '$text'");
  print("Word count: $count"); // Output: 5
}

int countWords(String input) {
  // 1. Trim leading and trailing whitespace
  String trimmed = input.trim();

  // 2. Handle empty strings
  if (trimmed.isEmpty) {
    return 0;
  }

  // 3. Split by one or more whitespace characters
  // \s+ is a regex that matches spaces, tabs, and newlines
  List<String> words = trimmed.split(RegExp(r'\s+'));

  return words.length;
}
