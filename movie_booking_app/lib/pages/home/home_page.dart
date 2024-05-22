import 'dart:math';
import 'package:flutter/material.dart';
import 'package:movie_booking_app/models/movie_model.dart';
import 'package:movie_booking_app/pages/home/widgets/all_movies.dart';
import 'package:movie_booking_app/pages/home/widgets/app_header.dart';
import 'package:movie_booking_app/pages/home/widgets/app_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Size size;
  double top = -300;
  double left = -300;
  late double maxTop;
  late double maxLeft;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final moviesSize = calculateMoviesSize();
      setState(() {
        maxTop = (size.height - moviesSize.height)
            .clamp(double.negativeInfinity, 0.0);
        maxLeft =
            (size.width - moviesSize.width).clamp(double.negativeInfinity, 0.0);
      });
    });
  }

  Size calculateMoviesSize() {
    final columns = (sqrt(movies.length)).toInt();
    final width = columns * 320;
    final rows = (movies.length / columns).ceil();
    final height = rows * 480;
    return Size(width.toDouble(), height.toDouble());
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            top = (top + (details.delta.dy * 1.5)).clamp(maxTop, 0.0);
            left = (left + (details.delta.dx * 1.5)).clamp(maxLeft, 0.0);
          });
        },
        child: Container(
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 700),
                curve: Curves.easeOut,
                top: top,
                left: left,
                child: const AllMovies(),
              ),
              const AppHeader(),
              const AppNavigation()
            ],
          ),
        ),
      ),
    );
  }
}
