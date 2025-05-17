import 'package:flutter/material.dart';
import 'package:groceries_app/config/components/cards/explore_product_card.dart';
import 'package:groceries_app/config/components/grids/t_grid_layout.dart';
import 'package:groceries_app/config/components/search_bar/search_bar_with_icon.dart';
import 'package:groceries_app/config/images/images.dart';
import 'package:groceries_app/config/routes/routes_names.dart';
import 'package:groceries_app/models/product/product_model.dart';
import 'package:groceries_app/utils/product_list/product_list.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Find Products',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SearchBarWithIcon(hintText: 'Search on store'),
              const SizedBox(height: 20),
              TGridLayout(
                itemBuilder: (_, index) {
                  final product = ProductList.categories[index];
                  return ExploreProductCard(
                    title: product['title'],
                    image: product['image'],
                    color: Color(int.parse(product['color'])),
                    onTap: () {
                      Navigator.pushNamed(context, RoutesNames.beverages, arguments: ProductList.beverages.map((e) => ProductModel.fromJson(e)).toList());
                    },
                  );
                },
                itemCount: ProductList.categories.length,
                mainAxisExtent: 170,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
