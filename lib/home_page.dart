import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unit_converter/category/category_page.dart';
import 'package:unit_converter/utils/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List unitsList = ["cm", "m", "mm"];
  var fromUnit = "cm";
  var categoryName = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Constants.appName),
        ),
        body: Center(
            child: Container(
                margin: EdgeInsets.all(8.0),
                child: Column(children: [
                  TextField(
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(
                          RegExp(r'^\d*\.?\d{0,9}')),
                    ],
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        hintText: 'Enter Your Number'),
                  ),
                  Container(
                    height: 50.0,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: unitsList.length,
                        itemBuilder: (context, index) {
                          String currentUnit = unitsList[index];
                          return InkWell(
                            onTap:(){
                              setState(() {
                                fromUnit = currentUnit;
                              });
                            },
                            child: Container(
                                margin: EdgeInsets.all(8.0),
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 12.0),
                                decoration: BoxDecoration(
                                    color: fromUnit == currentUnit
                                        ? Colors.grey.shade300
                                        : null,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    border: Border.all()),
                                child: Center(child: Text(currentUnit))),
                          );
                        }),
                  )
                ]))),
        floatingActionButton: FloatingActionButton(
            onPressed: () async {
              categoryName = await Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CategoryPage()));
              setState(() {});
            },
            child: Icon(Icons.add)));
  }
}
