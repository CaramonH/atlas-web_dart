class Password {
  String _password = '';

  //Constructor
  Password({String password = ''}) {
    _password = password;
  }

  //Getter
  String get password => _password;

  //Setter
  set password(String value) {
    _password = value;
  }

  bool isValid() {
    bool lengthCheck = _password.length >= 8 && _password.length <= 16;
    bool hasUpperCase = _password.contains(RegExp(r'[A-Z]'));
    bool hasLowerCase = _password.contains(RegExp(r'[a-z]'));
    bool hasDigits = _password.contains(RegExp(r'[0-9]'));

    return lengthCheck && hasUpperCase && hasLowerCase && hasDigits;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
