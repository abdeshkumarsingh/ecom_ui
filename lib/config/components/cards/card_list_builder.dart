import 'package:flutter/material.dart';
import 'package:groceries_app/config/colors/app_colors.dart';

class CardListBuilder extends StatelessWidget {
  final List<dynamic> items;
  final Axis scrollDirection;
  final Function(int index) onTap;

  const CardListBuilder({
    super.key,
    required this.items,
    required this.scrollDirection,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
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
                  items[index]['image'],
                  height: 80,
                  width: 80,
                ),
              ),
              SizedBox(height: 10),
              Text(
                items[index]['title'],
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                items[index]['description'],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '\$${items[index]['price']}',
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
      },
    );
  }
}
