import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_realestate/view/widgets/BlogCards.dart';
import 'package:flutter_realestate/view/widgets/gradientContainer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_realestate/view/widgets/textwidget.dart';
import 'package:flutter_realestate/view/widgets/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class rangeSlider extends StatefulWidget {
  const rangeSlider({super.key});

  @override
  State<rangeSlider> createState() => _rangeSliderState();
}

class _rangeSliderState extends State<rangeSlider> {
  double _startValue = 0.0;
  double _endValue = 100.0;
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: const SliderThemeData(
          activeTickMarkColor: Colors.white,
          tickMarkShape: RoundSliderTickMarkShape(),
          valueIndicatorColor: brownClr),
      child: RangeSlider(
        activeColor: brownClr,
        divisions: 6,
        inactiveColor: Colors.brown.shade100,
        labels: RangeLabels(
            _startValue.round().toString(), _endValue.round().toString()),
        min: 0.0,
        max: 100,
        values: RangeValues(_startValue, _endValue),
        onChanged: (value) {
          setState(() {
            _startValue = value.start;
            _endValue = value.end;
          });
        },
      ),
    );
  }
}
