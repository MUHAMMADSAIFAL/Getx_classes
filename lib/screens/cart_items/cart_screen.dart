import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_get_application/app_widgets/app_text.dart';
import 'package:practice_get_application/controller/cart_controller.dart';
import 'package:practice_get_application/model/card_model.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);
  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart Items"),
        actions: [
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: () {
              cartController.addToCart(Product(name: "Apple", price: 200.0));
              cartController.addToCart(Product(name: "Banana", price: 105.5));
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // IconButton(
          //   icon: Icon(Icons.add_shopping_cart),
          //   onPressed: () {
          //     // Add sample products to cart
          //     cartController.addToCart(Product(name: "Apple", price: 2.0));
          //     cartController.addToCart(Product(name: "Banana", price: 1.5));
          //   },
          // ),
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: cartController.cartItems.length,
                itemBuilder: (context, index) {
                  var product = cartController.cartItems[index];
                  return ListTile(
                    title: AppText(text: "Name: ${product.name}", fontSize: 18),
                    subtitle: AppText(
                      text: "Quantity: ${product.quantity}",
                      fontSize: 18,
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            cartController.increaseQuantity(product);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            cartController.decreaseQuantity(product);
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Obx(() {
            return AppText(
              text:
                  "Total Price: \$${cartController.totalPrice.toStringAsFixed(2)}",
              fontSize: 20,
              fontWeight: FontWeight.bold,
            );
          }),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
