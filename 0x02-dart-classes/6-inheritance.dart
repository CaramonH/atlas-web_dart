import '6-password.dart';

class User extends Password {
  String name;
  int age;
  double height;
  int id;

  User({
    required this.name,
    required this.age,
    required this.height,
    required this.id,
    String user_password = '',
  }) : super(password: user_password);

  String get user_password => this.password;

  set user_password(String newPassword) {
    this.password = newPassword;
  }

  String showName() {
    return 'Hello $name';
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'] as int? ?? 0,
      name: userJson['name'] as String? ?? 'Unknown',
      age: userJson['age'] as int? ?? 0,
      height: userJson['height'] as double? ?? 0.0,
      user_password: userJson['user_password'] as String? ?? '',
    );
  }

  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})';
  }
}
