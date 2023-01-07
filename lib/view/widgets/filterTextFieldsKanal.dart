import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_realestate/view/widgets/BlogCards.dart';
import 'package:flutter_realestate/view/widgets/FiltersTextFields.dart';
// import 'package:flutter_realestate/view/widgets/filterTabBar.dart';
import 'package:flutter_realestate/view/widgets/gradientContainer.dart';
import 'package:flutter_realestate/view/widgets/rangeSlider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_realestate/view/widgets/textwidget.dart';
import 'package:flutter_realestate/view/widgets/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class filterTextFieldsKanal extends StatelessWidget {
  const filterTextFieldsKanal({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintText: "Kanal",
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.grey.shade500, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: brownClr, width: 2),
        ),
      ),
    );
  }
}
