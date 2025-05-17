import 'package:flutter/material.dart';
import 'package:groceries_app/config/colors/app_colors.dart';
import 'package:groceries_app/config/components/cards/product_card.dart';

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
        final item = items[index];
        return ProductCard(
          title: item['title'],
          details: item['description'],
          image: item['image'],
          price: item['price'],
          onTap: onTap,
          index: index,
        );
      },
    );
  }
}
