import 'package:flutter/material.dart';
import 'package:groceries_app/config/colors/app_colors.dart';
import 'package:groceries_app/config/components/buttons/wide_button.dart';
import 'package:groceries_app/config/components/textfields/number_text_field.dart';
import 'package:groceries_app/config/images/images.dart';
import 'package:groceries_app/config/routes/routes_names.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Images.signin,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get your groceries \n with ShopEasy',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textBlackColor,
                  ),
                ),
                const SizedBox(height: 10),
                NumberTextField(hintText: 'Enter your phone number'),
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    'Or connect with Social Media',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                WideButton(
                  isIcon: true,
                  imagePath: Images.google,
                  name: 'Continue with Google',
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesNames.number);
                  },
                  color: Colors.blueAccent,
                ),
                const SizedBox(height: 20),
                WideButton(
                  isIcon: true,
                  imagePath: Images.facebook,
                  name: 'Continue with Facebook',
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesNames.number);
                  },
                  color: const Color.fromARGB(255, 4, 87, 165),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
