import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shopping_cart/model/cart_model.dart';
import 'package:shopping_cart/res/color.dart';
import 'package:shopping_cart/res/components/network_image_widget.dart';

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
                var data = snapshot.data!.lineItems![index];
                log(data.imageUrls![0]);
                return Container(
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "${data.unitPrice!.currencyCode.toString()} ${data.unitPrice!.centAmount.toString()}"),
                          Text(
                              "${data.unitPrice!.currencyCode.toString()} ${data.unitPrice!.centAmount.toString()}"),
                          Text(
                            "${data.unitPrice!.currencyCode.toString()} ${data.unitPrice!.centAmount.toString()}",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(.2),
                                  borderRadius: BorderRadius.circular(6)),
                              child: const Icon(Icons.add)),
                          Text(
                            data.quantity.toString(),
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(.2),
                                  borderRadius: BorderRadius.circular(6)),
                              child: const Icon(Icons.remove))
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
