//two functions:
//outer() take two argument name, id
//print the output of the inside function inner()
void outer(String name, String id) {
  String inner() {
    var names = name.split(' ');
    var lastNameInitial = names[1][0];
    var firstName = names[0];

    return('Hello Agent $lastNameInitial.$firstName your id is $id');
  }

  print(inner());
}