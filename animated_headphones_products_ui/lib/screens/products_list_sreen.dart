import 'package:animated_headphones_products_ui/models/headphones_model.dart';
import 'package:flutter/material.dart';

class ProductsListScreen extends StatefulWidget {
  const ProductsListScreen({Key? key});

  @override
  State<ProductsListScreen> createState() => _ProductsListScreenState();
}

class _ProductsListScreenState extends State<ProductsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBEBEB),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16), // Consistent padding
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16), // Padding for brand name
                    child: const Text(
                      'Wireless\nHeadphones',
                      style: TextStyle(
                        fontSize: 24, // Adjust font size as needed
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  RotationTransition(
                    turns: const AlwaysStoppedAnimation(270 / 360),
                    // child: Container(
                    //   padding:
                    //       const EdgeInsets.all(16), // Padding for brand logo
                    //   // width: 100, // Adjust the width as needed
                    //   // height: 100, // Adjust the height as needed
                    //   decoration: const BoxDecoration(
                    //     image: DecorationImage(
                    //       // fit: BoxFit.contain,
                    //       image: AssetImage('assets/images/bose logo.png'),
                    //     ),
                    //   ),
                    // ),
                    child: Image.asset(
                        height: 100,
                        fit: BoxFit.fitWidth,
                        'assets/images/bose logo.png'),
                  ),
                ],
              ),
            ),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.600,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: headphones.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10), // Consistent margin
                  padding: const EdgeInsets.all(10), // Consistent padding
                  width: 323,
                  height: 495,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(34)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage(headphones[index].image),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            headphones[index].name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            headphones[index].price,
                            style: const TextStyle(
                              color: Colors.blue, // Adjust text color as needed
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
