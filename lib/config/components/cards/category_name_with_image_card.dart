import 'package:flutter/material.dart';
import 'package:groceries_app/utils/groceries/groceries_list.dart';

class CategoryNameWithImageCard extends StatelessWidget {
  final List<dynamic> groceries;
  const CategoryNameWithImageCard({super.key, required this.groceries});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: groceries.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final grocery = groceries[index];
        return Container(
          height: 100,
          width: 200,
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(int.parse(grocery['color'])),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(grocery['image'], height: 60, width: 60),
              SizedBox(width: 10),
              Text(
                grocery['title'],
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        );
      },
    );
  }
}
