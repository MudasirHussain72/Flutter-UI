import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shopping_cart/model/cart_model.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

Future<CartModel?> _myfuture() async {
  var box = await Hive.openBox<CartModel>('cartBox');
  // final box = Boxes.getData();
  CartModel? data;
  for (var i = 0; i < box.length; i++) {
    log('${box.get(i)?.toJson()}');
    data = box.get(i);
  }
  return data;
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Cart')),
      body: FutureBuilder(
        future: _myfuture(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            print(snapshot.error);
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.data!.lineItems!.isEmpty) {
            return Center(
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
            ));
          } else if (!snapshot.hasData || snapshot.data == null) {
            return const Text('No data available');
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.lineItems!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data!.lineItems![index].productId == null
                      ? ''
                      : snapshot.data!.lineItems![index].productId.toString()),
                );
              },
            );
          }
        },
      ),
    );
  }
}
