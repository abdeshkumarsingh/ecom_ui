import 'package:flutter/material.dart';
import 'package:groceries_app/config/colors/app_colors.dart';
import 'package:groceries_app/config/components/buttons/wide_button.dart';
import 'package:groceries_app/config/components/grids/t_grid_layout.dart';
import 'package:groceries_app/config/components/widgets/t_list_tile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<Map<String, dynamic>> listItems = [
    {'icon': Icons.shopping_bag, 'title': 'Orders'},
    {'icon': Icons.card_giftcard_outlined, 'title': 'My Details'},
    {'icon': Icons.location_pin, 'title': 'Delivery Address'},
    {'icon': Icons.card_membership, 'title': 'Payment Methods'},
    {'icon': Icons.airplane_ticket, 'title': 'Promo Card'},
    {'icon': Icons.notification_add_outlined, 'title': 'Notifications'},
    {'icon': Icons.help_outline_outlined, 'title': 'Help'},
    {'icon': Icons.emergency, 'title': 'About'},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZZ6c8KeBJYLzs6XIKQuUqVD7FM9Leie0FIA&s',
                ),
              ),
              title: Row(
                children: [
                  Text(
                    'Your Name',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    icon: Icon(Icons.edit_outlined),
                    color: AppColors.primaryColor,
                    onPressed: () {},
                  ),
                ],
              ),
              subtitle: Text('Your profile email or any text'),
            ),
          ),
          Container(height: 2, color: Colors.grey[300]),
          ...listItems.map((items) {
            return TListTileWithDivider(
              leadingIcon: items['icon'],
              title: items['title'],
              onTap: () {},
            );
          }),
          SizedBox(height: 50),
          Center(
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 209, 209, 209),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.logout,
                          color: AppColors.primaryColor,
                          size: 30,
                        ),
                        SizedBox(width: 100),
                        Text(
                          'Log Out',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
