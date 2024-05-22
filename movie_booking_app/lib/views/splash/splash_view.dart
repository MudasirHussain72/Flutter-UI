import 'package:flutter/material.dart';
import 'package:movie_booking_app/services/splash/splash_services.dart';
import 'package:movie_booking_app/views/splash/widgets/scrolling_lists.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    SplashServices().checkAuthentication(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned(
              top: -10,
              child: Row(
                children: [
                  ScrollingList(initialIndex: 0),
                  ScrollingList(initialIndex: 1),
                  ScrollingList(initialIndex: 2),
                ],
              )),
          Positioned(
              bottom: 0,
              child: Container(
                height: height * 0.6,
                width: width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.transparent,
                  Theme.of(context).colorScheme.primary.withOpacity(0.5),
                  Theme.of(context).colorScheme.primary.withOpacity(0.9),
                  Theme.of(context).colorScheme.primary,
                ], begin: Alignment.topCenter, end: Alignment.center)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.24),
                      Text(
                        "CINEMAX",
                        textAlign: TextAlign.center,
                        style: textTheme.displaySmall!
                            .copyWith(color: Colors.red, fontSize: 28),
                      ),
                      SizedBox(height: height * 0.03),
                      Text(
                        "Best option to book a movie ticket",
                        textAlign: TextAlign.center,
                        style: textTheme.bodyMedium!.copyWith(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
