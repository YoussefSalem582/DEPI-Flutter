// 9) Create a Rectangle class with width, height and add a method getArea()
//    that returns the area. Print the area of the rectangle.

void main() {
  // Creating an instance (object) of the Rectangle class
  Rectangle myRect = Rectangle(10.5, 5.0);

  // Calling the getArea method and storing the result
  double area = myRect.getArea();

  // Printing the result
  print('Rectangle Width: ${myRect.width}'); // 10.5
  print('Rectangle Height: ${myRect.height}'); // 5.0
  print('The area of the rectangle is: $area'); // 52.5
}

class Rectangle {
  // Properties (Fields)
  double width;
  double height;

  // Constructor: Initializes the width and height when a new object is created
  Rectangle(this.width, this.height);

  // Method to calculate the area
  double getArea() {
    return width * height;
  }
}
