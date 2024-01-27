import 'dart:developer';

import 'package:animated_headphones_products_ui/res/components/cart_tile_widget.dart';
import 'package:animated_headphones_products_ui/res/components/empty_cart_msg_widget.dart';
import 'package:animated_headphones_products_ui/res/components/round_button.dart';
import 'package:flutter/material.dart';
import 'package:persistent_shopping_cart/model/cart_model.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text('My Cart')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Expanded(
                child: PersistentShoppingCart().showCartItems(
                  cartTileWidget: ({required data}) =>
                      CartTileWidget(data: data),
                  showEmptyCartMsgWidget: const EmptyCartMsgWidget(),
                ),
              ),
              PersistentShoppingCart().showTotalAmountWidget(
                cartTotalAmountWidgetBuilder: (totalAmount) => Visibility(
                  visible: totalAmount == 0.0 ? false : true,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Total',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                          Text(
                            r"$" + totalAmount.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 22),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            right: 20, top: 20, bottom: 40, left: 20),
                        height: 160,
                        width: size.width,
                        color: Colors.grey.shade100,
                        child: Center(
                          child: SizedBox(
                            width: size.width / 1.25,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Total: \$${totalAmount}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall,
                                    )
                                  ],
                                ),
                                RoundButton(
                                    onPress: () {
                                      final shoppingCart =
                                          PersistentShoppingCart();
                                      // Retrieve cart data and total price
                                      Map<String, dynamic> cartData =
                                          shoppingCart.getCartData();

                                      // Extract cart items and total price
                                      List<PersistentShoppingCartItem>
                                          cartItems = cartData['cartItems'];
                                      double totalPrice =
                                          cartData['totalPrice'];
                                      /* since cart items is a list, you can run a loop to extract all the values
                                         send it to api or firebase based on your requirement
                                         */
                                      log('Total Price: $totalPrice');
                                    },
                                    title: 'Checkout'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
