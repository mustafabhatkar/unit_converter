import 'package:flutter/material.dart';
import 'package:unit_converter/utils/constants.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Constants.categoryTitle),
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () =>Navigator.pop(context),
            label: Text("Back"),
            icon: Icon(Icons.arrow_back)));
  }
}
