import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_realestate/view/widgets/BlogCards.dart';
import 'package:flutter_realestate/view/widgets/FiltersTextFields.dart';
import 'package:flutter_realestate/view/widgets/RowWithRangeSlider.dart';
import 'package:flutter_realestate/view/widgets/filterTextFieldsKanal.dart';
// import 'package:flutter_realestate/view/widgets/filterTabBar.dart';
import 'package:flutter_realestate/view/widgets/gradientContainer.dart';
import 'package:flutter_realestate/view/widgets/rangeSlider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_realestate/view/widgets/textwidget.dart';
import 'package:flutter_realestate/view/widgets/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ApplyButtonFilterScr extends StatelessWidget {
  const ApplyButtonFilterScr({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.7,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: brownClr,
          ),
          onPressed: () {},
          child: const textwidget(
              txt: "Apply",
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontsize: 17)),
    );
  }
}
