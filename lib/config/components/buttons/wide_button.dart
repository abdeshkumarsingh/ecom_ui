import 'package:flutter/material.dart';
import 'package:groceries_app/config/colors/app_colors.dart';

class WideButton extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final double width;
  final double height;
  final double fontSize;
  final bool isIcon;
  final String? imagePath;

  const WideButton({
    super.key,
    required this.name,
    required this.onPressed,
    this.color = AppColors.primaryColor,
    this.textColor = AppColors.textwhiteColor,
    this.width = 350,
    this.height = 70,
    this.fontSize = 18,
    this.isIcon = false,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isIcon ? Image.asset(imagePath!, height: 40) : SizedBox(),
                const SizedBox(width: 20),
                Text(
                  name,
                  style: TextStyle(
                    color: textColor,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
