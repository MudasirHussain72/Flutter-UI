import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shopping_cart/model/cart_model.dart';
import 'package:shopping_cart/view/products/products_view.dart';
import 'package:shopping_cart/view_model/services/hive_boxes.dart';

extension IterableExtensions<T> on Iterable<T> {
  T? firstWhereOrNull(bool Function(T) test) {
    for (final element in this) {
      if (test(element)) {
        return element;
      }
    }
    return null;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  // Register all adapters
  Hive.registerAdapter(CartModelAdapter());
  Hive.registerAdapter(LastModifiedByAdapter());
  Hive.registerAdapter(CreatedByAdapter());
  Hive.registerAdapter(LineItemsAdapter());
  Hive.registerAdapter(UnitPriceAdapter());
  Hive.registerAdapter(DiscountsAdapter());
  Hive.registerAdapter(TotalPriceAdapter());
  Hive.registerAdapter(TaxAdapter());
  Hive.registerAdapter(ItemShippingAddressesAdapter());
  Hive.registerAdapter(AddressAdapter());
  await Hive.openBox<CartModel>('cartBox');
  final box = Boxes.getData();
  final jsonString = await readJsonFromAsset('assets/cart.json');
  final jsonData = json.decode(jsonString);

  final cartModel = CartModel.fromJson(jsonData);

  // Check if a cart with the same ID already exists in the Hive box
  final existingCart = box.values.firstWhereOrNull(
    (cart) => cart.id == cartModel.id,
  );

  if (existingCart == null) {
    // If the cart doesn't exist in the Hive box, add it
    box.add(cartModel);
    log('Cart added to Hive box: ${cartModel.toJson()}');
  } else {
    log('Cart with ID ${cartModel.id} already exists in Hive box.');
  }
  runApp(const MyApp());
}

Future<String> readJsonFromAsset(String assetPath) async {
  try {
    return await rootBundle.loadString(assetPath);
  } catch (e) {
    log('Error reading JSON asset: $e');
    return ''; // Return an empty string or handle the error as needed
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProductsView(),
    );
  }
}
