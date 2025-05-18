import 'package:flutter/material.dart';
import 'package:groceries_app/config/colors/app_colors.dart';

class ProductAmountButton extends StatefulWidget {
  final String price;
  const ProductAmountButton({super.key, required this.price});

  @override
  State<ProductAmountButton> createState() => _ProductAmountButtonState();
}

class _ProductAmountButtonState extends State<ProductAmountButton> {
  int _productAmount = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            if (_productAmount > 1) {
              setState(() {
                _productAmount--;
              });
            }
          },
          icon: Icon(Icons.remove, size: 22),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 1.5),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              '$_productAmount',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              _productAmount++;
            });
          },
          icon: Icon(Icons.add, size: 22, color: AppColors.primaryColor),
        ),
        const Spacer(),
        Text(
          '\$${widget.price}',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
