import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:groceries_app/config/colors/app_colors.dart';
import 'package:groceries_app/config/components/cards/card_list_builder.dart';
import 'package:groceries_app/config/components/cards/category_name_with_image_card.dart';
import 'package:groceries_app/config/components/search_bar/search_bar_with_icon.dart';
import 'package:groceries_app/config/components/sliders/image_slider.dart';
import 'package:groceries_app/config/images/images.dart';
import 'package:groceries_app/config/routes/routes_names.dart';
import 'package:groceries_app/models/product/product_model.dart';
import 'package:groceries_app/utils/groceries/groceries_list.dart';
import 'package:groceries_app/utils/product_list/product_list.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(Icons.shopping_cart, size: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on),
                  Text(
                    'Buddhanilkantha, kathmandu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SearchBarWithIcon(hintText: 'Search on store'),
              const SizedBox(height: 20),
              ImageSlider(
                imageUrls: [
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1024px-Facebook_Logo_%282019%29.png',
                  'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Exclusive Offers',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 200,
                child: CardListBuilder(
                  items: ProductList.exclusive,
                  scrollDirection: Axis.horizontal,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      RoutesNames.productDetails,
                      arguments: ProductModel.fromJson(ProductList.exclusive[0]
                      ),
                    );
                  },
                ),
              ),
              // const SizedBox(height: 20),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       'Best Selling',
              //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              //     ),
              //     TextButton(
              //       onPressed: () {},
              //       child: Text(
              //         'See all',
              //         style: TextStyle(
              //           color: AppColors.primaryColor,
              //           fontSize: 17,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // const SizedBox(height: 20),
              // SizedBox(
              //   height: 200,
              //   child: CardListBuilder(
              //     items: ProductList.selling,
              //     scrollDirection: Axis.horizontal,
              //     onTap: () {
              //       Navigator.pushNamed(context, RoutesNames.productDetails);
              //     },
              //   ),
              // ),
              // const SizedBox(height: 20),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       'Groceries',
              //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              //     ),
              //     TextButton(
              //       onPressed: () {},
              //       child: Text(
              //         'See all',
              //         style: TextStyle(
              //           color: AppColors.primaryColor,
              //           fontSize: 17,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // const SizedBox(height: 20),
              // SizedBox(
              //   height: 100,
              //   child: CategoryNameWithImageCard(
              //     groceries: GroceriesList.groceries,
              //   ),
              // ),
              // const SizedBox(height: 20),
              // SizedBox(
              //   height: 200,
              //   child: CardListBuilder(
              //     items: ProductList.selling,
              //     scrollDirection: Axis.horizontal,
              //     onTap: () {
              //       Navigator.pushNamed(context, RoutesNames.productDetails);
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
