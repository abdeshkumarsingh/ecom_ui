import 'package:flutter/material.dart';
import 'package:groceries_app/config/colors/app_colors.dart';
import 'package:groceries_app/config/components/buttons/wide_button.dart';
import 'package:groceries_app/config/components/textfields/auth_text_field.dart';
import 'package:groceries_app/config/images/images.dart';
import 'package:groceries_app/config/routes/routes_names.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Login Screen')),
      body: Stack(
        children: [
          Image.asset(
            Images.number,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.shopping_cart, size: 100),
                    const SizedBox(height: 80),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Loging',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textBlackColor,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Enter your email and password to continue',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.textBlackColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    AuthTextField(
                      labelText: 'Email',
                      isPassword: false,
                      hintText: 'Enter your email',
                    ),
                    SizedBox(height: 40),
                    AuthTextField(
                      labelText: 'Password',
                      isPassword: true,
                      hintText: 'Enter your password',
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.textBlackColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    WideButton(
                      name: 'Log In',
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesNames.home);
                      },
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.textBlackColor,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, RoutesNames.signup);
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.successColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
