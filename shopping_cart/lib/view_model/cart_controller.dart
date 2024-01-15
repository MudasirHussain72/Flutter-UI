import 'package:hive_flutter/hive_flutter.dart';
import 'package:shopping_cart/model/cart_model.dart';

class CartController {
  Future<void> updateCart(LineItems product) async {
    CartModel? existingCart;

    var box = Hive.box<CartModel>('cartBox');

    for (var cart in box.values) {
      if (cart.lineItems!.any((item) => item.productId == product.productId)) {
        existingCart = cart;
        break;
      }
    }

    // If the item is in the cart, remove it
    if (existingCart != null) {
      existingCart.lineItems!
          .removeWhere((item) => item.productId == product.productId);
      await box.put(existingCart.key, existingCart);
      print('Item removed from cart: ${product.productId}');
    } else {
      // If the item is not in the cart, add it
      CartModel cartModel = box.isNotEmpty ? box.getAt(0)! : CartModel();
      cartModel.lineItems ??= [];
      cartModel.lineItems!
          .add(LineItems.fromJson(product.toJson())); // Adjust as needed
      await box.put(0, cartModel); // Assuming the first box entry is your cart
      print('Item added to cart: ${product.productId}');
    }
  }

  bool isItemExistsInCart(String productId) {
    var box = Hive.box<CartModel>('cartBox');

    for (var cart in box.values) {
      if (cart.lineItems!.any((item) => item.productId == productId)) {
        return true;
      }
    }
    return false;
  }

  int getCartItemCount() {
    var cart = Hive.box<CartModel>('cartBox').isNotEmpty
        ? Hive.box<CartModel>('cartBox').getAt(0)
        : null;
    return cart?.lineItems?.length ?? 0;
  }
}
