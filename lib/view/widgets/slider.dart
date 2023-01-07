import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_realestate/view/screens/GridViewFiltersScr.dart';
import 'package:flutter_realestate/view/widgets/ApplyButtonFilterScr.dart';
import 'package:flutter_realestate/view/widgets/BlogCards.dart';
import 'package:flutter_realestate/view/widgets/FiltersTextFields.dart';
import 'package:flutter_realestate/view/widgets/RowWithRangeSlider.dart';
import 'package:flutter_realestate/view/widgets/filterTextFieldsKanal.dart';
// import 'package:flutter_realestate/view/widgets/filterTabBar.dart';
import 'package:flutter_realestate/view/widgets/gradientContainer.dart';
import 'package:flutter_realestate/view/widgets/rangeSlider.dart';
import 'package:flutter_realestate/view/widgets/switchListTile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_realestate/view/widgets/textwidget.dart';
import 'package:flutter_realestate/view/widgets/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class slider extends StatefulWidget {
  const slider({Key? key});

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  double sliderVal = 80;
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
          valueIndicatorColor: brownClr,
          thumbColor: brownClr,
          activeTickMarkColor: Colors.white,
          activeTrackColor: brownClr,
          inactiveTickMarkColor: brownClr,
          inactiveTrackColor: Colors.grey),
      child: Slider(
        min: 0,
        max: 100,
        value: sliderVal,
        divisions: 4,
        label: sliderVal.round().toString(),
        // activeColor: brownClr,
        // inactiveColor: Colors.white,
        onChanged: (value) {
          setState(() {
            sliderVal = value;
          });
        },
      ),
    );
  }
}
