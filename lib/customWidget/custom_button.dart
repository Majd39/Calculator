import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    required this.fontColor,
    required this.color,
    this.onTap,
  });

  final double width;
  final double height;
  final String text;
  final Color fontColor;
  final void Function()? onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
        // Add bounce animation (as a placeholder, see interactive animation section)
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15), // Rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4), // Deeper shadow for 3D effect
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(3, 5), // Adjusted for a 3D effect
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 36, // Adjust the font size for better balance
              color: fontColor,
            ),
          ),
        ),
      ),
    );
  }
}
