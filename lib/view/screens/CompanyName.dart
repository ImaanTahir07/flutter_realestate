import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_realestate/view/screens/HomeScr.dart';
import 'package:flutter_realestate/view/screens/InvestScr.dart';
import 'package:flutter_realestate/view/screens/inquiries.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_realestate/view/widgets/textwidget.dart';
import 'package:flutter_realestate/view/widgets/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CompanyName extends StatefulWidget {
  const CompanyName({super.key});

  @override
  State<CompanyName> createState() => _CompanyNameState();
}

class _CompanyNameState extends State<CompanyName> {
  int myIndex = 0;
  PageController pageController = PageController();
  void ontapped(int index) {
    setState(() {
      myIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          CupertinoIcons.line_horizontal_3,
          color: Colors.black,
          size: 29,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        shadowColor: Colors.transparent,
        title: const textwidget(
            txt: "Company Name",
            fontWeight: FontWeight.w700,
            color: brownClr,
            fontsize: 23),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: ontapped,
          currentIndex: myIndex,
          backgroundColor: Colors.white,
          elevation: 0,
          selectedItemColor: brownClr,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.arrowTrendUp), label: "Invest"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.question_circle_fill),
                label: "Inquiries"),
          ]),
      body: PageView(
        controller: pageController,
        children: [HomeScr(), InvestScr(), Inquiries()],
      ),
    );
  }
}
