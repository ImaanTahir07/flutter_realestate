import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_realestate/view/widgets/BlogCards.dart';
import 'package:flutter_realestate/view/widgets/FiltersTextFields.dart';
import 'package:flutter_realestate/view/widgets/filterTextFieldsKanal.dart';
// import 'package:flutter_realestate/view/widgets/filterTabBar.dart';
import 'package:flutter_realestate/view/widgets/gradientContainer.dart';
import 'package:flutter_realestate/view/widgets/rangeSlider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_realestate/view/widgets/textwidget.dart';
import 'package:flutter_realestate/view/widgets/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RowWithRangeSlider extends StatefulWidget {
  const RowWithRangeSlider({super.key});

  @override
  State<RowWithRangeSlider> createState() => _RowWithRangeSliderState();
}

class _RowWithRangeSliderState extends State<RowWithRangeSlider> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            textwidget(
                txt: "1       2       3       4       5",
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontsize: 15)
          ],
        ),
        SizedBox(width: width * 0.7, child: rangeSlider())
      ],
    );
  }
}
