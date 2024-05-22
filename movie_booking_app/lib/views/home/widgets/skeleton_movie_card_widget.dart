import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SkeletonMovieCard extends StatelessWidget {
  const SkeletonMovieCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[400]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        margin: const EdgeInsets.all(10),
        width: 250,
        height: 430,
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
