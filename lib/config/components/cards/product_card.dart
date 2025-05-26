import 'package:flutter/material.dart';
import 'package:groceries_app/config/colors/app_colors.dart';
import 'package:groceries_app/config/images/images.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String details;
  final String image;
  final String price;
  final Function(int index) onTap;
  final int index;

  const ProductCard({
    super.key,
    required this.title,
    required this.details,
    required this.image,
    required this.price,
    required this.onTap,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => onTap(index),
            child: Image.network(
              image,
              height: 80,
              width: 80,
              errorBuilder: (context, error, stackTrace) {
                return Image.asset(Images.defaultImg, height: 80, width: 80);
              },
            ),
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            details,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '\$$price',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              IconButton(
                icon: Icon(
                  Icons.add_box_rounded,
                  color: AppColors.primaryColor,
                ),
                iconSize: 40,
                onPressed: () {
                  // Add to cart action
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
