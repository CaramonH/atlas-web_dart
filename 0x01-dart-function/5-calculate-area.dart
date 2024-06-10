//function calculateArea() that accepts two variables height and base and returns the area of the triangle
double calculateArea(double height, double base) {
  double area = 0.5 * height * base;
  return double.parse(area.toStringAsFixed(2)); // rounding to two decimal places
}