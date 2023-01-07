import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_realestate/view/screens/GridViewFiltersScr.dart';
import 'package:flutter_realestate/view/widgets/ApplyButtonFilterScr.dart';
import 'package:flutter_realestate/view/widgets/BlogCards.dart';
import 'package:flutter_realestate/view/widgets/FiltersTextFields.dart';
import 'package:flutter_realestate/view/widgets/RowWithRangeSlider.dart';
import 'package:flutter_realestate/view/widgets/filterTextFieldsKanal.dart';
// import 'package:flutter_realestate/view/widgets/filterTabBar.dart';
import 'package:flutter_realestate/view/widgets/gradientContainer.dart';
import 'package:flutter_realestate/view/widgets/outlinedContainer.dart';
import 'package:flutter_realestate/view/widgets/rangeSlider.dart';
import 'package:flutter_realestate/view/widgets/slider.dart';
import 'package:flutter_realestate/view/widgets/switchListTile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_realestate/view/widgets/textwidget.dart';
import 'package:flutter_realestate/view/widgets/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class buyScr extends StatefulWidget {
  const buyScr({super.key});

  @override
  State<buyScr> createState() => _buyScrState();
}

class _buyScrState extends State<buyScr> with TickerProviderStateMixin {
  List dropDownItemsList = [
    {"title": "Islamabad", "value": "1"},
    {"title": "Karachi", "value": "2"},
    {"title": "Lahore", "value": "3"},
  ];
  String selectedCityVal = "";
  List dropDownItemsList1 = [
    {"title": "DHA", "value": "1"},
    {"title": "Gulshan", "value": "2"},
    {"title": "Gulmohar", "value": "3"},
  ];
  String selectedAreaVal = "";
  // double _value = 20;
  double _startValue = 0.0;
  double _endValue = 100.0;
  // RangeValues valuesBottom = RangeValues(0, 2);
  bool myVal = true;
  double sliderVal = 80;

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const textwidget(
                    txt: "City",
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontsize: 20),
                SizedBox(
                  height: 20,
                ),
                InputDecorator(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: brownClr, width: 0.5),
                      ),
                      contentPadding:
                          EdgeInsets.only(left: 7, right: 7, top: 5)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: selectedCityVal,
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            "Select City",
                            style: TextStyle(color: Colors.grey.shade600),
                          ),
                          value: "",
                        ),
                        ...dropDownItemsList.map<DropdownMenuItem<String>>((e) {
                          return DropdownMenuItem(
                            child: Text(
                              e['title'],
                            ),
                            value: e['value'],
                          );
                        }).toList(),
                      ],
                      onChanged: (value) {
                        setState(() {
                          selectedCityVal = value!;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey.shade400,
                ),
                SizedBox(
                  height: 20,
                ),
                const textwidget(
                    txt: "Area",
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontsize: 20),
                SizedBox(
                  height: 20,
                ),
                InputDecorator(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: brownClr, width: 0.5),
                      ),
                      contentPadding:
                          EdgeInsets.only(left: 7, right: 7, top: 5)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: selectedAreaVal,
                      items: [
                        DropdownMenuItem(
                          child: Text("Select Area",
                              style: TextStyle(color: Colors.grey.shade600)),
                          value: "",
                        ),
                        ...dropDownItemsList1
                            .map<DropdownMenuItem<String>>((e) {
                          return DropdownMenuItem(
                            child: Text(
                              e['title'],
                            ),
                            value: e['value'],
                          );
                        }).toList(),
                      ],
                      onChanged: (value) {
                        setState(() {
                          selectedAreaVal = value!;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey.shade400,
                ),
                const SizedBox(
                  height: 20,
                ),
                const textwidget(
                    txt: "Price (Rs)",
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontsize: 20),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    textwidget(
                        txt: "100k     200k     300k     400k     500k",
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontsize: 15)
                  ],
                ),
                rangeSlider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: textwidget(
                              txt: "From",
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontsize: 16),
                        ),
                        FiltersTextFields(),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: textwidget(
                              txt: "To",
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontsize: 16),
                        ),
                        FiltersTextFields(),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey.shade400,
                ),
                const SizedBox(
                  height: 20,
                ),
                const textwidget(
                    txt: "Property type",
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontsize: 20),
                TabBar(
                    indicatorColor: brownClr,
                    labelColor: brownClr,
                    unselectedLabelColor: Colors.grey.shade700,
                    controller: tabController,
                    tabs: const [
                      Tab(
                        text: "Residential",
                      ),
                      Tab(
                        text: "Commercial",
                      ),
                      Tab(
                        text: "Plots",
                      ),
                    ]),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  height: width < 400 ? height * 0.75 : height * 0.9,
                  width: width * 0.9,
                  // color: Colors.brown,
                  child: TabBarView(controller: tabController, children: [
                    GridViewFilterScr(),
                    Container(
                      color: Colors.amber,
                    ),
                    Container(
                      color: Colors.green,
                    ),
                  ]),
                ),
                // SizedBox(
                //   height: height * 0.03,
                // ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey.shade400,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: textwidget(
                      txt: "Size",
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontsize: 20),
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: SizedBox(
                        width: width * 0.8, child: filterTextFieldsKanal()),
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                RowWithRangeSlider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: textwidget(
                              txt: "From",
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontsize: 16),
                        ),
                        SizedBox(
                            width: width * 0.4, child: filterTextFieldsKanal())
                      ],
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: textwidget(
                              txt: "To",
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontsize: 16),
                        ),
                        SizedBox(
                            width: width * 0.4, child: filterTextFieldsKanal())
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey.shade400,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: textwidget(
                      txt: "Bedrooms",
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontsize: 20),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                RowWithRangeSlider(),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey.shade400,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: textwidget(
                      txt: "Baths",
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontsize: 20),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                RowWithRangeSlider(),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey.shade400,
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                switchListTile(),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey.shade400,
                ),
                const SizedBox(
                  height: 20,
                ),
                const textwidget(
                    txt: "Age of Property",
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontsize: 19),
                SizedBox(
                  height: height * 0.04,
                ),
                Center(
                  child: SizedBox(
                    width: width * 0.7,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            textwidget(
                                txt: "<1 year",
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade500,
                                fontsize: 12),
                            textwidget(
                                txt: "<1 year",
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade500,
                                fontsize: 12),
                            textwidget(
                                txt: "<1 year",
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade500,
                                fontsize: 12),
                          ],
                        ),
                        slider(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey.shade400,
                ),
                const SizedBox(
                  height: 20,
                ),
                const textwidget(
                    txt: "Days On Graana",
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontsize: 19),
                SizedBox(
                  height: height * 0.04,
                ),
                Center(
                  child: SizedBox(
                    width: width * 0.7,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            textwidget(
                                txt: "<7",
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade500,
                                fontsize: 12),
                            textwidget(
                                txt: "<15",
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade500,
                                fontsize: 12),
                            textwidget(
                                txt: "<30",
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade500,
                                fontsize: 12),
                            textwidget(
                                txt: "<90",
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade500,
                                fontsize: 12),
                          ],
                        ),
                        slider(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey.shade400,
                ),
                const SizedBox(
                  height: 20,
                ),
                const textwidget(
                    txt: "Utilities",
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontsize: 19),
                SizedBox(
                  height: height * 0.02,
                ),
                Wrap(
                  spacing: width * 0.04,
                  runSpacing: height * 0.02,
                  children: [
                    outlinedContainer(
                        icon: Icon(
                          Icons.electric_bolt_outlined,
                          size: 15,
                          color: Colors.grey.shade600,
                        ),
                        txt: "Electricity"),
                    outlinedContainer(
                        icon: Icon(
                          FontAwesomeIcons.fire,
                          size: 15,
                          color: Colors.grey.shade600,
                        ),
                        txt: "Gas"),
                    outlinedContainer(
                        icon: Icon(
                          FontAwesomeIcons.screwdriver,
                          size: 15,
                          color: Colors.grey.shade600,
                        ),
                        txt: "Maintenece"),
                    outlinedContainer(
                        icon: Icon(
                          FontAwesomeIcons.droplet,
                          size: 15,
                          color: Colors.grey.shade600,
                        ),
                        txt: "Water"),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey.shade400,
                ),
                const SizedBox(
                  height: 20,
                ),
                const textwidget(
                    txt: "Features",
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontsize: 19),
                SizedBox(
                  height: height * 0.02,
                ),
                Wrap(
                  spacing: width * 0.04,
                  runSpacing: height * 0.02,
                  children: [
                    outlinedContainer(
                        icon: Icon(
                          Icons.person_pin_circle_sharp,
                          size: 16,
                          color: Colors.grey.shade600,
                        ),
                        txt: "Accessbility"),
                    outlinedContainer(
                        icon: Icon(
                          FontAwesomeIcons.building,
                          size: 15,
                          color: Colors.grey.shade600,
                        ),
                        txt: "Balcony"),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Center(child: ApplyButtonFilterScr())
              ],
            ),
          )
        ],
      )),
    );
  }
}
