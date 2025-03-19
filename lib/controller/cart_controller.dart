import 'package:get/get.dart';
import 'package:practice_get_application/model/card_model.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs;

  double get totalPrice =>
      cartItems.fold(0, (sum, item) => sum + (item.price * item.quantity));

  void addToCart(Product product) {
    int index = cartItems.indexWhere((item) => item.name == product.name);
    if (index >= 0) {
      cartItems[index].quantity++;
    } else {
      cartItems.add(product);
    }
  }

  void increaseQuantity(Product product) {
    int index = cartItems.indexWhere((item) => item.name == product.name);
    if (index >= 0) {
      cartItems[index].quantity++;
      cartItems.refresh(); // Update the cartItems
    }
  }

  void decreaseQuantity(Product product) {
    int index = cartItems.indexWhere((item) => item.name == product.name);
    if (index >= 0 && cartItems[index].quantity > 1) {
      cartItems[index].quantity--;
      cartItems.refresh(); // Update the cartItems
    } else if (index >= 0 && cartItems[index].quantity == 1) {
      cartItems.removeAt(index); // Remove item if quantity is zero
    }
  }
}
