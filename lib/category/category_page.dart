import 'package:flutter/material.dart';
import 'package:unit_converter/utils/constants.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Constants.categoryTitle),
        ),
        body: Container(
            child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1/2,
          children: <Widget>[
            Container(color:Colors.red),
            Container(color:Colors.blue),
            Container(color:Colors.green),
            Container(color:Colors.purple),
          ],
        )),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () => Navigator.pop(context),
            label: Text("Back"),
            icon: Icon(Icons.arrow_back)));
  }
}
