import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Icon(FontAwesomeIcons.ruler,size:40),
          Text("Length"),
        ],
      ),
    );
  }
}
