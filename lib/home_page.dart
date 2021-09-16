import 'package:flutter/material.dart';
import 'package:unit_converter/category/category_page.dart';
import 'package:unit_converter/utils/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var categoryName = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Constants.appName),
        ),
        body: Center(child: Container(child: Text(categoryName))),
        floatingActionButton: FloatingActionButton(
            onPressed: () async {
              categoryName = await Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CategoryPage()));
                  setState(() {

                  });

            },
            child: Icon(Icons.add)));
  }
}
