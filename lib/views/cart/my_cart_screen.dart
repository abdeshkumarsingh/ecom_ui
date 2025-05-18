import 'package:flutter/material.dart';
import 'package:groceries_app/config/components/buttons/wide_button.dart';
import 'package:groceries_app/config/components/cards/product_card.dart';
import 'package:groceries_app/config/components/grids/t_grid_layout.dart';
import 'package:groceries_app/config/components/widgets/cart_items.dart';
import 'package:groceries_app/models/product/product_model.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
              child: Center(
                child: Text(
                  'My cart',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 1,
              color: const Color.fromARGB(255, 196, 192, 192),
            ),
            TGridLayout(
              itemBuilder:
                  (_, index) => CartItems(
                    title: 'Title',
                    description: 'Description',
                    price: '10',
                  ),
              itemCount: 7,
              crossAxisCount: 1,
              mainAxisExtent: 120,
            ),
            SizedBox(height: 10),
            WideButton(name: 'Go to Checkout', onPressed: () {}),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
