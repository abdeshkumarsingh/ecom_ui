import 'package:flutter/material.dart';
import 'package:groceries_app/config/images/images.dart';

class ExploreProductCard extends StatelessWidget {
  final String image;
  final String title;
  final double imageHeight;
  final Color color;
  final double height;
  final double width;
  final double borderRadius;
  final VoidCallback? onTap;

  const ExploreProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.color,
    this.height = 150,
    this.width = 120,
    this.borderRadius = 10,
    this.imageHeight = 80,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: Colors.grey, width: 2),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(image, height: imageHeight, errorBuilder: (context, error, stackTrace) => Image.asset(Images.defaultImg, height: imageHeight,),),
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
