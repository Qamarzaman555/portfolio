import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Color? backgroundColor, textColor;
  final void Function()? onPressed;
  final String text;
  const CustomElevatedButton({
    this.backgroundColor = Colors.transparent,
    required this.text,
    required this.onPressed,
    this.textColor = Colors.white,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
      onPressed: onPressed,
      child: Text(text,
          style: Theme.of(context).primaryTextTheme.headlineLarge!.copyWith(
              fontSize: 12, color: textColor, fontWeight: FontWeight.w700)),
    );
  }
}
