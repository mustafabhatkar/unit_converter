import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unit_converter/category/category_item.dart';
import 'package:unit_converter/utils/constants.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.categoryTitle),
      ),
      body: Container(
          margin: EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1 / 0.5,
            children: <Widget>[
              CategoryItem(
                  categoryIcon: FontAwesomeIcons.ruler,
                  categoryName: "Length",
                  iconColor: Colors.black),
              CategoryItem(
                  categoryIcon: FontAwesomeIcons.box,
                  categoryName: "Area",
                  iconColor: Colors.black),
              CategoryItem(
                  categoryIcon: FontAwesomeIcons.weight,
                  categoryName: "Weight",
                  iconColor: Colors.black),
              CategoryItem(
                  categoryIcon: FontAwesomeIcons.thermometer,
                  categoryName: "Temperature",
                  iconColor: Colors.red),
            ],
          )),
    );
  }
}
