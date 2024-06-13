class Password {
  String password;

  Password({required this.password});

  bool isvalid() {
    if (password.length < 8 || password.length > 16) {
      return false;
    }
    bool hasUpperCase = password.contains(RegExp(r'[A-Z]'));
    bool hasLowerCase = password.contains(RegExp(r'[a-z]'));
    bool hasDigits = password.contains(RegExp(r'[0-9]'));

    return hasUpperCase && hasLowerCase && hasDigits;
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}