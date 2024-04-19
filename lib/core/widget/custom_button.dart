import 'package:flutter/material.dart';
import 'package:payment/core/utils/style.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 73,
        decoration: BoxDecoration(
            color: const Color(0xff34A853),
            borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            title,
            style: Style.style22,
          ),
        ),
      ),
    );
  }
}
