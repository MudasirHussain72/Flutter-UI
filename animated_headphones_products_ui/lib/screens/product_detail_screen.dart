import 'package:animated_headphones_products_ui/models/headphones_model.dart';
import 'package:flutter/material.dart';
import 'package:persistent_shopping_cart/model/cart_model.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';

class ProductDetailScreen extends StatefulWidget {
  final HeadphonesModel item;
  const ProductDetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  double height = 1;
  double width = 1;
  Color color = Colors.black;
  BorderRadiusGeometry radiusGeometry = BorderRadius.circular(100);
  bool isContainerVisible = false;
  bool showDetails = false;

  @override
  void initState() {
    super.initState();
    // Set a delay to show the animation after the screen is built
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        isContainerVisible = true;
        height = MediaQuery.of(context).size.height * 4;
        width = MediaQuery.of(context).size.height * 4;
        radiusGeometry = BorderRadius.circular(50);
      });
    });
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        showDetails = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBEBEB),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: AnimatedContainer(
                height: height,
                width: width,
                decoration:
                    BoxDecoration(color: color, borderRadius: radiusGeometry),
                duration: const Duration(milliseconds: 2000),
                curve: Curves.fastOutSlowIn,
                child: showDetails
                    ? Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 120),
                                  height: 450,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/Bitmap.png"))),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          2.5,
                                      height: 50,
                                      color: const Color(0xff606060),
                                      child: const Center(
                                        child: Text("Limited Edition",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            )),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white),
                                        ),
                                        const SizedBox(width: 5),
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.orange),
                                        ),
                                        const SizedBox(width: 5),
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.amber),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                    "QuietComfort 35 wireless headphones II",
                                    style: TextStyle(
                                      fontSize: 26,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    )),
                                const SizedBox(height: 20),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: PersistentShoppingCart()
                                      .showAndUpdateCartItemWidget(
                                    inCartWidget: Container(
                                      width: 202,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 18, vertical: 16),
                                      child: Row(
                                        // mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Text(
                                            'Remove from ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ), // <-- Text
                                          const Icon(
                                            // <-- Icon
                                            Icons.shopping_cart,
                                            // size: 24.0,
                                            color: Colors.black,
                                          ),
                                        ],
                                      ),
                                    ),
                                    notInCartWidget: Container(
                                      width: 150,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 18, vertical: 16),
                                      child: Row(
                                        // mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Icon(
                                            // <-- Icon
                                            Icons.shopping_cart,
                                            // size: 24.0,
                                            color: Colors.black,
                                          ),
                                          const Text(
                                            '\$449.99',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ), // <-- Text
                                        ],
                                      ),
                                    ),
                                    product: PersistentShoppingCartItem(
                                        productId:
                                            widget.item.productId.toString(),
                                        productName: widget.item.productName,
                                        unitPrice: double.parse(
                                            widget.item.unitPrice.toString()),
                                        productThumbnail: widget
                                            .item.productThumbnail
                                            .toString(),
                                        quantity: 1),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: const EdgeInsets.only(top: 120),
                              height: 10,
                              width: 80,
                              child: RotationTransition(
                                turns: const AlwaysStoppedAnimation(270 / 360),
                                child: Image.asset(
                                  fit: BoxFit.cover,
                                  'assets/images/bose logo.png',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    : const SizedBox()),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
