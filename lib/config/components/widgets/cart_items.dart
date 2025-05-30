import 'package:flutter/material.dart';
import 'package:groceries_app/config/components/buttons/product_amount_button.dart';
import 'package:groceries_app/config/images/images.dart';

class CartItems extends StatelessWidget {
  final String title;
  final String description;
  final String price;
  final String image;
  final VoidCallback? ontap;
  final VoidCallback? onCancel;
  const CartItems({
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ListTile(
          leading: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Image.network(image, width: 70, errorBuilder: (context, error, stackTrace) => Image.asset(Images.defaultImg, width: 70,),),
          ),
          title: GestureDetector(
            onTap: ontap,
            child: Row(
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
                IconButton(
                  onPressed: onCancel,
                  icon: Icon(Icons.close, color: Colors.grey),
                ),
              ],
            ),
          ),
          subtitle: ProductAmountButton(price: price),
        ),
        Container(
          height: 1,
          color: Colors.grey[400],
          width: MediaQuery.of(context).size.width * 0.9,
        ),
      ],
    );
  }
}
