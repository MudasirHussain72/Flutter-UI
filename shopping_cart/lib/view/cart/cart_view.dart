import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shopping_cart/model/cart_model.dart';
import 'package:shopping_cart/res/components/network_image_widget.dart';
import 'package:shopping_cart/res/components/round_button.dart';
import 'package:shopping_cart/view/payment_screen.dart';
import 'package:shopping_cart/view_model/cart_controller.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final CartController _cartController = CartController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: const Text('My Cart')),
      body: Stack(
        children: [
          ValueListenableBuilder<Box<CartModel>>(
            valueListenable: _cartController.cartListenable,
            builder: (context, box, child) {
              if (box != null && box.isNotEmpty) {
                return ListView.builder(
                  itemCount: box.length,
                  itemBuilder: (context, cartIndex) {
                    var cart = box.getAt(cartIndex);
                    if (cart != null &&
                        cart.lineItems != null &&
                        cart.lineItems!.isNotEmpty) {
                      return Column(
                        children: [
                          for (var data in cart.lineItems!)
                            Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.only(bottom: 10),
                              width: double.infinity,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(.05),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: [
                                  NetworkImageWidget(
                                      borderRadius: 10,
                                      height: 80,
                                      width: 80,
                                      imageUrl: data.imageUrls![0]),
                                  const SizedBox(width: 10),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          "${data.brand.toString()} ${data.title.toString()}"),
                                      IntrinsicHeight(
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              size: 14,
                                            ),
                                            Text(
                                              data.rating.toString(),
                                            ),
                                            const VerticalDivider(
                                              color: Colors.black,
                                              thickness: 2,
                                              indent: 2,
                                              endIndent: 2,
                                            ),
                                            Text(
                                              "Stock ${data.stock!.toString()}",
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "${data.unitPrice!.currencyCode.toString()} ${data.unitPrice!.centAmount.toString()}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineSmall,
                                          ),
                                          const SizedBox(width: 20),
                                          InkWell(
                                            onTap: () async {
                                              bool removed =
                                                  await CartController()
                                                      .removeProduct(data
                                                          .productId
                                                          .toString());
                                              if (removed) {
                                                // Handle successful removal
                                                showSnackBar(context, removed);
                                              } else {
                                                // Handle the case where the product was not found in the cart
                                              }
                                            },
                                            child: Container(
                                              height: 30,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                      color: Colors.red)),
                                              child: Center(
                                                child: Text(
                                                  'Remove',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          _cartController.incrementQuantity(
                                              data.productId ?? '');
                                        },
                                        child: Container(
                                            padding: const EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                color:
                                                    Colors.grey.withOpacity(.2),
                                                borderRadius:
                                                    BorderRadius.circular(6)),
                                            child: const Icon(Icons.add)),
                                      ),
                                      Text(
                                        data.quantity.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          _cartController.decrementQuantity(
                                              data.productId ?? '');
                                        },
                                        child: Container(
                                            padding: const EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                color:
                                                    Colors.grey.withOpacity(.2),
                                                borderRadius:
                                                    BorderRadius.circular(6)),
                                            child: const Icon(Icons.remove)),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          const SizedBox(
                            height: 126,
                          ),
                        ],
                      );
                    } else {
                      return Center(
                          child: SizedBox(
                        height: size.height * .7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Your cart is empty'),
                            const SizedBox(height: 20),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Shop now')),
                          ],
                        ),
                      ));
                    }
                  },
                );
              } else {
                return Center(
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height * .7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Your cart is empty'),
                            const SizedBox(height: 20),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Shop now')),
                          ],
                        )));
              }
            },
          ),
          Positioned(
              bottom: 0,
              child: Container(
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
                        // Use ValueListenableBuilder to show the total price
                        ValueListenableBuilder<Box<CartModel>>(
                          valueListenable: _cartController.cartListenable,
                          builder: (context, box, child) {
                            var totalAmount = _cartController.getTotalPrice();

                            return Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Total: \$${totalAmount?.centAmount?.toStringAsFixed(2) ?? '0.00'}',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                )
                              ],
                            );
                          },
                        ),
                        RoundButton(
                            onPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PaymentScreen()));
                            },
                            title: 'Checkout'),
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }

  void showSnackBar(BuildContext context, bool removed) {
    final snackBar = SnackBar(
      content: Text(removed
          ? 'Product removed from cart.'
          : 'Product not found in the cart.'),
      backgroundColor: removed ? Colors.green : Colors.red,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
