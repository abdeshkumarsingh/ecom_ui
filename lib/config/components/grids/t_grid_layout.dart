import 'package:flutter/material.dart';

class TGridLayout extends StatelessWidget {
  final Widget? Function(BuildContext, int) itemBuilder;
  final int itemCount;
  final double crossAxisSpacing;
  final double? mainAxisExtent;
  const TGridLayout({super.key, required this.itemBuilder, required this.itemCount, this.crossAxisSpacing = 10, this.mainAxisExtent = 288});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: mainAxisExtent, crossAxisSpacing: 16, mainAxisSpacing: 16), 
      itemBuilder: itemBuilder, );
  }
}