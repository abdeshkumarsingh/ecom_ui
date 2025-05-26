import 'package:flutter/material.dart';
import 'package:groceries_app/config/components/buttons/product_amount_button.dart';
import 'package:groceries_app/config/images/images.dart';

class FavouriteItems extends StatelessWidget {
  final String title;
  final String description;
  final String price;
  final String image;
  final VoidCallback? ontap;
  final GestureLongPressStartCallback? onCancel;
  const FavouriteItems({
    super.key,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
    this.onCancel,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPressStart: onCancel,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            leading: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Image.network(
                image,
                width: 70,
                errorBuilder:
                    (context, error, stackTrace) =>
                        Image.asset(Images.defaultImg, width: 70),
              ),
            ),
            title: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(description, style: TextStyle(fontSize: 12)),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      '\$$price',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: ontap,
                      icon: Icon(Icons.arrow_forward_ios, size: 17),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            color: Colors.grey[400],
            width: MediaQuery.of(context).size.width * 0.9,
          ),
        ],
      ),
    );
  }
}
