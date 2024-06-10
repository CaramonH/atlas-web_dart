//Three functions in dart:
//add() that accepts two arguments a, b and return the sum
//sub() that accepts two arguments a, b and return Subtraction of them
//showFunc() that returns a message with the output of the two other function
int add(int a, int b) {
  int res = a + b;
  return res;
}

int sub(int a, int b) {
  int res = a - b;
  return res;
}

String showFunc(int a, int b) {
  int sum = add(a, b);
  int difference = sub(a, b);
  return 'Add $a + $b = $sum\nSub $a - $b = $difference';
}
