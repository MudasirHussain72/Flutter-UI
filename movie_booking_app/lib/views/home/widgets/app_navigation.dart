import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppNavigation extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTabSelected;

  const AppNavigation({
    super.key,
    required this.currentIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 25,
      left: 50,
      right: 50,
      child: SafeArea(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
              height: 70,
              color: Colors.white.withOpacity(.35),
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.video_camera_back_rounded,
                        color: currentIndex == 0 ? Colors.yellow : Colors.white,
                      ),
                      onPressed: () => onTabSelected(0),
                    ),
                    GestureDetector(
                      onTap: () => onTabSelected(1),
                      child: SvgPicture.asset(
                        'assets/icons/play-square.svg',
                        height: 24,
                        width: 24,
                        color: currentIndex == 1 ? Colors.yellow : Colors.white,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.local_activity,
                        color: currentIndex == 2 ? Colors.yellow : Colors.white,
                      ),
                      onPressed: () => onTabSelected(2),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.person,
                        color: currentIndex == 3 ? Colors.yellow : Colors.white,
                      ),
                      onPressed: () => onTabSelected(3),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
