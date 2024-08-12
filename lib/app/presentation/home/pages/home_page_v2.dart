import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator HomePage - FRAME

    return Container(
        width: 390,
        height: 844,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 91,
              left: 16,
              child: Container(
                  width: 358,
                  height: 643,
                  decoration: BoxDecoration(),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 13,
                        left: 0,
                        child: Container(
                            width: 358,
                            height: 36,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 358,
                                      height: 36,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 358,
                                                height: 36,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(8),
                                                    topRight:
                                                        Radius.circular(8),
                                                    bottomLeft:
                                                        Radius.circular(8),
                                                    bottomRight:
                                                        Radius.circular(8),
                                                  ),
                                                  color: Color.fromRGBO(
                                                      118,
                                                      118,
                                                      128,
                                                      0.11999999731779099),
                                                ))),
                                      ]))),
                              Positioned(
                                  top: 7,
                                  left: 29,
                                  child: Text(
                                    'Search',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(
                                            60, 60, 67, 0.6000000238418579),
                                        fontFamily: 'SF Pro Text',
                                        fontSize: 17,
                                        letterSpacing: -0.40799999237060547,
                                        fontWeight: FontWeight.normal,
                                        height: 1.2941176470588236),
                                  )),
                            ]))),
                    Positioned(
                        top: 65,
                        left: 0,
                        child: Container(
                            width: 358,
                            height: 122.0000228881836,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 358,
                                      height: 122,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8),
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        ),
                                        color: Color.fromRGBO(251, 236, 214, 1),
                                      ))),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 126,
                                      height: 122,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/app_logo.png'),
                                            fit: BoxFit.fitWidth),
                                      ))),
                              Positioned(
                                  top: 24,
                                  left: 85,
                                  child: Container(
                                      width: 188,
                                      height: 50,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 31,
                                            left: 38,
                                            child: Text(
                                              'Get Up to 60% Off',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      35, 170, 73, 1),
                                                  fontFamily: 'SF Pro Rounded',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.3571428571428572),
                                            )),
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Text(
                                              'Fresh Vegetables',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      26, 33, 40, 1),
                                                  fontFamily: 'Aclonica',
                                                  fontSize: 20,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 0.95),
                                            )),
                                      ]))),
                              Positioned(
                                  top: 37.8948974609375,
                                  left: 247.60162353515625,
                                  child: Transform.rotate(
                                    angle: 15.43302448321973 * (math.pi / 180),
                                    child: Container(
                                        width: 89.79251098632812,
                                        height: 87.25121307373047,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/app_logo.png'),
                                              fit: BoxFit.fitWidth),
                                        )),
                                  )),
                              Positioned(
                                  top: 41,
                                  left: 262,
                                  child: Container(
                                      width: 63,
                                      height: 61,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(235, 153, 0, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(63, 61)),
                                      ))),
                            ]))),
                    Positioned(
                        top: 211,
                        left: 0,
                        child: Text(
                          'Categories',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(26, 33, 40, 1),
                              fontFamily: 'SF Pro Text',
                              fontSize: 16,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.1875),
                        )),
                    Positioned(
                        top: 211,
                        left: 312,
                        child: Text(
                          'See all',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(26, 33, 40, 1),
                              fontFamily: 'SF Pro Text',
                              fontSize: 14,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 246,
                        left: 0,
                        child: Container(
                            width: 358,
                            height: 98,
                            decoration: BoxDecoration(),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 0, vertical: 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Container(
                                            width: 73,
                                            height: 73,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  child: Container(
                                                      width: 73,
                                                      height: 73,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromRGBO(
                                                            248, 155, 9, 0.5),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius
                                                                    .elliptical(
                                                                        73,
                                                                        73)),
                                                      ))),
                                              Positioned(
                                                  top: 14,
                                                  left: 11,
                                                  child: Container(
                                                      width: 45,
                                                      height: 45,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                'assets/images/app_logo.png'),
                                                            fit: BoxFit
                                                                .fitWidth),
                                                      ))),
                                            ])),
                                        SizedBox(height: 8),
                                        Text(
                                          'Fruits',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(26, 33, 40, 1),
                                              fontFamily: 'SF Pro Text',
                                              fontSize: 14,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.normal,
                                              height: 1.2142857142857142),
                                        ),
                                      ],
                                    ),
                                  )),
                              Positioned(
                                  top: 0,
                                  left: 89,
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 0, vertical: 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Container(
                                            width: 73,
                                            height: 73,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  child: Container(
                                                      width: 73,
                                                      height: 73,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromRGBO(
                                                            239, 243, 194, 1),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius
                                                                    .elliptical(
                                                                        73,
                                                                        73)),
                                                      ))),
                                              Positioned(
                                                  top: 12,
                                                  left: 14,
                                                  child: Container(
                                                      width: 45,
                                                      height: 44,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                'assets/images/app_logo.png'),
                                                            fit: BoxFit
                                                                .fitWidth),
                                                      ))),
                                            ])),
                                        SizedBox(height: 8),
                                        Text(
                                          'Vegetables',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(26, 33, 40, 1),
                                              fontFamily: 'SF Pro Text',
                                              fontSize: 14,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.normal,
                                              height: 1.2142857142857142),
                                        ),
                                      ],
                                    ),
                                  )),
                              Positioned(
                                  top: 0,
                                  left: 179,
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 0, vertical: 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Container(
                                            width: 73,
                                            height: 73,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  child: Container(
                                                      width: 73,
                                                      height: 73,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromRGBO(
                                                            255, 197, 193, 1),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius
                                                                    .elliptical(
                                                                        73,
                                                                        73)),
                                                      ))),
                                              Positioned(
                                                  top: 12,
                                                  left: 1,
                                                  child: Container(
                                                      width: 70,
                                                      height: 51,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                'assets/images/app_logo.png'),
                                                            fit: BoxFit
                                                                .fitWidth),
                                                      ))),
                                            ])),
                                        SizedBox(height: 8),
                                        Text(
                                          'Meat',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(26, 33, 40, 1),
                                              fontFamily: 'SF Pro Text',
                                              fontSize: 14,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.normal,
                                              height: 1.2142857142857142),
                                        ),
                                      ],
                                    ),
                                  )),
                              Positioned(
                                  top: 0,
                                  left: 357,
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 0, vertical: 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Container(
                                            width: 73,
                                            height: 73,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  child: Container(
                                                      width: 73,
                                                      height: 73,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromRGBO(
                                                            255, 198, 117, 1),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius
                                                                    .elliptical(
                                                                        73,
                                                                        73)),
                                                      ))),
                                              Positioned(
                                                  top: 3,
                                                  left: 4,
                                                  child: Container(
                                                      width: 69,
                                                      height: 70,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                'assets/images/app_logo.png'),
                                                            fit: BoxFit
                                                                .fitWidth),
                                                      ))),
                                            ])),
                                        SizedBox(height: 8),
                                        Text(
                                          'Bakery',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(26, 33, 40, 1),
                                              fontFamily: 'SF Pro Text',
                                              fontSize: 14,
                                              letterSpacing: 0,
                                              fontWeight: FontWeight.normal,
                                              height: 1.2142857142857142),
                                        ),
                                      ],
                                    ),
                                  )),
                              Positioned(
                                  top: 0,
                                  left: 268,
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 0, vertical: 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Container(
                                            width: 73,
                                            height: 73,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  child: Container(
                                                      width: 73,
                                                      height: 73,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromRGBO(
                                                            250, 228, 161, 1),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius
                                                                    .elliptical(
                                                                        73,
                                                                        73)),
                                                      ))),
                                              Positioned(
                                                  top: 14,
                                                  left: 5,
                                                  child: Container(
                                                      width: 62,
                                                      height: 41,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                'assets/images/app_logo.png'),
                                                            fit: BoxFit
                                                                .fitWidth),
                                                      ))),
                                            ])),
                                        SizedBox(height: 8),
                                        Container(
                                          decoration: BoxDecoration(),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 0, vertical: 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Text(
                                                'Chicken',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        26, 33, 40, 1),
                                                    fontFamily: 'SF Pro Text',
                                                    fontSize: 14,
                                                    letterSpacing: 0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1.2142857142857142),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ]))),
                    Positioned(
                        top: 403,
                        left: 0,
                        child: Container(
                            width: 358,
                            height: 240,
                            decoration: BoxDecoration(),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 374,
                                  child: Container(
                                      width: 171,
                                      height: 240,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 171,
                                                height: 240,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(8),
                                                    topRight:
                                                        Radius.circular(8),
                                                    bottomLeft:
                                                        Radius.circular(8),
                                                    bottomRight:
                                                        Radius.circular(8),
                                                  ),
                                                  border: Border.all(
                                                    color: Color.fromRGBO(
                                                        28, 39, 49, 1),
                                                    width: 1,
                                                  ),
                                                ))),
                                        Positioned(
                                            top: 194,
                                            left: 127,
                                            child: Container(
                                                width: 36,
                                                height: 36,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Container(
                                                          width: 36,
                                                          height: 36,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(22),
                                                              topRight: Radius
                                                                  .circular(22),
                                                              bottomLeft: Radius
                                                                  .circular(22),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          22),
                                                            ),
                                                            color:
                                                                Color.fromRGBO(
                                                                    35,
                                                                    170,
                                                                    73,
                                                                    1),
                                                          ))),
                                                  Positioned(
                                                      top: 10,
                                                      left: 10,
                                                      child: Container(
                                                          width: 16,
                                                          height: 16,
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    1),
                                                          ),
                                                          child: Stack(
                                                              children: <Widget>[
                                                                Positioned(
                                                                    top: 0,
                                                                    left: 0,
                                                                    child: Container(
                                                                        width: 16,
                                                                        height: 16,
                                                                        child: Stack(children: <Widget>[
                                                                          Positioned(
                                                                              top: 0,
                                                                              left: 0,
                                                                              child: SvgPicture.asset('assets/images/vector.svg', semanticsLabel: 'vector')),
                                                                        ]))),
                                                              ]))),
                                                ]))),
                                        Positioned(
                                            top: 130,
                                            left: 16,
                                            child: Text(
                                              'Mayonnais',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      26, 33, 40, 1),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 16,
                                                  letterSpacing:
                                                      -0.4099999964237213,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.0625),
                                            )),
                                        Positioned(
                                            top: 153,
                                            left: 16,
                                            child: Text(
                                              '325ml, price',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(28, 39,
                                                      49, 0.5199999809265137),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.2142857142857142),
                                            )),
                                        Positioned(
                                            top: 202,
                                            left: 16,
                                            child: Text(
                                              '\$4.99',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 66, 66, 1),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 18,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.2222222222222223),
                                            )),
                                        Positioned(
                                            top: 19.8179931640625,
                                            left: 59.4010009765625,
                                            child: Container(
                                                width: 51.45716094970703,
                                                height: 91.87828826904297,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/app_logo.png'),
                                                      fit: BoxFit.fitWidth),
                                                ))),
                                        Positioned(
                                            top: 10,
                                            left: 133,
                                            child: Container(
                                                width: 24,
                                                height: 24,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Container(
                                                          width: 24,
                                                          height: 24,
                                                          child: Stack(
                                                              children: <Widget>[
                                                                Positioned(
                                                                    top:
                                                                        2.3499999046325684,
                                                                    left: 1.25,
                                                                    child: SvgPicture.asset(
                                                                        'assets/images/vector.svg',
                                                                        semanticsLabel:
                                                                            'vector')),
                                                                Positioned(
                                                                    top: 0,
                                                                    left: 0,
                                                                    child: SvgPicture.asset(
                                                                        'assets/images/vector.svg',
                                                                        semanticsLabel:
                                                                            'vector')),
                                                              ]))),
                                                ]))),
                                      ]))),
                              Positioned(
                                  top: 0,
                                  left: 561,
                                  child: Container(
                                      width: 171,
                                      height: 240,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 171,
                                                height: 240,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(8),
                                                    topRight:
                                                        Radius.circular(8),
                                                    bottomLeft:
                                                        Radius.circular(8),
                                                    bottomRight:
                                                        Radius.circular(8),
                                                  ),
                                                  border: Border.all(
                                                    color: Color.fromRGBO(
                                                        28, 39, 49, 1),
                                                    width: 1,
                                                  ),
                                                ))),
                                        Positioned(
                                            top: 194,
                                            left: 127,
                                            child: Container(
                                                width: 36,
                                                height: 36,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Container(
                                                          width: 36,
                                                          height: 36,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(22),
                                                              topRight: Radius
                                                                  .circular(22),
                                                              bottomLeft: Radius
                                                                  .circular(22),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          22),
                                                            ),
                                                            color:
                                                                Color.fromRGBO(
                                                                    35,
                                                                    170,
                                                                    73,
                                                                    1),
                                                          ))),
                                                  Positioned(
                                                      top: 10,
                                                      left: 10,
                                                      child: Container(
                                                          width: 16,
                                                          height: 16,
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    1),
                                                          ),
                                                          child: Stack(
                                                              children: <Widget>[
                                                                Positioned(
                                                                    top: 0,
                                                                    left: 0,
                                                                    child: Container(
                                                                        width: 16,
                                                                        height: 16,
                                                                        child: Stack(children: <Widget>[
                                                                          Positioned(
                                                                              top: 0,
                                                                              left: 0,
                                                                              child: SvgPicture.asset('assets/images/vector.svg', semanticsLabel: 'vector')),
                                                                        ]))),
                                                              ]))),
                                                ]))),
                                        Positioned(
                                            top: 136,
                                            left: 16,
                                            child: Text(
                                              'Orange Juice',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      26, 33, 40, 1),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 16,
                                                  letterSpacing:
                                                      -0.4099999964237213,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.0625),
                                            )),
                                        Positioned(
                                            top: 159,
                                            left: 16,
                                            child: Text(
                                              '2L, price',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(28, 39,
                                                      49, 0.5199999809265137),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.2142857142857142),
                                            )),
                                        Positioned(
                                            top: 202,
                                            left: 16,
                                            child: Text(
                                              '\$15.99',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 66, 66, 1),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 18,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.2222222222222223),
                                            )),
                                        Positioned(
                                            top: 23.855316162109375,
                                            left: 38.03759765625,
                                            child: Container(
                                                width: 93.20613098144531,
                                                height: 93.20613098144531,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/app_logo.png'),
                                                      fit: BoxFit.fitWidth),
                                                ))),
                                        Positioned(
                                            top: 10,
                                            left: 133,
                                            child: Container(
                                                width: 24,
                                                height: 24,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Container(
                                                          width: 24,
                                                          height: 24,
                                                          child: Stack(
                                                              children: <Widget>[
                                                                Positioned(
                                                                    top:
                                                                        2.3499999046325684,
                                                                    left: 1.25,
                                                                    child: SvgPicture.asset(
                                                                        'assets/images/vector.svg',
                                                                        semanticsLabel:
                                                                            'vector')),
                                                                Positioned(
                                                                    top: 0,
                                                                    left: 0,
                                                                    child: SvgPicture.asset(
                                                                        'assets/images/vector.svg',
                                                                        semanticsLabel:
                                                                            'vector')),
                                                              ]))),
                                                ]))),
                                      ]))),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 171,
                                      height: 240,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 171,
                                                height: 240,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(8),
                                                    topRight:
                                                        Radius.circular(8),
                                                    bottomLeft:
                                                        Radius.circular(8),
                                                    bottomRight:
                                                        Radius.circular(8),
                                                  ),
                                                  border: Border.all(
                                                    color: Color.fromRGBO(
                                                        28, 39, 49, 1),
                                                    width: 1,
                                                  ),
                                                ))),
                                        Positioned(
                                            top: 194,
                                            left: 127,
                                            child: Container(
                                                width: 36,
                                                height: 36,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Container(
                                                          width: 36,
                                                          height: 36,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(22),
                                                              topRight: Radius
                                                                  .circular(22),
                                                              bottomLeft: Radius
                                                                  .circular(22),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          22),
                                                            ),
                                                            color:
                                                                Color.fromRGBO(
                                                                    35,
                                                                    170,
                                                                    73,
                                                                    1),
                                                          ))),
                                                  Positioned(
                                                      top: 10,
                                                      left: 10,
                                                      child: Container(
                                                          width: 16,
                                                          height: 16,
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    1),
                                                          ),
                                                          child: Stack(
                                                              children: <Widget>[
                                                                Positioned(
                                                                    top: 0,
                                                                    left: 0,
                                                                    child: Container(
                                                                        width: 16,
                                                                        height: 16,
                                                                        child: Stack(children: <Widget>[
                                                                          Positioned(
                                                                              top: 0,
                                                                              left: 0,
                                                                              child: SvgPicture.asset('assets/images/vector.svg', semanticsLabel: 'vector')),
                                                                        ]))),
                                                              ]))),
                                                ]))),
                                        Positioned(
                                            top: 32,
                                            left: 41,
                                            child: Container(
                                                width: 90,
                                                height: 80,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/app_logo.png'),
                                                      fit: BoxFit.fitWidth),
                                                ))),
                                        Positioned(
                                            top: 130,
                                            left: 16,
                                            child: Text(
                                              'Avacado',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      26, 33, 40, 1),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 16,
                                                  letterSpacing:
                                                      -0.4099999964237213,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.0625),
                                            )),
                                        Positioned(
                                            top: 153,
                                            left: 16,
                                            child: Text(
                                              '1Kg, priceg',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(28, 39,
                                                      49, 0.5199999809265137),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.2142857142857142),
                                            )),
                                        Positioned(
                                            top: 202,
                                            left: 16,
                                            child: Text(
                                              '\$5.00',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 66, 66, 1),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 18,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.2222222222222223),
                                            )),
                                        Positioned(
                                            top: 10,
                                            left: 133,
                                            child: Container(
                                                width: 24,
                                                height: 24,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 2.3499999046325684,
                                                      left: 1.25,
                                                      child: SvgPicture.asset(
                                                          'assets/images/vector.svg',
                                                          semanticsLabel:
                                                              'vector')),
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: SvgPicture.asset(
                                                          'assets/images/vector.svg',
                                                          semanticsLabel:
                                                              'vector')),
                                                ]))),
                                      ]))),
                              Positioned(
                                  top: 0,
                                  left: 187,
                                  child: Container(
                                      width: 171,
                                      height: 240,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 171,
                                                height: 240,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(8),
                                                    topRight:
                                                        Radius.circular(8),
                                                    bottomLeft:
                                                        Radius.circular(8),
                                                    bottomRight:
                                                        Radius.circular(8),
                                                  ),
                                                  border: Border.all(
                                                    color: Color.fromRGBO(
                                                        28, 39, 49, 1),
                                                    width: 1,
                                                  ),
                                                ))),
                                        Positioned(
                                            top: 194,
                                            left: 127,
                                            child: Container(
                                                width: 36,
                                                height: 36,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Container(
                                                          width: 36,
                                                          height: 36,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(22),
                                                              topRight: Radius
                                                                  .circular(22),
                                                              bottomLeft: Radius
                                                                  .circular(22),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          22),
                                                            ),
                                                            color:
                                                                Color.fromRGBO(
                                                                    35,
                                                                    170,
                                                                    73,
                                                                    1),
                                                          ))),
                                                  Positioned(
                                                      top: 10,
                                                      left: 10,
                                                      child: Container(
                                                          width: 16,
                                                          height: 16,
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    1),
                                                          ),
                                                          child: Stack(
                                                              children: <Widget>[
                                                                Positioned(
                                                                    top: 0,
                                                                    left: 0,
                                                                    child: Container(
                                                                        width: 16,
                                                                        height: 16,
                                                                        child: Stack(children: <Widget>[
                                                                          Positioned(
                                                                              top: 0,
                                                                              left: 0,
                                                                              child: SvgPicture.asset('assets/images/vector.svg', semanticsLabel: 'vector')),
                                                                        ]))),
                                                              ]))),
                                                ]))),
                                        Positioned(
                                            top: 130,
                                            left: 16,
                                            child: Text(
                                              'Egg Noodels',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      26, 33, 40, 1),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 16,
                                                  letterSpacing:
                                                      -0.4099999964237213,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.0625),
                                            )),
                                        Positioned(
                                            top: 153,
                                            left: 16,
                                            child: Text(
                                              '2L, price',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(28, 39,
                                                      49, 0.5199999809265137),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.2142857142857142),
                                            )),
                                        Positioned(
                                            top: 202,
                                            left: 18,
                                            child: Text(
                                              '\$15.99',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 66, 66, 1),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 18,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.2222222222222223),
                                            )),
                                        Positioned(
                                            top: 18.38800048828125,
                                            left: 55.5836181640625,
                                            child: Container(
                                                width: 61.347347259521484,
                                                height: 93.51729583740234,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/app_logo.png'),
                                                      fit: BoxFit.fitWidth),
                                                ))),
                                        Positioned(
                                            top: 10,
                                            left: 133,
                                            child: Container(
                                                width: 24,
                                                height: 24,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Container(
                                                          width: 24,
                                                          height: 24,
                                                          child: Stack(
                                                              children: <Widget>[
                                                                Positioned(
                                                                    top:
                                                                        2.3499999046325684,
                                                                    left: 1.25,
                                                                    child: SvgPicture.asset(
                                                                        'assets/images/vector.svg',
                                                                        semanticsLabel:
                                                                            'vector')),
                                                                Positioned(
                                                                    top: 0,
                                                                    left: 0,
                                                                    child: SvgPicture.asset(
                                                                        'assets/images/vector.svg',
                                                                        semanticsLabel:
                                                                            'vector')),
                                                              ]))),
                                                ]))),
                                      ]))),
                            ]))),
                    Positioned(
                        top: 368,
                        left: 0,
                        child: Container(
                            width: 358,
                            height: 19,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 1,
                                  left: 312.87396240234375,
                                  child: Text(
                                    'See all',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(26, 33, 40, 1),
                                        fontFamily: 'SF Pro Text',
                                        fontSize: 14,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Text(
                                    'Best Selling',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(26, 33, 40, 1),
                                        fontFamily: 'SF Pro Text',
                                        fontSize: 16,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.1875),
                                  )),
                            ]))),
                    Positioned(
                        top: 667,
                        left: 0,
                        child: Container(
                            width: 358,
                            height: 19,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Text(
                                    'Popular Items',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(26, 33, 40, 1),
                                        fontFamily: 'SF Pro Text',
                                        fontSize: 16,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.1875),
                                  )),
                              Positioned(
                                  top: 1,
                                  left: 312.7471923828125,
                                  child: Text(
                                    'See all',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(26, 33, 40, 1),
                                        fontFamily: 'SF Pro Text',
                                        fontSize: 14,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                            ]))),
                    Positioned(
                        top: 702,
                        left: 0,
                        child: Container(
                            width: 358,
                            height: 240,
                            decoration: BoxDecoration(),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 374,
                                  child: Container(
                                      width: 171,
                                      height: 240,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 153,
                                            left: 16,
                                            child: Text(
                                              '7Pcs,Priceg',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(28, 39,
                                                      49, 0.5199999809265137),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.2142857142857142),
                                            )),
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 171,
                                                height: 240,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                  ),
                                                  border: Border.all(
                                                    color: Color.fromRGBO(
                                                        28, 39, 49, 1),
                                                    width: 1,
                                                  ),
                                                ))),
                                        Positioned(
                                            top: 130,
                                            left: 16,
                                            child: Text(
                                              'Bananas',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      26, 33, 40, 1),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 16,
                                                  letterSpacing:
                                                      -0.4099999964237213,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.0625),
                                            )),
                                        Positioned(
                                            top: 202,
                                            left: 16,
                                            child: Text(
                                              '\$9.00',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 66, 66, 1),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 18,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.2222222222222223),
                                            )),
                                        Positioned(
                                            top: 74.88720703125,
                                            left: 20.156265258789062,
                                            child: Transform.rotate(
                                              angle: 34.47574973657068 *
                                                  (math.pi / 180),
                                              child: Container(
                                                  width: 111.0969467163086,
                                                  height: 74.46498107910156,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/app_logo.png'),
                                                        fit: BoxFit.fitWidth),
                                                  )),
                                            )),
                                        Positioned(
                                            top: 194,
                                            left: 127,
                                            child: Container(
                                                width: 36,
                                                height: 36,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Container(
                                                          width: 36,
                                                          height: 36,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(22),
                                                              topRight: Radius
                                                                  .circular(22),
                                                              bottomLeft: Radius
                                                                  .circular(22),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          22),
                                                            ),
                                                            color:
                                                                Color.fromRGBO(
                                                                    35,
                                                                    170,
                                                                    73,
                                                                    1),
                                                          ))),
                                                  Positioned(
                                                      top: 10,
                                                      left: 10,
                                                      child: Container(
                                                          width: 16,
                                                          height: 16,
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    1),
                                                          ),
                                                          child: Stack(
                                                              children: <Widget>[
                                                                Positioned(
                                                                    top: 0,
                                                                    left: 0,
                                                                    child: Container(
                                                                        width: 16,
                                                                        height: 16,
                                                                        child: Stack(children: <Widget>[
                                                                          Positioned(
                                                                              top: 0,
                                                                              left: 0,
                                                                              child: SvgPicture.asset('assets/images/vector.svg', semanticsLabel: 'vector')),
                                                                        ]))),
                                                              ]))),
                                                ]))),
                                        Positioned(
                                          top: 10,
                                          left: 133,
                                          child: Text(''),
                                        ),
                                        Positioned(
                                          top: 10,
                                          left: 133,
                                          child: Text(''),
                                        ),
                                      ]))),
                              Positioned(
                                  top: 0,
                                  left: 561,
                                  child: Container(
                                      width: 171,
                                      height: 240,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 153,
                                            left: 16,
                                            child: Text(
                                              '1Kg,Priceg',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(28, 39,
                                                      49, 0.5199999809265137),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.2142857142857142),
                                            )),
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 171,
                                                height: 240,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                  ),
                                                  border: Border.all(
                                                    color: Color.fromRGBO(
                                                        28, 39, 49, 1),
                                                    width: 1,
                                                  ),
                                                ))),
                                        Positioned(
                                            top: 130,
                                            left: 16,
                                            child: Text(
                                              'Lamb Meat',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      26, 33, 40, 1),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 16,
                                                  letterSpacing:
                                                      -0.4099999964237213,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.0625),
                                            )),
                                        Positioned(
                                            top: 202,
                                            left: 16,
                                            child: Text(
                                              '\$45.00',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 66, 66, 1),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 18,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.2222222222222223),
                                            )),
                                        Positioned(
                                            top: 194,
                                            left: 127,
                                            child: Container(
                                                width: 36,
                                                height: 36,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Container(
                                                          width: 36,
                                                          height: 36,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(22),
                                                              topRight: Radius
                                                                  .circular(22),
                                                              bottomLeft: Radius
                                                                  .circular(22),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          22),
                                                            ),
                                                            color:
                                                                Color.fromRGBO(
                                                                    35,
                                                                    170,
                                                                    73,
                                                                    1),
                                                          ))),
                                                  Positioned(
                                                      top: 10,
                                                      left: 10,
                                                      child: Container(
                                                          width: 16,
                                                          height: 16,
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    1),
                                                          ),
                                                          child: Stack(
                                                              children: <Widget>[
                                                                Positioned(
                                                                    top: 0,
                                                                    left: 0,
                                                                    child: Container(
                                                                        width: 16,
                                                                        height: 16,
                                                                        child: Stack(children: <Widget>[
                                                                          Positioned(
                                                                              top: 0,
                                                                              left: 0,
                                                                              child: SvgPicture.asset('assets/images/vector.svg', semanticsLabel: 'vector')),
                                                                        ]))),
                                                              ]))),
                                                ]))),
                                        Positioned(
                                          top: 10,
                                          left: 133,
                                          child: Text(''),
                                        ),
                                        Positioned(
                                            top: 32,
                                            left: 22,
                                            child: Container(
                                                width: 127,
                                                height: 80,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/app_logo.png'),
                                                      fit: BoxFit.fitWidth),
                                                ))),
                                        Positioned(
                                          top: 10,
                                          left: 133,
                                          child: Text(''),
                                        ),
                                      ]))),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 171,
                                      height: 240,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 171,
                                                height: 240,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(8),
                                                    topRight:
                                                        Radius.circular(8),
                                                    bottomLeft:
                                                        Radius.circular(8),
                                                    bottomRight:
                                                        Radius.circular(8),
                                                  ),
                                                  border: Border.all(
                                                    color: Color.fromRGBO(
                                                        28, 39, 49, 1),
                                                    width: 1,
                                                  ),
                                                ))),
                                        Positioned(
                                            top: 194,
                                            left: 127,
                                            child: Container(
                                                width: 36,
                                                height: 36,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Container(
                                                          width: 36,
                                                          height: 36,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(22),
                                                              topRight: Radius
                                                                  .circular(22),
                                                              bottomLeft: Radius
                                                                  .circular(22),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          22),
                                                            ),
                                                            color:
                                                                Color.fromRGBO(
                                                                    35,
                                                                    170,
                                                                    73,
                                                                    1),
                                                          ))),
                                                  Positioned(
                                                      top: 10,
                                                      left: 10,
                                                      child: Container(
                                                          width: 16,
                                                          height: 16,
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    1),
                                                          ),
                                                          child: Stack(
                                                              children: <Widget>[
                                                                Positioned(
                                                                    top: 0,
                                                                    left: 0,
                                                                    child: Container(
                                                                        width: 16,
                                                                        height: 16,
                                                                        child: Stack(children: <Widget>[
                                                                          Positioned(
                                                                              top: 0,
                                                                              left: 0,
                                                                              child: SvgPicture.asset('assets/images/vector.svg', semanticsLabel: 'vector')),
                                                                        ]))),
                                                              ]))),
                                                ]))),
                                        Positioned(
                                            top: 130,
                                            left: 16,
                                            child: Text(
                                              'Fresh Lettuce',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      26, 33, 40, 1),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 16,
                                                  letterSpacing:
                                                      -0.4099999964237213,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.0625),
                                            )),
                                        Positioned(
                                            top: 153,
                                            left: 16,
                                            child: Text(
                                              '1Kg, priceg',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(28, 39,
                                                      49, 0.5199999809265137),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.2142857142857142),
                                            )),
                                        Positioned(
                                            top: 202,
                                            left: 16,
                                            child: Text(
                                              '\$2.00',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 66, 66, 1),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 18,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.2222222222222223),
                                            )),
                                        Positioned(
                                            top: 31,
                                            left: 44,
                                            child: Container(
                                                width: 83,
                                                height: 81,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/app_logo.png'),
                                                      fit: BoxFit.fitWidth),
                                                ))),
                                        Positioned(
                                          top: 10,
                                          left: 133,
                                          child: Text(''),
                                        ),
                                      ]))),
                              Positioned(
                                  top: 0,
                                  left: 187,
                                  child: Container(
                                      width: 171,
                                      height: 240,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 153,
                                            left: 20,
                                            child: Text(
                                              '1Kg,Priceg',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(28, 39,
                                                      49, 0.5199999809265137),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 14,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.2142857142857142),
                                            )),
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 171,
                                                height: 240,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10),
                                                  ),
                                                  border: Border.all(
                                                    color: Color.fromRGBO(
                                                        28, 39, 49, 1),
                                                    width: 1,
                                                  ),
                                                ))),
                                        Positioned(
                                            top: 130,
                                            left: 16,
                                            child: Text(
                                              'Bell Pepper Red',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      26, 33, 40, 1),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 16,
                                                  letterSpacing:
                                                      -0.4099999964237213,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.0625),
                                            )),
                                        Positioned(
                                            top: 202,
                                            left: 16,
                                            child: Text(
                                              '\$2.00',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 66, 66, 1),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 18,
                                                  letterSpacing:
                                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.2222222222222223),
                                            )),
                                        Positioned(
                                            top: 194,
                                            left: 127,
                                            child: Container(
                                                width: 36,
                                                height: 36,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Container(
                                                          width: 36,
                                                          height: 36,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(22),
                                                              topRight: Radius
                                                                  .circular(22),
                                                              bottomLeft: Radius
                                                                  .circular(22),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          22),
                                                            ),
                                                            color:
                                                                Color.fromRGBO(
                                                                    35,
                                                                    170,
                                                                    73,
                                                                    1),
                                                          ))),
                                                  Positioned(
                                                      top: 10,
                                                      left: 10,
                                                      child: Container(
                                                          width: 16,
                                                          height: 16,
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    1),
                                                          ),
                                                          child: Stack(
                                                              children: <Widget>[
                                                                Positioned(
                                                                    top: 0,
                                                                    left: 0,
                                                                    child: Container(
                                                                        width: 16,
                                                                        height: 16,
                                                                        child: Stack(children: <Widget>[
                                                                          Positioned(
                                                                              top: 0,
                                                                              left: 0,
                                                                              child: SvgPicture.asset('assets/images/vector.svg', semanticsLabel: 'vector')),
                                                                        ]))),
                                                              ]))),
                                                ]))),
                                        Positioned(
                                          top: 10,
                                          left: 133,
                                          child: Text(''),
                                        ),
                                        Positioned(
                                            top: 32,
                                            left: 131,
                                            child: Transform.rotate(
                                              angle: -179.99999499104345 *
                                                  (math.pi / 180),
                                              child: Container(
                                                  width: 91.00000762939453,
                                                  height: 79.99999237060547,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/app_logo.png'),
                                                        fit: BoxFit.fitWidth),
                                                  )),
                                            )),
                                      ]))),
                            ]))),
                  ]))),
          Positioned(
              top: 760,
              left: 0,
              child: Container(
                  width: 390,
                  height: 84,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 1,
                        left: 0,
                        child: Container(
                            width: 390,
                            height: 49,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 0, vertical: 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Container(
                                            width: 75,
                                            height: 49,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                top: 0,
                                                left: 0,
                                                child: Text(''),
                                              ),
                                              Positioned(
                                                  top: 7,
                                                  left: 23,
                                                  child: Container(
                                                      width: 28,
                                                      height: 38,
                                                      child: Stack(
                                                          children: <Widget>[
                                                            Positioned(
                                                                top:
                                                                    25.99999237060547,
                                                                left: 0,
                                                                child: Text(
                                                                  'Home',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: Color.fromRGBO(
                                                                          35,
                                                                          170,
                                                                          73,
                                                                          1),
                                                                      fontFamily:
                                                                          'SF Pro Text',
                                                                      fontSize:
                                                                          10,
                                                                      letterSpacing:
                                                                          -0.23999999463558197,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      height:
                                                                          1),
                                                                )),
                                                            Positioned(
                                                              top: 0,
                                                              left:
                                                                  2.000120162963867,
                                                              child: Text(''),
                                                            ),
                                                          ]))),
                                            ])),
                                        SizedBox(width: 4),
                                        Container(
                                            width: 75,
                                            height: 49,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                top: 0,
                                                left: 0,
                                                child: Text(''),
                                              ),
                                              Positioned(
                                                  top: 7,
                                                  left: 19.999755859375,
                                                  child: Container(
                                                      width: 34.999996185302734,
                                                      height: 38,
                                                      child: Stack(
                                                          children: <Widget>[
                                                            Positioned(
                                                              top:
                                                                  -1.1368683772161603e-13,
                                                              left:
                                                                  11.000167846679688,
                                                              child: Text(''),
                                                            ),
                                                            Positioned(
                                                                top:
                                                                    2.15386962890625,
                                                                left:
                                                                    1.259757399559021,
                                                                child: Container(
                                                                    width: 8.877756118774414,
                                                                    height: 15.947129249572754,
                                                                    child: Stack(children: <Widget>[
                                                                      Positioned(
                                                                          top:
                                                                              0,
                                                                          left:
                                                                              0,
                                                                          child: Container(
                                                                              width: 8.877756118774414,
                                                                              height: 15.947129249572754,
                                                                              child: Stack(children: <Widget>[
                                                                                Positioned(
                                                                                    top: 0,
                                                                                    left: 0,
                                                                                    child: Container(
                                                                                        width: 8.877756118774414,
                                                                                        height: 2.2146716117858887,
                                                                                        decoration: BoxDecoration(
                                                                                          borderRadius: BorderRadius.only(
                                                                                            topLeft: Radius.circular(13),
                                                                                            topRight: Radius.circular(13),
                                                                                            bottomLeft: Radius.circular(13),
                                                                                            bottomRight: Radius.circular(13),
                                                                                          ),
                                                                                          color: Color.fromRGBO(28, 39, 49, 0.36000001430511475),
                                                                                        ))),
                                                                                Positioned(
                                                                                    top: 6.866115570068359,
                                                                                    left: 0,
                                                                                    child: Container(
                                                                                        width: 6.4807586669921875,
                                                                                        height: 2.2146716117858887,
                                                                                        decoration: BoxDecoration(
                                                                                          borderRadius: BorderRadius.only(
                                                                                            topLeft: Radius.circular(13),
                                                                                            topRight: Radius.circular(13),
                                                                                            bottomLeft: Radius.circular(13),
                                                                                            bottomRight: Radius.circular(13),
                                                                                          ),
                                                                                          color: Color.fromRGBO(28, 39, 49, 0.36000001430511475),
                                                                                        ))),
                                                                                Positioned(
                                                                                    top: 13.73245620727539,
                                                                                    left: 0,
                                                                                    child: Container(
                                                                                        width: 8.877756118774414,
                                                                                        height: 2.2146716117858887,
                                                                                        decoration: BoxDecoration(
                                                                                          borderRadius: BorderRadius.only(
                                                                                            topLeft: Radius.circular(13),
                                                                                            topRight: Radius.circular(13),
                                                                                            bottomLeft: Radius.circular(13),
                                                                                            bottomRight: Radius.circular(13),
                                                                                          ),
                                                                                          color: Color.fromRGBO(28, 39, 49, 0.36000001430511475),
                                                                                        ))),
                                                                              ]))),
                                                                    ]))),
                                                            Positioned(
                                                                top:
                                                                    25.99999237060547,
                                                                left: 0,
                                                                child: Text(
                                                                  'Explore',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: Color.fromRGBO(
                                                                          28,
                                                                          39,
                                                                          49,
                                                                          0.36000001430511475),
                                                                      fontFamily:
                                                                          'SF Pro Text',
                                                                      fontSize:
                                                                          10,
                                                                      letterSpacing:
                                                                          -0.23999999463558197,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      height:
                                                                          1),
                                                                )),
                                                          ]))),
                                            ])),
                                        SizedBox(width: 4),
                                        Container(
                                            width: 75,
                                            height: 49,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  child: Container(
                                                      width: 75,
                                                      height: 49,
                                                      child: Stack(
                                                          children: <Widget>[
                                                            Positioned(
                                                              top: 0,
                                                              left: 0,
                                                              child: Text(''),
                                                            ),
                                                          ]))),
                                              Positioned(
                                                  top: 7,
                                                  left: 26,
                                                  child: Container(
                                                      width: 24,
                                                      height: 38,
                                                      child: Stack(
                                                          children: <Widget>[
                                                            Positioned(
                                                              top: 0,
                                                              left: 0,
                                                              child: Text(''),
                                                            ),
                                                            Positioned(
                                                                top: 26,
                                                                left:
                                                                    1.9846153259277344,
                                                                child:
                                                                    Container(
                                                                        width:
                                                                            21,
                                                                        height:
                                                                            12,
                                                                        child:
                                                                            Stack(children: <Widget>[
                                                                          Positioned(
                                                                              top: 0,
                                                                              left: 0,
                                                                              child: Text(
                                                                                'Cart',
                                                                                textAlign: TextAlign.center,
                                                                                style: TextStyle(color: Color.fromRGBO(28, 39, 49, 0.36000001430511475), fontFamily: 'SF Pro Text', fontSize: 10, letterSpacing: -0.23999999463558197, fontWeight: FontWeight.normal, height: 1),
                                                                              )),
                                                                        ]))),
                                                          ]))),
                                            ])),
                                        SizedBox(width: 4),
                                        Container(
                                            width: 75,
                                            height: 49,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                  top: 7,
                                                  left: 16,
                                                  child: Container(
                                                      width: 43,
                                                      height: 38,
                                                      child: Stack(
                                                          children: <Widget>[
                                                            Positioned(
                                                              top: 0,
                                                              left:
                                                                  9.000056266784668,
                                                              child: Text(''),
                                                            ),
                                                            Positioned(
                                                                top:
                                                                    25.99999237060547,
                                                                left: 0,
                                                                child: Text(
                                                                  'Favourite',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: Color.fromRGBO(
                                                                          28,
                                                                          39,
                                                                          49,
                                                                          0.36000001430511475),
                                                                      fontFamily:
                                                                          'SF Pro Text',
                                                                      fontSize:
                                                                          10,
                                                                      letterSpacing:
                                                                          -0.23999999463558197,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      height:
                                                                          1),
                                                                )),
                                                          ]))),
                                              Positioned(
                                                top: 0,
                                                left: 0,
                                                child: Text(''),
                                              ),
                                            ])),
                                        SizedBox(width: 4),
                                        Container(
                                            width: 76,
                                            height: 49,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                top: 0,
                                                left: 0,
                                                child: Text(''),
                                              ),
                                              Positioned(
                                                  top: 7,
                                                  left: 23,
                                                  child: Container(
                                                      width: 30,
                                                      height: 38,
                                                      child: Stack(
                                                          children: <Widget>[
                                                            Positioned(
                                                              top: 0,
                                                              left: 3,
                                                              child: Text(''),
                                                            ),
                                                            Positioned(
                                                                top: 26,
                                                                left: 0,
                                                                child: Text(
                                                                  'Profile',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: Color.fromRGBO(
                                                                          28,
                                                                          39,
                                                                          49,
                                                                          0.36000001430511475),
                                                                      fontFamily:
                                                                          'SF Pro Text',
                                                                      fontSize:
                                                                          10,
                                                                      letterSpacing:
                                                                          -0.23999999463558197,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      height:
                                                                          1),
                                                                )),
                                                          ]))),
                                            ])),
                                      ],
                                    ),
                                  )),
                            ]))),
                    Positioned(
                        top: 0.5,
                        left: 0,
                        child: Transform.rotate(
                          angle: 2.4848083448933725e-17 * (math.pi / 180),
                          child: Divider(
                              color: Color.fromRGBO(219, 219, 219, 1),
                              thickness: 1),
                        )),
                    Positioned(
                        top: 71,
                        left: 127,
                        child: Container(
                            width: 135,
                            height: 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              ),
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ))),
                  ]))),
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 390,
                  height: 91,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 47,
                        left: 16,
                        child: Container(
                            width: 358,
                            height: 44,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 11,
                                  left: 0,
                                  child: Container(
                                      width: 76,
                                      height: 22,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Text(
                                              'Hi,Mahsa',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      26, 33, 40, 1),
                                                  fontFamily: 'SF Pro Text',
                                                  fontSize: 18,
                                                  letterSpacing:
                                                      -0.4099999964237213,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.2222222222222223),
                                            )),
                                      ]))),
                              Positioned(
                                  top: 0,
                                  left: 314,
                                  child: Container(
                                      width: 44,
                                      height: 44,
                                      decoration: BoxDecoration(),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 10,
                                            left: 10,
                                            child: Container(
                                                width: 24,
                                                height: 24,
                                                decoration: BoxDecoration(),
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 2,
                                                      left: 4,
                                                      child: Container(
                                                          width:
                                                              16.66666603088379,
                                                          height: 20,
                                                          child: Stack(
                                                              children: <Widget>[
                                                                Positioned(
                                                                    top: 0,
                                                                    left: 0,
                                                                    child: Container(
                                                                        width: 16.66666603088379,
                                                                        height: 20,
                                                                        child: Stack(children: <Widget>[
                                                                          Positioned(
                                                                              top: -1.7763568394002505e-15,
                                                                              left: 8.881784197001252e-15,
                                                                              child: SvgPicture.asset('assets/images/vector.svg', semanticsLabel: 'vector')),
                                                                        ]))),
                                                              ]))),
                                                ]))),
                                      ]))),
                            ]))),
                    Positioned(
                        top: 91,
                        left: 0,
                        child: Transform.rotate(
                          angle: 2.4848083448933725e-17 * (math.pi / 180),
                          child: Divider(
                              color: Color.fromRGBO(219, 219, 219, 1),
                              thickness: 1),
                        )),
                    Positioned(
                        top: 14,
                        left: 32,
                        child: Container(
                            width: 336,
                            height: 22,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 6,
                                  left: 270,
                                  child: Container(
                                      width: 66,
                                      height: 11,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 41.913360595703125,
                                            child: Container(
                                                width: 24.086679458618164,
                                                height: 11,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Container(
                                                          width: 21.78173828125,
                                                          height: 11,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      2.6666667461395264),
                                                              topRight: Radius
                                                                  .circular(
                                                                      2.6666667461395264),
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      2.6666667461395264),
                                                              bottomRight: Radius
                                                                  .circular(
                                                                      2.6666667461395264),
                                                            ),
                                                            border: Border.all(
                                                              color: Color
                                                                  .fromRGBO(0,
                                                                      0, 0, 1),
                                                              width: 1,
                                                            ),
                                                          ))),
                                                  Positioned(
                                                      top: 3.5595703125,
                                                      left: 22.771873474121094,
                                                      child: SvgPicture.asset(
                                                          'assets/images/cap.svg',
                                                          semanticsLabel:
                                                              'cap')),
                                                  Positioned(
                                                      top: 1.94140625,
                                                      left: 1.9802134037017822,
                                                      child: Container(
                                                          width:
                                                              17.821422576904297,
                                                          height:
                                                              7.117647647857666,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      1.3333333730697632),
                                                              topRight: Radius
                                                                  .circular(
                                                                      1.3333333730697632),
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      1.3333333730697632),
                                                              bottomRight: Radius
                                                                  .circular(
                                                                      1.3333333730697632),
                                                            ),
                                                            color:
                                                                Color.fromRGBO(
                                                                    247,
                                                                    206,
                                                                    69,
                                                                    1),
                                                          ))),
                                                ]))),
                                        Positioned(
                                          top: 0,
                                          left: 21.781782150268555,
                                          child: Text(''),
                                        ),
                                        Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Text(''),
                                        ),
                                      ]))),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Text(
                                    '16:40',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'SF Pro Text',
                                        fontSize: 15,
                                        letterSpacing: -0.4099999964237213,
                                        fontWeight: FontWeight.normal,
                                        height: 1.4666666666666666),
                                  )),
                            ]))),
                  ]))),
        ]));
  }
}
