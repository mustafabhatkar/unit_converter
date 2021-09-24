import 'package:flutter/material.dart';

class UnitsList extends StatefulWidget {
  final List units;
  final String selectedUnit;
  final Function(String) onTap;
  const UnitsList(
      {Key? key,
      required this.units,
      required this.selectedUnit,
      required this.onTap})
      : super(key: key);

  @override
  _UnitsListState createState() => _UnitsListState();
}

class _UnitsListState extends State<UnitsList> {
  List unitsList = [];
  String? selectedUnit;
  @override
  void initState() {
    unitsList = widget.units;
    selectedUnit = widget.selectedUnit;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: unitsList.length,
          itemBuilder: (context, index) {
            String currentUnit = unitsList[index];
            return InkWell(
              onTap: () {
                setState(() {
                  selectedUnit = currentUnit;
                  widget.onTap(selectedUnit!);
                });
              },
              child: Container(
                  margin: EdgeInsets.all(8.0),
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                  decoration: BoxDecoration(
                      color:
                          selectedUnit == currentUnit ? Colors.grey.shade300 : null,
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      border: Border.all()),
                  child: Center(child: Text(currentUnit))),
            );
          }),
    );
  }
}
