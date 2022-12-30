import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_realestate/view/widgets/textwidget.dart';
import 'package:flutter_realestate/view/widgets/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class gradientContainer extends StatelessWidget {
  final String txt;
  final Icon? icon;
  final Color color1;
  final Color color2;
  final Color colorMain;
  const gradientContainer(
      {required this.txt,
      this.icon,
      required this.color1,
      required this.color2,
      required this.colorMain});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.445,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1.0]),
        boxShadow: [
          BoxShadow(
              offset: Offset(-4, 4),
              blurRadius: 2,
              spreadRadius: 1.5,
              blurStyle: BlurStyle.normal,
              color: Colors.grey.shade400)
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 15,
            left: 15,
            child: textwidget(
                txt: "$txt",
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontsize: 27),
          ),
          Positioned(
            bottom: 20,
            right: 55,
            child: Icon(
              FontAwesomeIcons.home,
              size: 52,
              color: colorMain,
            ),
          ),
          Positioned(bottom: 22, right: 22, child: icon!)
        ],
      ),
    );
  }
}
