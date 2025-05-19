import 'package:flutter/material.dart';
import 'package:groceries_app/config/components/buttons/wide_button.dart';
import 'package:groceries_app/config/images/images.dart';
import 'package:groceries_app/config/routes/routes_names.dart';

class OrderFailedDialog extends StatelessWidget {
  const OrderFailedDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8, // control width
          child: Column(
            mainAxisSize: MainAxisSize.min, // make it as small as needed
            children: [
              const SizedBox(height: 40),
              Image.network(Images.failed, width: 200),
              const SizedBox(height: 20),
              const Text(
                'Oops! Order Failed',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'Something went terribly wrong',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              WideButton(
                name: 'Please try Again',
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    RoutesNames.home,
                    (route) => false,
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
                  }, // Replace with your logic
                  child: Text(
                    'Back to home',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
