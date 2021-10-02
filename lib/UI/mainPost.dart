import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:social/Data/ListViewData.dart';

class MainPost extends StatefulWidget {
  const MainPost({Key? key}) : super(key: key);

  @override
  _MainPostState createState() => _MainPostState();
}

class _MainPostState extends State<MainPost> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: size.height,
            width: size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: Container(
                      height: 50,
                      width: size.height,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: CircleAvatar(
                              radius: 14,
                              backgroundColor: Colors.black87,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 12,
                                child: Icon(Icons.arrow_back,
                                    color: Colors.black87),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 100),
                            child: Column(
                              children: [
                                Text(
                                  "lana_smith",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff828796)),
                                ),
                                Text(
                                  "posts",
                                  style: TextStyle(
                                      fontSize: 27,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff2E313C)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Container(
                    // height: size.height - 170,
                    height: size.height - 90,
                    width: size.width,
                    child: ListView.builder(
                        itemCount: posts.length,
                        // physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container(
                            height: 510,
                            // color: Colors.black26,
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: ListTile(
                                    leading: InkWell(
                                      onTap: () {},
                                      child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage(postProfile[index]),
                                      ),
                                    ),
                                    title: Text(
                                      postNames[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text("Poitiers, France"),
                                    trailing: InkWell(
                                      onTap: () {},
                                      child: Image.asset(
                                        "assets/icons/ThreeDots.png",
                                        cacheHeight: 25,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                    height: 262,
                                    width: size.width,
                                    child: Image.asset(
                                      posts[index],
                                      fit: BoxFit.cover,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16.0, top: 13, right: 20),
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "assets/icons/Heart.png",
                                          color: Colors.black,
                                          cacheHeight: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "assets/icons/Comments.png",
                                          color: Colors.black,
                                          cacheHeight: 22,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "assets/icons/SendMessage.png",
                                          cacheHeight: 22,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Spacer(),
                                      InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                          "assets/icons/Save.png",
                                          cacheHeight: 22,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 16, top: 10, right: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 80,
                                        child: InkWell(
                                          onTap: () {},
                                          child: Stack(
                                            children: [
                                              CircleAvatar(
                                                radius: 13,
                                                backgroundImage: AssetImage(
                                                    "assets/images/YelGirl.png"),
                                              ),
                                              Positioned(
                                                left: 10,
                                                child: CircleAvatar(
                                                  radius: 13,
                                                  backgroundImage: AssetImage(
                                                      "assets/images/BlueGirl.png"),
                                                ),
                                              ),
                                              Positioned(
                                                  left: 20,
                                                  child: CircleAvatar(
                                                    radius: 13,
                                                    backgroundImage: AssetImage(
                                                        "assets/images/Boy1.png"),
                                                  )),
                                              Positioned(
                                                left: 30,
                                                child: CircleAvatar(
                                                  radius: 13,
                                                  backgroundImage: AssetImage(
                                                      "assets/images/BlueGirl.png"),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                            text: 'liked ',
                                            style:
                                                TextStyle(color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'yanna_summer',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              TextSpan(
                                                  text: ' and ',
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                              TextSpan(
                                                  text: '12k more',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ]),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: Container(
                                    height: 89,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            text: 'lana_smith ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                            children: const <TextSpan>[
                                              TextSpan(
                                                  text:
                                                      'Let me know what you think-',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.black)),
                                              TextSpan(
                                                text:
                                                    '  #lolipop #baby #awesom ?',
                                                style: TextStyle(
                                                    color: Color(0xff7737FF),
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              TextSpan(
                                                  text: ' Should I make more?',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.black)),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              onTap: () {},
                                              child: RichText(
                                                  text: TextSpan(
                                                      text:
                                                          "View all comments ",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.black,
                                                      ),
                                                      children: <TextSpan>[
                                                    TextSpan(
                                                        text: "(3)",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xffFF034F)))
                                                  ])),
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.alarm,
                                                    size: 15,
                                                    color: Colors.grey,
                                                  ),
                                                  Text(
                                                    " 3 hours ago",
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
