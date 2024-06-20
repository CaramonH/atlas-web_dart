import '4-util.dart';
import 'dart:convert' as convert;

Future<String> calculateTotal() async {
  double totalPrice = 0.0;
  try {
    // Get User data - id
    var userData = await fetchUserData();
    Map<String, dynamic> user = convert.jsonDecode(userData);
    var userId = user['id'];

    // Get user orders
    var userOrders = await fetchUserOrders(userId);
    if (userOrders == null) {
      return '-1';
    }
    List<dynamic> orders = convert.jsonDecode(userOrders);

    // Fetch all product prices concurrently
    List<Future<String>> priceFutures = orders.map((item) => fetchProductPrice(item)).toList();
    List<String> priceStrings = await Future.wait(priceFutures);

    // Calculate total price
    for (String priceString in priceStrings) {
      if (priceString == null) {
        return '-1';
      }
      double itemPrice = convert.jsonDecode(priceString);
      totalPrice += itemPrice;
    }

    return totalPrice.toString();
  } catch (e) {
    return '-1';
  }
}

void main() async {
  print(await calculateTotal());
}
