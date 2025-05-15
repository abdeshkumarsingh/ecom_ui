import 'package:flutter/material.dart';
import 'package:groceries_app/config/colors/app_colors.dart';

class AuthTextField extends StatelessWidget {
  final bool isPassword;
  final bool isObfuscated;
  final String hintText;
  final String labelText;
  const AuthTextField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.isPassword = false,
    this.isObfuscated = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText, style: TextStyle(fontSize: 16)),
        Row(
          children: [
            Flexible(
              child: TextField(
                obscureText: isPassword && isObfuscated,
                decoration: InputDecoration(
                  hintText: hintText,
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
            isPassword
                ? Icon(isObfuscated ? Icons.visibility : Icons.visibility_off)
                : SizedBox(),
          ],
        ),
        SizedBox(height: 2),
        Container(height: 1, color: AppColors.textBlackColor),
      ],
    );
  }
}
