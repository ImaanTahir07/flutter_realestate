import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_realestate/view/screens/filtersScr.dart';
import 'package:flutter_realestate/view/screens/rentScr.dart';
import 'package:flutter_realestate/view/widgets/BlogCards.dart';
import 'package:flutter_realestate/view/widgets/gradientContainer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_realestate/view/widgets/textwidget.dart';
import 'package:flutter_realestate/view/widgets/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math' as math;

class HomeScr extends StatefulWidget {
  const HomeScr({super.key});

  @override
  State<HomeScr> createState() => _HomeScrState();
}

class _HomeScrState extends State<HomeScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 14, right: 8, left: 14),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => filtersScr(),
                              ));
                        },
                        child: const gradientContainer(
                            colorMain: Color.fromARGB(255, 43, 77, 106),
                            txt: "Rent",
                            icon: Icon(FontAwesomeIcons.userGroup,
                                color: Colors.white, size: 45),
                            color1: Color.fromARGB(255, 69, 204, 222),
                            color2: Color.fromARGB(255, 210, 225, 252)),
                      ),
                      const SizedBox(
                        width: 17,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => filtersScr(),
                              ));
                        },
                        child: const gradientContainer(
                            colorMain: Color.fromARGB(255, 81, 58, 34),
                            txt: "Buy",
                            icon: Icon(
                              FontAwesomeIcons.play,
                              size: 50,
                              color: Colors.white,
                            ),
                            color1: Color.fromARGB(249, 249, 149, 67),
                            color2: Color.fromARGB(249, 255, 185, 119)),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14, right: 8, left: 14),
                  child: Row(
                    children: const [
                      gradientContainer(
                          icon: Icon(
                            Icons.abc,
                            size: 1,
                          ),
                          txt: "Rent Out",
                          color1: Color.fromARGB(255, 73, 146, 206),
                          color2: Color.fromARGB(255, 206, 219, 243),
                          colorMain: Color.fromARGB(255, 30, 70, 105)),
                      SizedBox(
                        width: 17,
                      ),
                      gradientContainer(
                          colorMain: Color.fromARGB(255, 40, 52, 101),
                          txt: "Sell",
                          icon: Icon(
                            FontAwesomeIcons.moneyBill,
                            size: 45,
                            color: Colors.white,
                          ),
                          color1: Color.fromARGB(248, 93, 138, 252),
                          color2: Color.fromARGB(248, 170, 177, 250))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                LayoutBuilder(builder: (context, constraint) {
                  if (constraint.maxWidth < 400) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.94,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(-4, 4),
                              blurRadius: 2,
                              blurStyle: BlurStyle.normal,
                              color: Colors.grey.shade400,
                              spreadRadius: 1.5)
                        ],
                        borderRadius: BorderRadius.circular(13),
                        gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 255, 107, 191),
                              Color.fromARGB(255, 254, 166, 196)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.3, 1.0]),
                      ),
                      child: Stack(
                        children: [
                          const Positioned(
                            top: 13,
                            left: 15,
                            child: textwidget(
                                txt: "Wanted",
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontsize: 27),
                          ),
                          const Positioned(
                            top: 45,
                            left: 15,
                            child: textwidget(
                                txt: "Don’t want the hassle?\nGet in touch",
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontsize: 16),
                          ),
                          Positioned(
                            bottom: 45,
                            right: 170,
                            child: Transform.rotate(
                                angle: -45 * math.pi / 180,
                                child: const Icon(
                                  FontAwesomeIcons.home,
                                  color: Color.fromARGB(255, 84, 57, 49),
                                  size: 20,
                                )),
                          ),
                          Positioned(
                            bottom: 95,
                            right: 130,
                            child: Transform.rotate(
                                angle: 0 * math.pi / 180,
                                child: const Icon(
                                  FontAwesomeIcons.home,
                                  color: Color.fromARGB(255, 84, 57, 49),
                                  size: 20,
                                )),
                          ),
                          Positioned(
                            bottom: 45,
                            right: 125,
                            child: Transform.rotate(
                                angle: -45 * math.pi / 180,
                                child: const Icon(
                                  FontAwesomeIcons.home,
                                  color: Colors.white,
                                  size: 35,
                                )),
                          ),
                          Positioned(
                              bottom: 2,
                              right: 15,
                              child: Image.asset(
                                "assets/images/Group 2.png",
                              ))
                        ],
                      ),
                    );
                  } else {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.27,
                      width: MediaQuery.of(context).size.width * 0.92,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(-4, 4),
                              blurRadius: 2,
                              blurStyle: BlurStyle.normal,
                              color: Colors.grey.shade400,
                              spreadRadius: 1.5)
                        ],
                        borderRadius: BorderRadius.circular(13),
                        gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 255, 107, 191),
                              Color.fromARGB(255, 254, 166, 196)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.3, 1.0]),
                      ),
                      child: Stack(
                        children: [
                          const Positioned(
                            top: 13,
                            left: 15,
                            child: textwidget(
                                txt: "Wanted",
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontsize: 27),
                          ),
                          const Positioned(
                            top: 45,
                            left: 15,
                            child: textwidget(
                                txt: "Don’t want the hassle? Get in touch",
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontsize: 16),
                          ),
                          Positioned(
                            bottom: 30,
                            right: 210,
                            child: Transform.rotate(
                                angle: -45 * math.pi / 180,
                                child: const Icon(
                                  FontAwesomeIcons.home,
                                  color: Color.fromARGB(255, 84, 57, 49),
                                  size: 20,
                                )),
                          ),
                          Positioned(
                            bottom: 55,
                            right: 145,
                            child: Transform.rotate(
                                angle: 0 * math.pi / 180,
                                child: const Icon(
                                  FontAwesomeIcons.home,
                                  color: Color.fromARGB(255, 84, 57, 49),
                                  size: 20,
                                )),
                          ),
                          Positioned(
                            bottom: 15,
                            right: 160,
                            child: Transform.rotate(
                                angle: -45 * math.pi / 180,
                                child: const Icon(
                                  FontAwesomeIcons.home,
                                  color: Colors.white,
                                  size: 35,
                                )),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 15,
                              child: Image.asset(
                                "assets/images/Group 2.png",
                              ))
                        ],
                      ),
                    );
                  }
                }),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          textwidget(
                              txt: "Hot Deals 🔥",
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontsize: 27),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13)),
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: MediaQuery.of(context).size.width * 0.95,
                              child: Image.asset(
                                "assets/images/Rectangle 155.png",
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          Positioned(
                            top: MediaQuery.of(context).size.height * 0.03,
                            left: MediaQuery.of(context).size.width * 0.04,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.22,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent,
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                              child: const Center(
                                child: textwidget(
                                    txt: "Mall Of Arabia",
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontsize: 11),
                              ),
                            ),
                          ),
                          Positioned(
                            top: MediaQuery.of(context).size.height * 0.09,
                            left: MediaQuery.of(context).size.width * 0.05,
                            child: const textwidget(
                                txt: "Starting From",
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontsize: 14),
                          ),
                          Positioned(
                            top: MediaQuery.of(context).size.height * 0.117,
                            left: MediaQuery.of(context).size.width * 0.08,
                            child: RichText(
                                text: TextSpan(
                                    text: "PKR",
                                    style: GoogleFonts.openSans(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 11,
                                        color: Colors.yellow),
                                    children: [
                                  TextSpan(
                                      text: " 36 ",
                                      style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 14,
                                          color: Colors.yellow)),
                                  TextSpan(
                                      text: "lac",
                                      style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 11,
                                          color: Colors.yellow))
                                ])),
                          ),
                          Positioned(
                            top: MediaQuery.of(context).size.height * 0.02,
                            right: MediaQuery.of(context).size.width * 0.04,
                            child: const textwidget(
                                txt: "Glimpse Of \n mid - century",
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontsize: 17),
                          ),
                          Positioned(
                            top: MediaQuery.of(context).size.height * 0.095,
                            right: MediaQuery.of(context).size.width * 0.07,
                            child: const textwidget(
                                txt: "        Arabian\n architecture",
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontsize: 16),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  height: MediaQuery.of(context).size.width < 400
                      ? MediaQuery.of(context).size.height * 0.48
                      : MediaQuery.of(context).size.height * 0.59,
                  width: double.infinity,
                  color: Colors.grey.shade200,
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 14, right: 14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            textwidget(
                                txt: "Area Guide",
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontsize: 27),
                            textwidget(
                                txt: "View All",
                                fontWeight: FontWeight.w400,
                                color: brownClr,
                                fontsize: 15)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 31,
                      ),
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: Container(
                              height: MediaQuery.of(context).size.width < 400
                                  ? MediaQuery.of(context).size.height * 0.31
                                  : MediaQuery.of(context).size.height * 0.35,
                              width: MediaQuery.of(context).size.width * 0.95,
                              child: Image.asset(
                                "assets/images/qasim-nagori-1x3qakkpzZU-unsplash.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                            bottom: 50,
                            left: 10,
                            child: textwidget(
                                txt: "Moving to capital?",
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                fontsize: 24),
                          ),
                          const Positioned(
                            bottom: 34,
                            left: 10,
                            child: textwidget(
                                txt: "Scroll through the area lines to..",
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontsize: 13),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          textwidget(
                              txt: "Blogs",
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontsize: 27),
                          textwidget(
                              txt: "View All",
                              fontWeight: FontWeight.w400,
                              color: brownClr,
                              fontsize: 15)
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            BlogCards(
                                img: Image.asset(
                                    "assets/images/Rectangle 160.png"),
                                title: "List of tallest building in Pakistan",
                                date: "20 May 2022"),
                            BlogCards(
                                img: Image.asset(
                                  "assets/images/Rectangle 160.png",
                                ),
                                title: "Investing in a trust fund",
                                date: "7 april 2022"),
                            BlogCards(
                                img: Image.asset(
                                  "assets/images/Rectangle 160.png",
                                ),
                                title: "Investing in a trust fund",
                                date: "7 april 2022"),
                            BlogCards(
                                img: Image.asset(
                                  "assets/images/Rectangle 160.png",
                                ),
                                title: "Investing in a trust fund",
                                date: "7 april 2022"),
                            BlogCards(
                                img: Image.asset(
                                  "assets/images/Rectangle 160.png",
                                ),
                                title: "Investing in a trust fund",
                                date: "7 april 2022"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
