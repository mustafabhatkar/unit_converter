import 'package:flutter/material.dart';
import 'package:unit_converter/category/category_page.dart';
import 'package:unit_converter/utils/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Constants.appName),
        ),
        body: Container(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CategoryPage()));
            },
            child: Icon(Icons.add)));
  }
}
