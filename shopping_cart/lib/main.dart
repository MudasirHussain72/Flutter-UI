import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shopping_cart/model/cart_model.dart';
import 'package:shopping_cart/view/products/products_view.dart';

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

  runApp(const MyApp());
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
      home: const ProductsView(),
    );
  }
}
