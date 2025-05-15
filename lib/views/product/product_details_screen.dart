import 'package:flutter/material.dart';
import 'package:groceries_app/config/components/sliders/image_slider.dart';
import 'package:groceries_app/config/images/images.dart';
import 'package:groceries_app/models/product/product_model.dart';

class ProductDetailsScreen extends StatefulWidget {
  final ProductModel productModel;
  const ProductDetailsScreen({super.key, required this.productModel});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
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
            icon: const Icon(Icons.ios_share_sharp),
            onPressed: () {
              // Add share functionality here
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageSlider(
                imageUrls: widget.productModel.images,
                height: 400,
              ),
              SizedBox(height: 20),
              Text('More details about the product will be shown here.'),
            ],
          ),
        ),
      ),
    );
  }
}
