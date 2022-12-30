import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_realestate/view/widgets/BlogCards.dart';
import 'package:flutter_realestate/view/widgets/Customelevatedbuttons.dart';
import 'package:flutter_realestate/view/widgets/OADDcontainers.dart';
import 'package:flutter_realestate/view/widgets/gradientContainer.dart';
import 'package:flutter_realestate/view/widgets/investCards.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_realestate/view/widgets/textwidget.dart';
import 'package:flutter_realestate/view/widgets/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InvestScr extends StatefulWidget {
  const InvestScr({super.key});

  @override
  State<InvestScr> createState() => _InvestScrState();
}

class _InvestScrState extends State<InvestScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 17, right: 14, top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const textwidget(
                    txt: "Best investment in Pakistan",
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontsize: 23),
                const SizedBox(
                  height: 4,
                ),
                const textwidget(
                    txt: "100% Refundable, safe & secure investment",
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontsize: 16),
                const SizedBox(
                  height: 4,
                ),
                const textwidget(
                    txt: "Our criteria to choose best projects",
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontsize: 15),
                const SizedBox(
                  height: 29,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    OADDcontainers(mainLetter: "O", mainStr: "Ownership"),
                    OADDcontainers(mainLetter: "A", mainStr: "Approval"),
                    OADDcontainers(mainLetter: "D", mainStr: "Demand"),
                    OADDcontainers(mainLetter: "D", mainStr: "Delivery"),
                  ],
                ),
                const SizedBox(
                  height: 29,
                ),
                const textwidget(
                    txt: "See more",
                    fontWeight: FontWeight.w700,
                    color: brownClr,
                    fontsize: 18),
                const SizedBox(
                  height: 10,
                ),
                const textwidget(
                    txt: "Projects in Pakistan",
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontsize: 23),
                const SizedBox(
                  height: 20,
                ),
                InvestCards(
                  image: Image.asset("assets/images/Rectangle 160 (1).png"),
                  price: "38 Lac (PKR) - 4.03 Crore (PKR)",
                  title: "Mega Project",
                ),
                const SizedBox(
                  height: 20,
                ),
                InvestCards(
                  image: Image.asset("assets/images/buildings.png"),
                  price: "1.03 Crore (PKR) - 4.03 Crore (PKR)",
                  title: "Project",
                ),
                const SizedBox(
                  height: 20,
                ),
                InvestCards(
                  image: Image.asset("assets/images/Rectangle 160 (1).png"),
                  price: "38 Lac (PKR) - 4.03 Crore (PKR)",
                  title: "Mega Project",
                ),
                const SizedBox(
                  height: 20,
                ),
                InvestCards(
                  image: Image.asset("assets/images/buildings.png"),
                  price: "1.03 Crore (PKR) - 4.03 Crore (PKR)",
                  title: "Project",
                ),
                const SizedBox(
                  height: 20,
                ),
                InvestCards(
                  image: Image.asset(
                    "assets/images/Rectangle 160 (1).png",
                  ),
                  price: "38 Lac (PKR) - 4.03 Crore (PKR)",
                  title: "Mega Project",
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
