import 'package:flutter/material.dart';
import 'package:groceries_app/config/components/buttons/wide_button.dart';
import 'package:groceries_app/config/components/dialog_box/order_failed_dialog.dart';
import 'package:groceries_app/config/images/images.dart';
import 'package:groceries_app/config/routes/routes_names.dart';

class OrderCompleteScreen extends StatefulWidget {
  const OrderCompleteScreen({super.key});

  @override
  State<OrderCompleteScreen> createState() => _OrderCompleteScreenState();
}

class _OrderCompleteScreenState extends State<OrderCompleteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset(Images.number, fit: BoxFit.cover)),
          Center(
            child: Column(
              children: [
                SizedBox(height: 40),
                Image.asset(Images.delivery, width: 300),
                SizedBox(height: 20),
                Text(
                  'Your order has been \n accepted',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Your items has been placed and is on \n it\'s way to begin processed',

                  textAlign: TextAlign.center,
                ),
                Spacer(),
                WideButton(
                  name: 'Track Order',
                  onPressed: () {
                    showDialog(
                      
                      barrierDismissible: true,
                      context: context,
                      builder: (context) {
                        return OrderFailedDialog();
                      },
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        RoutesNames.home,
                        (route) => false,
                      );
                    },
                    child: Text(
                      'Back to home',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
