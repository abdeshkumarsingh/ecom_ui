import 'package:flutter/material.dart';
import 'package:groceries_app/config/colors/app_colors.dart';
import 'package:groceries_app/config/components/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:groceries_app/config/components/cards/card_list_builder.dart';
import 'package:groceries_app/config/components/cards/category_name_with_image_card.dart';
import 'package:groceries_app/config/components/search_bar/search_bar_with_icon.dart';
import 'package:groceries_app/config/components/sliders/image_slider.dart';
import 'package:groceries_app/config/images/images.dart';
import 'package:groceries_app/config/routes/routes_names.dart';
import 'package:groceries_app/models/product/product_model.dart';
import 'package:groceries_app/utils/groceries/groceries_list.dart';
import 'package:groceries_app/utils/product_list/product_list.dart';
import 'package:groceries_app/views/cart/my_cart_screen.dart';
import 'package:groceries_app/views/home/shopping_screen.dart';
import 'package:groceries_app/views/product/explore_screen.dart';
import 'package:groceries_app/views/views.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _widgets = [
    const ShoppingScreen(),
    const ExploreScreen(),
    const MyCartScreen(),
    const FavoritesScreen(),
    const ProfileScreen(),
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgets[_currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          // Handle bottom navigation bar tap
          setState(() {
            // Update the current index
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
