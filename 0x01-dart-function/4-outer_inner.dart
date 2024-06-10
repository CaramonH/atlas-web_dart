//two functions:
//outer() take two argument name, id
//print the output of the inside function inner()
void outer(String name, String id) {
  String inner() {
    List<String> parts = name.split(' ');
    String lastNameInitial = parts[0][0];
    String firstNameInitial = parts[1][0];
    String lastName = parts[1];
    return 'Hello Agent $lastNameInitial.$firstNameInitial$lastName your id is $id';
  }
  
  print(inner());
}

