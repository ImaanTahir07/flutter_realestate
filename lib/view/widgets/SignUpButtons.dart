import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_realestate/view/screens/HomeScr.dart';
import 'package:flutter_realestate/view/screens/InvestScr.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_realestate/view/widgets/textwidget.dart';
import 'package:flutter_realestate/view/widgets/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpButtons extends StatelessWidget {
  final Icon icon;
  final String txt;
  const SignUpButtons({required this.icon, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width < 400
          ? MediaQuery.of(context).size.width * 0.12
          : MediaQuery.of(context).size.width * 0.07,
      width: MediaQuery.of(context).size.width < 400
          ? MediaQuery.of(context).size.width * 0.35
          : MediaQuery.of(context).size.width * 0.27,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade700, width: 1.5),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            icon,
            textwidget(
                txt: "$txt",
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontsize: 17)
          ],
        ),
      ),
    );
  }
}
