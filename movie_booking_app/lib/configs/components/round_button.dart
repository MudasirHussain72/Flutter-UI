import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton(
      {super.key,
      this.color = Colors.red,
      this.textColor = Colors.white,
      required this.title,
      required this.onPressed,
      this.height = 55.0,
      this.width = double.infinity,
      this.borderRadius = 8,
      this.textSize = 18,
      this.loading = false});

  final bool loading;
  final String title;
  final VoidCallback onPressed;
  final Color color, textColor;
  final double height, width, borderRadius;
  final double textSize;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: loading
            ? const Center(
                child: CircularProgressIndicator(color: Colors.white))
            : Center(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontSize: textSize, height: 0, color: textColor),
                ),
              ),
      ),
    );
  }
}
