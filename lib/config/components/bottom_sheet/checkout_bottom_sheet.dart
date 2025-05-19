import 'package:flutter/material.dart';
import 'package:groceries_app/config/components/buttons/wide_button.dart';

class CheckoutBottomSheet extends StatelessWidget {
  final VoidCallback onTap;
  const CheckoutBottomSheet({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Checkout", style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          _buildRow(context, "Delivery", "Select Method"),
          const Divider(),
          _buildRow(context, "Pament", "", icon: Icons.credit_card),
          const Divider(),
          _buildRow(context, "Promo Code", "Pick discount"),
          const Divider(),
          _buildRow(context, "Total Cost", "\$13.97", isBold: true),
          const SizedBox(height: 16),
          Text.rich(
            TextSpan(
              text: "By placing an order you agree to our ",
              children: [
                TextSpan(
                  text: "Terms And Conditions",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 16),
          WideButton(name: 'Place Order', onPressed: onTap),
        ],
      ),
    );
  }

  Widget _buildRow(
    BuildContext context,
    String title,
    String value, {
    bool isBold = false,
    IconData? icon,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Row(
            children: [
              if (value.isNotEmpty)
                Text(
                  value,
                  style: TextStyle(
                    fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              if (icon != null) ...[
                const SizedBox(width: 8),
                Icon(icon, size: 20),
              ],
              const SizedBox(width: 8),
              const Icon(Icons.arrow_forward_ios, size: 14),
            ],
          ),
        ],
      ),
    );
  }
}
