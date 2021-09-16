import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final IconData categoryIcon;
  final String categoryName;
  final Color iconColor;
  const CategoryItem(
      {required this.categoryIcon,
      required this.categoryName,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context, categoryName);
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(categoryIcon, size: 40, color: iconColor),
            SizedBox(height: 8.0),
            Text(categoryName),
          ],
        ),
      ),
    );
  }
}
