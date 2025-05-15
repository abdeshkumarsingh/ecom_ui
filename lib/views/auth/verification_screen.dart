import 'package:flutter/material.dart';
import 'package:groceries_app/config/colors/app_colors.dart';
import 'package:groceries_app/config/images/images.dart';
import 'package:groceries_app/config/routes/routes_names.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Image.asset(Images.number, fit: BoxFit.cover)),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios_new),
            ),
          ),
          body: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Enter your 4 digit code',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textBlackColor,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text('Code'),
                        Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: '----',
                                      hintStyle: TextStyle(
                                        fontSize: 18,
                                        color: AppColors.textBlackColor,
                                        letterSpacing: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: AppColors.textBlackColor,
                              thickness: 1,
                              height: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Didn\'t receive the code?',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, RoutesNames.selectLocation);
            },
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primaryColor,
              ),
              constraints: const BoxConstraints.expand(),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.backgroundColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
