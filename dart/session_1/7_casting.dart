//------6------ res
// toString
// toInt
// toDouble

void main() {
  String x = '120.1234567';
  // double res = double.parse(x);
  int res = double.parse(x).round();
  print(res);
}

// output: 120.1234567
