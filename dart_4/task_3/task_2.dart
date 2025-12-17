// 2) Create a Rectangle class with width, height and add a method
//     getArea() that returns the area. Print the area of the rectangle.

void main() {
  Rectangle rect = Rectangle(10, 5);
  print("Area of the rectangle: ${rect.getArea()}"); // 50
}

class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double getArea() {
    return width * height;
  }
}
