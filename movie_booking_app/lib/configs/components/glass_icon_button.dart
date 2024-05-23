import 'dart:ui';
import 'package:flutter/material.dart';

class GlassIconButton extends StatelessWidget {
  const GlassIconButton({
    super.key,
    required this.icon,
    this.onTap,
    this.height = 70,
    this.width = 70,
  });

  final Widget icon;
  final VoidCallback? onTap;
  final double? height, width;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: Colors.white.withOpacity(.35),
            ),
            child: icon,
          ),
        ),
      ),
    );
  }
}
