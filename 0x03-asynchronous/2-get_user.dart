import '2-util.dart';

Future<void> getUser() async {
  try {
    String user = await fetchUser();
    print(user); //prints user's string representation
  } catch (e) {
    print('error caught: $e');
  }
}
