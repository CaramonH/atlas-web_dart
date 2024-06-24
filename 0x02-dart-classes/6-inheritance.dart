import '6-password.dart';

class User extends Password {
  int? id;
  String? name;
  int? age;
  double? height;

  User(
      {required this.id,
      required this.name,
      required this.age,
      required this.height,
      required String user_password})
      : super(password: user_password);

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      age: json['age'] ?? 0,
      height: json['height'] ?? 0.0,
      user_password: json['user_password'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, age: $age, height: $height, ${super.toString()})';
  }

  set user_password(String value) {
    _password = value;
  }
}
