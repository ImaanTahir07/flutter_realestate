import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_realestate/view/screens/buyScr.dart';
import 'package:flutter_realestate/view/screens/rentScr.dart';
import 'package:flutter_realestate/view/widgets/BlogCards.dart';
import 'package:flutter_realestate/view/widgets/gradientContainer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_realestate/view/widgets/textwidget.dart';
import 'package:flutter_realestate/view/widgets/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class filtersScr extends StatefulWidget {
  const filtersScr();

  @override
  State<filtersScr> createState() => _filtersScrState();
}

class _filtersScrState extends State<filtersScr> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(
      length: 2,
      vsync: this,
    );
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        shadowColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            CupertinoIcons.arrow_left,
            color: brownClr,
            size: 25,
          ),
        ),
        title: const textwidget(
          txt: "Filters",
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontsize: 22,
        ),
        actions: const [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: textwidget(
                  txt: "Reset",
                  fontWeight: FontWeight.w500,
                  color: brownClr,
                  fontsize: 18),
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: width < 400 ? height * 0.04 : height * 0.08,
              width: width * 0.75,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 2,
                        blurStyle: BlurStyle.normal,
                        spreadRadius: 0.5,
                        color: Colors.grey)
                  ]),
              child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: brownClr,
                  indicatorColor: brownClr,
                  indicatorWeight: 2,
                  indicator: BoxDecoration(
                    color: brownClr,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  controller: tabController,
                  tabs: [
                    Tab(
                      child: Text(
                        "Rent",
                        style: GoogleFonts.montserrat(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Buy",
                        style: GoogleFonts.montserrat(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ]),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: TabBarView(
            controller: tabController,
            children: const [rentScr(), buyScr()],
          ))
        ],
      )),
    );
  }
}
