import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:movie_booking_app/configs/components/dotted_line.dart';
import 'package:movie_booking_app/configs/components/translate_animation.dart';

class ActivitiesScreen extends StatefulWidget {
  const ActivitiesScreen({Key? key}) : super(key: key);

  @override
  _ActivitiesScreenState createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen> {
  final PageController _pageController = PageController();

  final List<Map<String, String>> activityData = [
    {
      'imageUrl':
          'https://static.episodate.com/images/tv-show/thumbnail/49269.jpg',
      'name': 'Name 1',
      'dateTime': 'May 15, 20:00',
    },
    {
      'imageUrl':
          'https://static.episodate.com/images/tv-show/thumbnail/56202.jpg',
      'name': 'Name 2',
      'dateTime': 'May 16, 21:00',
    },
    // Add more activity data here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: activityData.length,
            itemBuilder: (context, index) {
              return buildActivityCard(
                imageUrl: activityData[index]['imageUrl']!,
                name: activityData[index]['name']!,
                dateTime: activityData[index]['dateTime']!,
              );
            },
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: 20,
            child: IconButton(
              onPressed: () {
                if (_pageController.hasClients) {
                  _pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            right: 20,
            child: IconButton(
              onPressed: () {
                if (_pageController.hasClients) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              icon: const Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildActivityCard(
      {required String imageUrl,
      required String name,
      required String dateTime}) {
    return Stack(
      children: [
        Image.network(
          imageUrl,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 170,
          left: 40,
          right: 40,
          bottom: 160,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
            child: TranslateRightAnimation(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 2),
                      blurRadius: 10,
                      spreadRadius: 3,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Stack(
                    children: [
                      Image.network(
                        imageUrl,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                            child: Column(
                              children: [
                                const DottedLine(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 20),
                                      Text(
                                        name,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 28,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        dateTime,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Image.asset(
                                        'assets/qr.png',
                                        height: 100,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(height: 20),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
