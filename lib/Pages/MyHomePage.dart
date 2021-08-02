import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import './Skills.dart';
import '../CustomBuilder.dart';
import '../NavBar.dart';
import '../project.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<Widget> aim;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  List<String> subtitle = [
    'I am Popeye not with spinach but with Computer.',
    'I am Popeye not with spinach but with Computer.',
    "I can fix your bug and hack your friend's Instagram but can't fix your coffee machine.",
  ];
  @override
  Widget build(BuildContext context) {
    bool LessWidthMQ(double x) {
      return MediaQuery.of(context).size.width < x;
    }

    List<projects> proj = [];
    aim = [
      Column(
        children: [
          Container(
            width: LessWidthMQ(860) ? double.maxFinite : 400,
            height: 120,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 1),
            ),
            child: Text(
              'Currently Working On',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          Container(
            width: LessWidthMQ(860) ? double.maxFinite : 400,
            height: 120,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 1),
            ),
            child: Text(
              'Learning',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          Container(
            width: LessWidthMQ(860) ? double.maxFinite : 400,
            height: 120,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 1),
            ),
            child: Text(
              'I want to be',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ],
      ),
      Container(
        height: 360,
        width: LessWidthMQ(860)
            ? double.maxFinite
            : MediaQuery.of(context).size.width - 480,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
        ),
        child: Image.asset(
          'flutter.jpg',
          // fit: BoxFit.fill,
          fit: BoxFit.scaleDown,
        ),
      ),
    ];
    List<Widget> icons = [
      Icon(
        Icons.android,
        color: Colors.white,
        size: 50,
      ),
      Icon(
        Icons.language,
        color: Colors.white,
        size: 50,
      ),
      Icon(
        Icons.android,
        color: Colors.white,
        size: 50,
      ),
      Icon(
        Icons.filter_b_and_w,
        color: Colors.white,
        size: 50,
      ),
      Text(
        'UI/UX',
        style: TextStyle(
          color: Colors.white,
          fontSize: 32,
        ),
      )
    ];
    List<String> title = ['Android', 'Web', '', 'UI/UX'];
    proj.add(projects(
      imgsrc:
          'https://raw.githubusercontent.com/Yogeshk4124/Card-Space/main/screenshots/CardSpaceLogo.png',
      summary:
          'A secured cross-platfom application that allows the user to save their cards like (Bank cards, Personal Identification Cards, etc) in a highly secured format. These card can be viewed by user anytime. The main problem it solves is that the user does not need to carry all the card while he can carry a single mobile phone with our installed.Take control of your cards with this offline card manager (no need to create account or login online).It makes card management smart, simple and secure.',
      title: 'Card-Space',
    ));
    proj.add(projects(
      imgsrc:
          'https://raw.githubusercontent.com/Yogeshk4124/Card-Space/main/screenshots/CardSpaceLogo.png',
      summary:
          'A secured cross-platfom application that allows the user to save their cards like (Bank cards, Personal Identification Cards, etc) in a highly secured format. These card can be viewed by user anytime. The main problem it solves is that the user does not need to carry all the card while he can carry a single mobile phone with our installed.Take control of your cards with this offline card manager (no need to create account or login online).It makes card management smart, simple and secure.',
      title: 'Card-Space',
    ));
    proj.add(projects(
      imgsrc:
          'https://raw.githubusercontent.com/Yogeshk4124/Card-Space/main/screenshots/CardSpaceLogo.png',
      summary:
          'A secured cross-platfom application that allows the user to save their cards like (Bank cards, Personal Identification Cards, etc) in a highly secured format. These card can be viewed by user anytime. The main problem it solves is that the user does not need to carry all the card while he can carry a single mobile phone with our installed.Take control of your cards with this offline card manager (no need to create account or login online).It makes card management smart, simple and secure.',
      title: 'Card-Space',
    ));
    proj.add(projects(
      imgsrc:
          'https://raw.githubusercontent.com/Yogeshk4124/Card-Space/main/screenshots/CardSpaceLogo.png',
      summary:
          'A secured cross-platfom application that allows the user to save their cards like (Bank cards, Personal Identification Cards, etc) in a highly secured format. These card can be viewed by user anytime. The main problem it solves is that the user does not need to carry all the card while he can carry a single mobile phone with our installed.Take control of your cards with this offline card manager (no need to create account or login online).It makes card management smart, simple and secure.',
      title: 'Card-Space',
    ));

    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: Container(
          padding: (MediaQuery.of(context).size.width > 700)
              ? EdgeInsets.only(top: 20, left: 40, bottom: 10, right: 40)
              : EdgeInsets.zero,
          child: Column(
            children: [
              NavBar(),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1),
                        ),
                        height: 350,
                        alignment: Alignment.center,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "I'M Yogesh Kumar",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.monoton(
                                    //fruktur,monoton,cutivemono
                                    color: Colors.white,
                                    wordSpacing: 20,
                                    fontSize: 40,
                                    fontWeight: FontWeight.normal),
                              ),
                              Container(
                                height: 80,
                                alignment: Alignment.center,
                                child: DefaultTextStyle(
                                  style: GoogleFonts.monoton(
                                      //fruktur,monoton,cutivemono
                                      color: Colors.white,
                                      wordSpacing: 20,
                                      fontSize: 40,
                                      fontWeight: FontWeight.normal),
                                  child: AnimatedTextKit(
                                    animatedTexts: [
                                      RotateAnimatedText(
                                        'Flutter Developer',
                                      ),
                                      RotateAnimatedText(
                                        'Android Developer',
                                      ),
                                      RotateAnimatedText(
                                        'Techie',
                                      ),
                                      RotateAnimatedText(
                                        'Game Lover',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                subtitle[Random().nextInt(subtitle.length)],
                                style: GoogleFonts.monoton(
                                    //fruktur,monoton,cutivemono
                                    color: Colors.white,
                                    wordSpacing: 20,
                                    fontSize: 26,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1),
                        ),
                        height: 350,
                        alignment: Alignment.center,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Text(
                            'I am an aspiring Android Developer and a Competitive Programming Enthusiast, still a learner with the idea of implementing my work and growing into an open source contributor and a developer.',
                            style: GoogleFonts.amaticaSc(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w300),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      // Container(
                      //   alignment: Alignment.center,
                      //   decoration: BoxDecoration(
                      //     border: Border(
                      //       left: BorderSide(
                      //         color: Colors.white,
                      //         width: 2,
                      //       ),
                      //       right: BorderSide(
                      //         color: Colors.white,
                      //         width: 2,
                      //       ),
                      //     ),
                      //   ),
                      //   padding: EdgeInsets.symmetric(vertical: 40),
                      //   // height: 200,
                      //   child: Wrap(
                      //     alignment: WrapAlignment.center,
                      //     spacing: 80,
                      //     runSpacing: 30,
                      //     crossAxisAlignment: WrapCrossAlignment.center,
                      //     direction: Axis.horizontal,
                      //     children: [
                      //       for (int i = 0; i < 4; i++)
                      //         Container(
                      //           child: Column(
                      //             mainAxisAlignment: MainAxisAlignment.center,
                      //             children: [
                      //               CircleAvatar(
                      //                 radius: 50,
                      //                 backgroundColor: Colors.redAccent,
                      //                 child: icons[i],
                      //               ),
                      //               SizedBox(
                      //                 height: 10,
                      //               ),
                      //               Text(
                      //                 title[i],
                      //                 style: TextStyle(
                      //                     color: Colors.white, fontSize: 20),
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //     ],
                      //   ),
                      // ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                            right: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                        child: GridView.builder(
                            primary: false,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount:
                                  (MediaQuery.of(context).size.width > 560)
                                      ? 4
                                      : 2,
                              // childAspectRatio: 4,
                              mainAxisExtent:
                                  200, // <== change the height to fit your needs
                            ),
                            itemCount: 4,
                            itemBuilder: (context, i) {
                              return Container(
                                width: 100,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      radius: 40,
                                      backgroundColor: Colors.redAccent,
                                      child: icons[i],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      title[i],
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                      Container(
                        child: GridView.builder(
                            primary: false,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: (MediaQuery.of(context)
                                          .size
                                          .width >
                                      960)
                                  ? 3
                                  : (MediaQuery.of(context).size.width > 700)
                                      ? 2
                                      : 1,
                              // childAspectRatio: 4,
                              mainAxisExtent:
                                  600, // <== change the height to fit your needs
                            ),
                            itemCount: (MediaQuery.of(context).size.width > 960)
                                ? 3
                                : proj.length,
                            itemBuilder: (context, i) {
                              return buildProjectCard(proj, i);
                            }),
                      ),
                      Container(
                        width: double.maxFinite,
                        // height: 450,
                        child: Wrap(
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.end,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: MediaQuery.of(context).size.width < 960
                                ? aim.reversed.toList()
                                : aim),
                      ),
                      CustomBuilder.buildContactFooter(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildProjectCard(List<projects> proj, int i) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            proj[i].title.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
            ),
            textAlign: TextAlign.center,
          ),
          Image.network(
            proj[i].imgsrc.toString(),
            height: 200,
            width: 200,
          ),
          Text(
            proj[i].summary.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            width: 200,
            height: 50,
            color: Colors.white,
          ),
          Container(),
        ],
      ),
    );
  }
}
