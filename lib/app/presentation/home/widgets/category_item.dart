import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryItem({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.green.withOpacity(0.1),
            child: Icon(icon, color: Colors.green),
          ),
          const SizedBox(height: 4),
          Text(label),
        ],
      ),
    );
  }
}
