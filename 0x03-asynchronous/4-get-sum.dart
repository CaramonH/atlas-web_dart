import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Fetch user data
    String userDataString = await fetchUserData();
    var userData = json.decode(userDataString);
    String userId = userData['id'];

    // Fetch user orders
    String userOrdersString = await fetchUserOrders(userId);
    if (userOrdersString == null) {
      return -1;
    }
    List<dynamic> userOrders = json.decode(userOrdersString);

    // Calculate total price
    double totalPrice = 0.0;
    for (var product in userOrders) {
      String productPriceString = await fetchProductPrice(product);
      if (productPriceString == null) {
        return -1;
      }
      double productPrice = json.decode(productPriceString);
      totalPrice += productPrice;
    }

    return totalPrice;
  } catch (e) {
    return -1;
  }
}

void main() async {
  print(await calculateTotal());
}
