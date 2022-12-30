import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_realestate/view/widgets/BlogCards.dart';
import 'package:flutter_realestate/view/widgets/OADDcontainers.dart';
import 'package:flutter_realestate/view/widgets/gradientContainer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_realestate/view/widgets/textwidget.dart';
import 'package:flutter_realestate/view/widgets/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Customelevatedbuttons extends StatelessWidget {
  final Color btnClr;
  final Color fontClr;
  final Icon icon;
  final String str;
  const Customelevatedbuttons(
      {required this.btnClr,
      required this.icon,
      required this.str,
      required this.fontClr});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width < 400
          ? MediaQuery.of(context).size.height * 0.05
          : MediaQuery.of(context).size.height * 0.09,
      width: MediaQuery.of(context).size.width * 0.4,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: btnClr),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                icon,
                SizedBox(
                  width: MediaQuery.of(context).size.width < 400 ? 5 : 15,
                ),
                textwidget(
                    txt: "$str",
                    fontWeight: FontWeight.w400,
                    color: fontClr,
                    fontsize: 14)
              ],
            ),
          )),
    );
  }
}
