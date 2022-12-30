import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_realestate/view/widgets/gradientContainer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_realestate/view/widgets/textwidget.dart';
import 'package:flutter_realestate/view/widgets/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BlogCards extends StatelessWidget {
  final Image img;
  final String title;
  final String date;
  const BlogCards({required this.img, required this.title, required this.date});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
      shadowColor: Colors.grey.shade700,
      elevation: 15,
      child: SizedBox(
        height: MediaQuery.of(context).size.width < 400
            ? MediaQuery.of(context).size.height * 0.3
            : MediaQuery.of(context).size.height * 0.56,
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 8, left: 5, right: 5),
                child: img),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: textwidget(
                  txt: "$title",
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontsize: 17),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 16, right: 16),
                  child: textwidget(
                      txt: "$date",
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontsize: 14),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
