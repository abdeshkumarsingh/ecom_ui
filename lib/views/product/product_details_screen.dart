import 'package:flutter/material.dart';
import 'package:groceries_app/config/colors/app_colors.dart';
import 'package:groceries_app/config/components/buttons/product_amount_button.dart';
import 'package:groceries_app/config/components/buttons/wide_button.dart';
import 'package:groceries_app/config/components/sliders/image_slider.dart';
import 'package:groceries_app/config/components/sliders/product_image_slider.dart';
import 'package:groceries_app/config/images/images.dart';
import 'package:groceries_app/models/product/product_model.dart';

class ProductDetailsScreen extends StatefulWidget {
  final ProductModel productModel;
  const ProductDetailsScreen({super.key, required this.productModel});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  bool _isExpanded = false;
  int _productAmount = 1;
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
              ProductImageSlider(
                imageUrls: widget.productModel.images,
                height: 300,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.productModel.title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border_outlined, size: 22),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        textAlign: TextAlign.start,
                        widget.productModel.description,
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ProductAmountButton(
                      price: widget.productModel.price,
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        // Product Detail (Expandable)
                        ExpansionTile(
                          title: Text(
                            "Product Detail",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(
                            _isExpanded
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                          ),
                          initiallyExpanded: _isExpanded,
                          onExpansionChanged: (expanded) {
                            setState(() {
                              _isExpanded = expanded;
                            });
                          },
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                              ),
                              child: Text(
                                widget.productModel.details,
                                style: TextStyle(color: Colors.black54),
                              ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),

                        // Nutritions (Row with trailing chip and arrow)
                        ListTile(
                          title: Text(
                            "Nutritions",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "100gr",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Icon(Icons.chevron_right),
                            ],
                          ),
                          onTap: () {
                            // Navigate or do something
                          },
                        ),

                        // Review (Row with star rating)
                        ListTile(
                          title: Text(
                            "Review",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: List.generate(5, (index) {
                                  return Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 18,
                                  );
                                }),
                              ),
                              const SizedBox(width: 10),
                              Icon(Icons.chevron_right),
                            ],
                          ),
                          onTap: () {
                            // Navigate or show review
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              WideButton(name: 'Add To Basket', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
