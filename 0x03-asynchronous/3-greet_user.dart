import 'dart:convert';
import '3-util.dart';

// Fetch user data and return a greeting
Future<String> greetUser() async {
  try {
    // Get user data
    String userData = await fetchUserData();

    // Parse JSON to get username
    Map<String, dynamic> userMap = jsonDecode(userData);

    // Return greeting message
    return 'Hello ${userMap['username']}';
  } catch (e) {
    // Return error message
    return 'error caught: $e';
  }
}

// Check credentials and greet the user if valid
Future<String> loginUser() async {
  try {
    // Check user credentials
    bool credentials = await checkCredentials();

    // Print if there is a user
    print('There is a user: $credentials');

    // If credentials are valid, return greeting
    if (credentials) {
      return await greetUser();
    } else {
      // If credentials are invalid, return error message
      return 'Wrong credentials';
    }
  } catch (e) {
    // Return error message
    return 'error caught: $e';
  }
}
