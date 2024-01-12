import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:shopping_cart/model/cart_model.dart';
import 'package:shopping_cart/view/cart/cart_view.dart';
import 'package:shopping_cart/view_model/services/hive_boxes.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products Screen'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CartView()));
              },
              icon: const Icon(Icons.shopping_bag_outlined))
        ],
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () async { 
              var data = {
                "type": "Cart",
                "id": "27b39077-aa57-48a5-b504-914f68fa44dc",
                "version": 1,
                "createdAt": "2023-01-23T13:06:28.569Z",
                "lastModifiedAt": "2023-01-23T13:06:28.569Z",
                "lastModifiedBy": {
                  "isPlatformClient": false,
                  "userId": "user123",
                  "username": "john_doe"
                },
                "createdBy": {
                  "isPlatformClient": false,
                  "userId": "user456",
                  "username": "jane_smith"
                },
                "lineItems": [
                  {
                    "id": "item123",
                    "productId": "product789",
                    "quantity": 2,
                    "unitPrice": {
                      "type": "centPrecision",
                      "currencyCode": "EUR",
                      "centAmount": 5000,
                      "fractionDigits": 2
                    },
                    "totalPrice": {
                      "type": "centPrecision",
                      "currencyCode": "EUR",
                      "centAmount": 10000,
                      "fractionDigits": 2
                    },
                    "discounts": [
                      {
                        "code": "DISCOUNT123",
                        "amount": {
                          "type": "centPrecision",
                          "currencyCode": "EUR",
                          "centAmount": 500,
                          "fractionDigits": 2
                        }
                      }
                    ],
                    "imageUrls": [
                      "https://example.com/item123_1.jpg",
                      "https://example.com/item123_2.jpg"
                    ]
                  },
                  {
                    "id": "item456",
                    "productId": "product567",
                    "quantity": 1,
                    "unitPrice": {
                      "type": "centPrecision",
                      "currencyCode": "EUR",
                      "centAmount": 7500,
                      "fractionDigits": 2
                    },
                    "totalPrice": {
                      "type": "centPrecision",
                      "currencyCode": "EUR",
                      "centAmount": 7500,
                      "fractionDigits": 2
                    },
                    "discounts": [],
                    "imageUrls": [
                      "https://example.com/item456_1.jpg",
                      "https://example.com/item456_2.jpg"
                    ]
                  },
                  {
                    "id": "item789",
                    "productId": "product123",
                    "quantity": 3,
                    "unitPrice": {
                      "type": "centPrecision",
                      "currencyCode": "EUR",
                      "centAmount": 3000,
                      "fractionDigits": 2
                    },
                    "totalPrice": {
                      "type": "centPrecision",
                      "currencyCode": "EUR",
                      "centAmount": 9000,
                      "fractionDigits": 2
                    },
                    "discounts": [
                      {
                        "code": "DISCOUNT456",
                        "amount": {
                          "type": "centPrecision",
                          "currencyCode": "EUR",
                          "centAmount": 200,
                          "fractionDigits": 2
                        }
                      }
                    ],
                    "imageUrls": [
                      "https://example.com/item789_1.jpg",
                      "https://example.com/item789_2.jpg",
                      "https://example.com/item789_3.jpg"
                    ]
                  }
                ],
                "cartState": "Active",
                "totalPrice": {
                  "type": "centPrecision",
                  "currencyCode": "EUR",
                  "centAmount": 0,
                  "fractionDigits": 2,
                  "tax": {"type": "percentage", "percentage": 10}
                },
                "shippingMode": "Multiple",
                "itemShippingAddresses": [
                  {
                    "itemId": "item123",
                    "address": {
                      "street": "123 Main St",
                      "city": "Cityville",
                      "postalCode": "12345",
                      "country": "Countryland"
                    }
                  },
                  {
                    "itemId": "item456",
                    "address": {
                      "street": "789 Oak St",
                      "city": "Townsville",
                      "postalCode": "67890",
                      "country": "Countryland"
                    }
                  },
                  {
                    "itemId": "item789",
                    "address": {
                      "street": "456 Pine St",
                      "city": "Villageton",
                      "postalCode": "56789",
                      "country": "Countryland"
                    }
                  }
                ],
                "inventoryMode": "None",
                "taxMode": "Platform",
                "taxRoundingMode": "HalfEven",
                "taxCalculationMode": "LineItemLevel",
                "origin": "Customer"
              };
              final box = Boxes.getData();
              box.add(CartModel.fromJson(data));
              for (var i = 0; i < box.length; i++) {
                log('${box.get(i)?.toJson()}');
              }
            },
            title: Text('data $index'),
          );
        },
      ),
    );
  }
}
