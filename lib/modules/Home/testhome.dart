/* import 'package:flutter/material.dart';
import 'package:mytestapp2/compo.dart';
import 'package:mytestapp2/modules/Home/Home.dart';

import '../../MyColor.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

bool iss = false;

class _TestState extends State<Test> {
  List<ChipsData> choischips = ChoisChips.all;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ChoiceChip(
          label: Text('Fuck'),
          selected: iss,
          onSelected: (isSelected) {
            setState(() {
              iss = isSelected;
            });
          },
          backgroundColor: maincolor,
          selectedColor: Colors.greenAccent,
        ),
      ),
    );
  }
}
 */
