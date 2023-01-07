import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
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

class GridViewFilterScr extends StatelessWidget {
  const GridViewFilterScr({super.key});

  @override
  Widget build(BuildContext context) {
    final List items = [
      "All",
      "House",
      "GuestHouse",
      "Flat",
      "Hotel",
      "Upper Portion",
      "Lower Portion",
      "Room",
      "Farmhouse",
      "PentHouse",
      "Hotel suit",
      "Basement",
      "Annexe",
    ];
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView.builder(
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: width < 400 ? 3 : 4),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: width < 400 ? height * 0.1 : height * 0.3,
                  width: width < 400 ? height * 0.2 : height * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(-2, 2),
                            blurRadius: 1,
                            blurStyle: BlurStyle.normal,
                            color: Colors.grey.shade500,
                            spreadRadius: 2)
                      ]),
                  child: Icon(
                    Icons.house_outlined,
                    size: 40,
                    color: brownClr,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: textwidget(
                    txt: items[index],
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontsize: 12),
              ),
            ],
          );
        },
      ),
    );
  }
}
