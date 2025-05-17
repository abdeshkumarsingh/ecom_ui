import 'package:flutter/material.dart';
import 'package:groceries_app/config/components/cards/product_card.dart';
import 'package:groceries_app/config/components/grids/t_grid_layout.dart';
import 'package:groceries_app/models/product/product_model.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key,});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(child: Text('my cart'),)
        ),
      ),
    );
  }
}
