import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_realestate/view/screens/HomeScr.dart';
import 'package:flutter_realestate/view/screens/InvestScr.dart';
import 'package:flutter_realestate/view/widgets/SignUpButtons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_realestate/view/widgets/textwidget.dart';
import 'package:flutter_realestate/view/widgets/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Inquiries extends StatefulWidget {
  const Inquiries({super.key});

  @override
  State<Inquiries> createState() => _InquiriesState();
}

class _InquiriesState extends State<Inquiries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Email address or Phone",
                          hintStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.grey.shade700),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13),
                              borderSide: BorderSide(
                                  color: Colors.grey.shade700, width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13),
                              borderSide:
                                  BorderSide(color: brownClr, width: 1))),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width < 400 ? 0 : 15,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(FontAwesomeIcons.solidEye),
                          hintText: "Password",
                          hintStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.grey.shade700),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13),
                              borderSide: BorderSide(
                                  color: Colors.grey.shade700, width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13),
                              borderSide:
                                  const BorderSide(color: brownClr, width: 1))),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width < 400 ? 0 : 15,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width < 400
                      ? MediaQuery.of(context).size.height * 0.07
                      : MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: brownClr, elevation: 0),
                        onPressed: () {},
                        child: const textwidget(
                            txt: "Sign in",
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontsize: 23)),
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              const textwidget(
                  txt: "Forgot Password?",
                  fontWeight: FontWeight.w600,
                  color: brownClr,
                  fontsize: 23),
              const SizedBox(
                height: 45,
              ),
              Row(
                children: [
                  // Container(
                  //   height: 1,
                  //   width: MediaQuery.of(context).size.width < 400
                  //       ? MediaQuery.of(context).size.width * 0.3
                  //       : MediaQuery.of(context).size.width * 0.37,
                  //   color: Colors.grey.shade500,
                  // ),
                  Flexible(
                      child: Container(
                    height: 1,
                    color: Colors.grey.shade500,
                  )),
                  textwidget(
                      txt: "  Or Sign In With  ",
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade600,
                      fontsize: 18),
                  // Container(
                  //   height: 1,
                  //   width: MediaQuery.of(context).size.width < 400
                  //       ? MediaQuery.of(context).size.width * 0.29
                  //       : MediaQuery.of(context).size.width * 0.375,
                  //   color: Colors.grey.shade500,
                  // ),
                  Flexible(
                      child: Container(
                    height: 1,
                    color: Colors.grey.shade500,
                  ))
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  SignUpButtons(
                      icon: Icon(FontAwesomeIcons.google,
                          size: 25, color: brownClr),
                      txt: "Google"),
                  SignUpButtons(
                      icon: Icon(FontAwesomeIcons.facebook,
                          size: 25, color: brownClr),
                      txt: "Facebook"),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              RichText(
                text: TextSpan(
                    text: "Don’t have an account?",
                    style: GoogleFonts.montserrat(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                    children: [
                      TextSpan(
                        text: "SignUp",
                        style: GoogleFonts.montserrat(
                            fontSize: 18,
                            color: brownClr,
                            fontWeight: FontWeight.w600),
                      )
                    ]),
              )
            ],
          )
        ],
      )),
    );
  }
}
