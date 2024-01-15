import 'package:flutter/material.dart';
import 'package:shopping_cart/res/color.dart';
import 'package:shopping_cart/res/components/loading_widget.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final Color color, textColor, buttonColor;
  final bool loading;
  final double height;
  final double borderRadius;
  const RoundButton(
      {Key? key,
      required this.title,
      required this.onPress,
      this.height = 50.0,
      this.buttonColor = AppColors.darKModePrimaryButtonColor,
      this.textColor = AppColors.whiteColor,
      this.color = AppColors.primaryColor,
      this.borderRadius = 12.0,
      this.loading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: loading ? null : onPress,
      child: Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: loading
            ? const LoadingWidget()
            : Center(
                child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: 16, color: textColor),
              )),
      ),
    );
  }
}