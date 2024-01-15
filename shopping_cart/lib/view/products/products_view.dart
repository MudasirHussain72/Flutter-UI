import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shopping_cart/main.dart';
import 'package:shopping_cart/model/cart_model.dart';
import 'package:shopping_cart/view/cart/cart_view.dart';
import 'package:shopping_cart/view_model/services/hive_boxes.dart';
import 'package:badges/badges.dart' as badges;

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  @override
  _ProductsViewState createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  List<LineItems> products = [];

  @override
  void initState() {
    super.initState();
    loadProducts();
  }

  Future<void> loadProducts() async {
    try {
      final jsonString = await readJsonFromAsset('assets/products_list.json');
      final jsonData = json.decode(jsonString);

      List<LineItems> productList = List.from(jsonData)
          .map((productJson) => LineItems.fromJson(productJson))
          .toList();

      setState(() {
        products = productList;
      });
    } catch (e) {
      // Handle errors
      print('Error loading products: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products Screen'),
        actions: [
          ValueListenableBuilder<Box<CartModel>>(
            valueListenable: Boxes.getData().listenable(),
            builder: (context, box, child) {
              var itemCount = getCartItemCount();
              return IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CartView()),
                  );
                },
                icon: badges.Badge(
                  badgeContent: Text(itemCount.toString()),
                  child: Icon(Icons.shopping_bag_outlined),
                ),
              );
            },
          ),
        ],
      ),
      body: products.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ValueListenableBuilder<Box<CartModel>>(
              valueListenable: Boxes.getData().listenable(),
              builder: (context, box, child) {
                var data = box.values.toList();
                return ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    bool existsInCart = isItemExistsInCart(
                        products[index].productId.toString());

                    return ListTile(
                        title: Text(products[index].productId ?? ''),
                        trailing: IconButton(
                          onPressed: () async {
                            updateCart(
                              products[index].productId.toString(),
                            );
                          },
                          icon: Icon(existsInCart
                              ? Icons.shopping_bag_rounded
                              : Icons.shopping_bag_outlined),
                        ));
                  },
                );
              },
            ),
    );
  }
}

Future<void> updateCart(String productId) async {
  CartModel? existingCart;

  var box = Hive.box<CartModel>('cartBox');

  for (var cart in box.values) {
    if (cart.lineItems!.any((item) => item.productId == productId)) {
      existingCart = cart;
      break;
    }
  }

  // If the item is in the cart, remove it
  if (existingCart != null) {
    existingCart.lineItems!.removeWhere((item) => item.productId == productId);
    await box.put(existingCart.key, existingCart);
    print('Item removed from cart: $productId');
  } else {
    // If the item is not in the cart, add it
    CartModel cartModel = box.isNotEmpty ? box.getAt(0)! : CartModel();
    cartModel.lineItems ??= [];
    cartModel.lineItems!
        .add(LineItems(productId: productId)); // Adjust as needed
    await box.put(0, cartModel); // Assuming the first box entry is your cart
    print('Item added to cart: $productId');
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
