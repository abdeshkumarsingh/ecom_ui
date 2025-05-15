import 'package:flutter/material.dart';
import 'package:groceries_app/config/colors/app_colors.dart';

class NumberTextField extends StatelessWidget {
  final String? hintText;
  final IconData icon;
  const NumberTextField({
    super.key,
    required this.hintText,
    this.icon = Icons.call_outlined,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(icon, color: AppColors.textBlackColor),
            const SizedBox(width: 10),
            Text(
              '+977',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: AppColors.textBlackColor,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
        Divider(color: AppColors.textBlackColor, thickness: 1, height: 20),
      ],
    );
  }
}
