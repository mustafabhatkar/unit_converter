import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unit_converter/category/category_page.dart';
import 'package:unit_converter/home/units_list.dart';
import 'package:unit_converter/utils/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List unitsList = ["cm", "m", "mm"];
  var fromUnit = "cm";
  var toUnit = "cm";
  var categoryName = "";
  final TextEditingController inputController = TextEditingController();
  final TextEditingController outputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Constants.appName),
        ),
        body: Center(
            child: Container(
                margin: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                  TextField(
                    controller:inputController,
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
                  UnitsList(
                    key:UniqueKey(),
                    selectedUnit: fromUnit,
                    units: unitsList,
                    onTap: (selectedUnit) {
                      fromUnit = selectedUnit;

                    },
                  ),
                  Spacer(),
                  Icon(Icons.arrow_downward, size: 40),
                  Spacer(),
                  UnitsList(
                    key:UniqueKey(),
                    selectedUnit: toUnit,
                    units: unitsList,
                    onTap: (selectedUnit) {
                      toUnit = selectedUnit;
                      startConversion();
                    },
                  ),
                  TextField(
                    controller:outputController,
                    showCursor: false,
                    readOnly: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        hintText: 'Result'),
                  ),
                ]))),
        floatingActionButton: FloatingActionButton(
            onPressed: () async {
              categoryName = await Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CategoryPage()));
              setState(() {
                switchCategory();
              });
            },
            child: Icon(Icons.add)));
  }

  startConversion(){
    if(inputController.text.isNotEmpty){
      if(fromUnit == toUnit){
        outputController.text = inputController.text;
      }else if(fromUnit == "cm" && toUnit == "m"){
        cmToMConversion();
      }
    }
  }

  cmToMConversion(){
    outputController.text = (double.parse(inputController.text)/100).toString();
  }

  switchCategory(){
    switch(categoryName){
      case "Length":
      fromUnit = "cm";
      toUnit = "cm";
      unitsList = ["cm", "m", "mm"];
      break;
      case "Area":
      fromUnit = "cm\u00B2";
      toUnit = "cm\u00B2";
      unitsList = ["cm\u00B2", "m\u00B2", "mm\u00B2"];
      break;
    }
  }
}
