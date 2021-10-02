import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<String> boardingText = [
    "Be social, find friends and inspiration",
    "Meet awesom people",
    "Hangout with friends and attend events"
  ];
  String text = 'A varification code will be sent to your phone';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            PageView(
              children: [
                Container(
                  height: size.height,
                  width: size.width,
                  child: Stack(
                    children: [
                      Positioned(
                        top: size.height * 0.2189,
                        left: size.width * 0.4214413,
                        child: SizedBox(
                          height: size.height * 0.19907822,
                          width: size.width * 0.395976,
                          child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/Boy1.png")),
                        ),
                      ),
                      Positioned(
                        top: size.height * 0.21764179,
                        left: size.width * 0.17825312,
                        child: SizedBox(
                          height: size.height * 0.04608885,
                          width: size.width * 0.09167303,
                          child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/Boy1.png")),
                        ),
                      ),
                      Positioned(
                        top: size.height * 0.49417488,
                        left: size.width * 0.25464731,
                        child: SizedBox(
                          height: size.height * 0.09729868,
                          width: size.width * 0.19353196,
                          child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/Boy1.png")),
                        ),
                      ),
                      Positioned(
                        top: size.height * 0.30213801,
                        left: -size.width * 0.05092946,
                        child: SizedBox(
                          height: size.height * 0.16131097,
                          width: size.width * 0.29793736,
                          child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/YelGirl.png")),
                        ),
                      ),
                      Positioned(
                        top: size.height * 0.39559595,
                        left: size.width * 0.85561497,
                        child: SizedBox(
                          height: size.height * 0.09391883,
                          width: size.width * 0.20117138,
                          child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/YelGirl.png")),
                        ),
                      ),
                      Positioned(
                        top: size.height * 0.530021764,
                        left: -size.width * 0.0331041508,
                        child: SizedBox(
                          height: size.height * 0.104980156,
                          width: size.width * 0.208810797,
                          child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/BlueGirl.png")),
                        ),
                      ),
                      Positioned(
                        top: size.height * 0.495074837,
                        left: size.width * 0.570409982,
                        child: SizedBox(
                          height: size.height * 0.128024581,
                          width: size.width * 0.254647313,
                          child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/BlueGirl.png")),
                        ),
                      ),
                      Positioned(
                          top: size.height * 0.750224043,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.0891265597),
                            child: Container(
                              width: size.width * 0.791953145,
                              child: Text(
                                boardingText[0],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: size.width * 0.0611153552,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )),
                      Positioned(
                          top: size.height * 0.844962233,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.08912656),
                            child: Text(
                              text,
                              style: TextStyle(
                                  fontSize: size.width * 0.038197097,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600]),
                            ),
                          ))
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width,
                  child: Stack(
                    children: [
                      Positioned(
                          top: size.height * 0.322621943,
                          left: -size.width * 0.25974026,
                          child: SizedBox(
                            height: size.height * 0.199078223,
                            width: size.width * 0.395976572,
                            child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/Boy1.png")),
                          )),
                      Positioned(
                          top: size.height * 0.286775076,
                          left: size.width * 0.198624905,
                          child: SizedBox(
                            height: size.height * 0.27781334,
                            width: size.width * 0.55258467,
                            child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/BlueGirl.png")),
                          )),
                      Positioned(
                          top: size.height * 0.322621943,
                          left: size.width * 0.814871403,
                          child: SizedBox(
                            height: size.height * 0.199078223,
                            width: size.width * 0.395976572,
                            child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/YelGirl.png")),
                          )),
                      Positioned(
                          top: size.height * 0.7937524,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.0891265597),
                            child: Container(
                              width: size.width * 0.791953145,
                              child: Text(
                                boardingText[1],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: size.width * 0.0611153552,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )),
                      Positioned(
                          top: size.height * 0.844962233,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.0891265597),
                            child: Text(
                              text,
                              style: TextStyle(
                                  fontSize: size.width * 0.038197097,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600]),
                            ),
                          ))
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width,
                  child: Stack(
                    children: [
                      Positioned(
                          top: size.height * 0.750224043,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.0891265597),
                            child: Container(
                              width: size.width * 0.791953145,
                              child: Text(
                                boardingText[2],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: size.width * 0.0611153552,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )),
                      Positioned(
                          top: size.height * 0.844962233,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.0891265597),
                            child: Text(
                              text,
                              style: TextStyle(
                                  fontSize: size.width * 0.038197097,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600]),
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
                bottom: size.height * 0.01920369,
                right: size.width * 0.07130125,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        color: const Color(0xff0659FD),
                        fontSize: size.width * 0.038197097,
                        fontWeight: FontWeight.bold),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
