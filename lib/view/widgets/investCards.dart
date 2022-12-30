import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_realestate/view/widgets/BlogCards.dart';
import 'package:flutter_realestate/view/widgets/Customelevatedbuttons.dart';
import 'package:flutter_realestate/view/widgets/OADDcontainers.dart';
import 'package:flutter_realestate/view/widgets/gradientContainer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_realestate/view/widgets/textwidget.dart';
import 'package:flutter_realestate/view/widgets/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InvestCards extends StatelessWidget {
  final String title;
  final Image image;
  final String price;
  const InvestCards(
      {required this.image, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width < 400
          ? MediaQuery.of(context).size.height * 0.57
          : MediaQuery.of(context).size.height * 1.1,
      width: MediaQuery.of(context).size.width * 0.9,
      // height: MediaQuery.of(context).size.height * 0.56,
      // width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                blurRadius: 4,
                blurStyle: BlurStyle.normal,
                color: Colors.grey.shade400,
                offset: Offset(-4, 4),
                spreadRadius: 1),
            BoxShadow(
                blurRadius: 4,
                blurStyle: BlurStyle.normal,
                color: Colors.grey.shade400,
                offset: Offset(4, -4),
                spreadRadius: 1)
          ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textwidget(
                    txt: "$title",
                    fontWeight: FontWeight.w700,
                    color: brownClr,
                    fontsize: 17),
                const Icon(
                  FontAwesomeIcons.arrowUpRightFromSquare,
                  color: brownClr,
                  size: 20,
                )
              ],
            ),
          ),
          image,
          Container(
            height: MediaQuery.of(context).size.width < 400
                ? MediaQuery.of(context).size.height * 0.04
                : MediaQuery.of(context).size.height * 0.07,
            width: double.infinity,
            color: Colors.grey.shade400,
            child: Padding(
              padding: const EdgeInsets.only(left: 14, right: 14, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textwidget(
                      txt: "$price",
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontsize: 14),
                  const Icon(
                    CupertinoIcons.heart_fill,
                    color: brownClr,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 18),
            child: ListTile(
              leading: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.2,
                child: Image.asset("assets/images/Rectangle 162.png"),
              ),
              title: const textwidget(
                  txt: "Mall Of Imarat",
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontsize: 20),
              subtitle: const textwidget(
                  txt: "Islamabad expressway, islam..",
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontsize: 15),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width < 400 ? 50 : 10,
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 14, top: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Customelevatedbuttons(
                    btnClr: Colors.grey.shade300,
                    icon: const Icon(
                      FontAwesomeIcons.phone,
                      color: Colors.black,
                    ),
                    str: "Call Now",
                    fontClr: Colors.black),
                Customelevatedbuttons(
                    btnClr: brownClr,
                    icon: Icon(
                      FontAwesomeIcons.envelope,
                      color: Colors.white,
                      size: MediaQuery.of(context).size.width < 400 ? 20 : 25,
                    ),
                    str: "INQUIRE",
                    fontClr: Colors.white)
              ],
            ),
          )
        ],
      ),
    );
  }
}
