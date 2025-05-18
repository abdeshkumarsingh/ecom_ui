import 'package:flutter/material.dart';
import 'package:groceries_app/config/components/cards/product_card.dart';
import 'package:groceries_app/config/components/filter/filter_bottom_sheet.dart';
import 'package:groceries_app/config/components/grids/t_grid_layout.dart';
import 'package:groceries_app/models/product/product_model.dart';

class BeveragesScreen extends StatefulWidget {
  final List<ProductModel> products;
  const BeveragesScreen({super.key, required this.products});

  @override
  State<BeveragesScreen> createState() => _BeveragesScreenState();
}

class _BeveragesScreenState extends State<BeveragesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_alt),
            onPressed: () {
              // Add share functionality here
              showModalBottomSheet(
                context: context,
                isDismissible: true,
                backgroundColor: Colors.transparent,
                isScrollControlled: true,
                builder: (context) => FilterBottomSheet(),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TGridLayout(
              itemBuilder: (context, index) {
                final product = widget.products[index];
                return ProductCard(
                  title: product.title,
                  details: product.description,
                  image: product.image,
                  price: product.price,
                  onTap: (value) {},
                  index: index,
                );
              },
              itemCount: widget.products.length,
              mainAxisExtent: 220,
            ),
          ),
        ),
      ),
    );
  }
}
