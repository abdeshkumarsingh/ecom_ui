import 'package:flutter/material.dart';
import 'package:groceries_app/config/components/bottom_sheet/checkout_bottom_sheet.dart';
import 'package:groceries_app/config/components/buttons/wide_button.dart';
import 'package:groceries_app/config/components/cards/product_card.dart';
import 'package:groceries_app/config/components/grids/t_grid_layout.dart';
import 'package:groceries_app/config/components/widgets/cart_items.dart';
import 'package:groceries_app/config/routes/routes_names.dart';
import 'package:groceries_app/models/product/product_model.dart';
import 'package:groceries_app/utils/product_list/product_list.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  final List<ProductModel> _products =
      ProductList.beverages
          .map((element) => ProductModel.fromJson(element))
          .toList();
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
              itemBuilder: (_, index) {
                final product = _products[index];
                return CartItems(
                  image: product.image,
                  title: product.title,
                  description: product.description,
                  price: product.price,
                  ontap:
                      () => Navigator.pushNamed(
                        context,
                        RoutesNames.productDetails,
                        arguments: product,
                      ),
                  onCancel: () {
                    setState(() {
                      _products.removeAt(index);
                    });
                  },
                );
              },
              itemCount: _products.length,
              crossAxisCount: 1,
              mainAxisExtent: 120,
            ),
            SizedBox(height: 10),
            WideButton(
              name: 'Go to Checkout',
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return CheckoutBottomSheet(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          RoutesNames.orderComplete,
                          (route) => false,
                        );
                      },
                    );
                  },
                );
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
