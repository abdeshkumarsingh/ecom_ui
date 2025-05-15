import 'package:flutter/material.dart';

class SearchBarWithIcon extends StatelessWidget {
  final String hintText;
  final IconData icon;
  const SearchBarWithIcon({
    super.key,
    this.hintText = 'Search',
    this.icon = Icons.search,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
      ),
      height: 50,
      child: Row(
        children: [
          Padding(padding: const EdgeInsets.all(16.0), child: Icon(icon)),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
