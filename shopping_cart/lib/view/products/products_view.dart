import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shopping_cart/main.dart';
import 'package:shopping_cart/model/cart_model.dart';
import 'package:shopping_cart/view/cart/cart_view.dart';
import 'package:shopping_cart/view_model/cart_controller.dart';
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
    log('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products Screen'),
        actions: [
          ValueListenableBuilder<Box<CartModel>>(
            valueListenable: Boxes.getData().listenable(),
            builder: (context, box, child) {
              var itemCount = CartController().getCartItemCount();
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
                    bool existsInCart = CartController().isItemExistsInCart(
                        products[index].productId.toString());
                    // log('build ListTile');
                    return ListTile(
                        title: Text(products[index].productId ?? ''),
                        trailing: IconButton(
                          onPressed: () async {
                            CartController().updateCart(
                              products[index],
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
