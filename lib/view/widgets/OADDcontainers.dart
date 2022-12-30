import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
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

class OADDcontainers extends StatelessWidget {
  final String mainLetter;
  final String mainStr;

  const OADDcontainers({required this.mainLetter, required this.mainStr});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.width < 400
              ? MediaQuery.of(context).size.height * 0.065
              : MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width * 0.13,
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.black, width: 4),
              borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: textwidget(
                txt: "$mainLetter",
                fontWeight: FontWeight.bold,
                color: brownClr,
                fontsize: 35),
          ),
        ),
        textwidget(
            txt: "$mainStr",
            fontWeight: FontWeight.w700,
            color: Colors.black,
            fontsize: 12)
      ],
    );
  }
}
