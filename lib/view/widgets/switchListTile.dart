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
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_realestate/view/widgets/textwidget.dart';
import 'package:flutter_realestate/view/widgets/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class switchListTile extends StatefulWidget {
  const switchListTile({super.key});

  @override
  State<switchListTile> createState() => _switchListTileState();
}

class _switchListTileState extends State<switchListTile> {
  bool myVal = true;
  @override
  Widget build(BuildContext context) {
    return SwitchListTile.adaptive(
      activeColor: brownClr,
      value: myVal,
      onChanged: (value) {
        setState(() {
          myVal = value;
        });
      },
      title: Row(
        children: const [
          Icon(
            Icons.pentagon,
            size: 29,
            color: brownClr,
          ),
          SizedBox(
            width: 10,
          ),
          textwidget(
              txt: "PropSecure Verified",
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontsize: 17)
        ],
      ),
    );
  }
}
