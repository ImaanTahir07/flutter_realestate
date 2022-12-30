import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class textwidget extends StatelessWidget {
  final String txt;
  final FontWeight fontWeight;
  final double fontsize;
  final Color color;
  const textwidget(
      {required this.txt,
      required this.fontWeight,
      required this.color,
      required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$txt",
      style: GoogleFonts.montserrat(
        fontWeight: fontWeight,
        fontSize: fontsize,
        color: color,
      ),
    );
  }
}
