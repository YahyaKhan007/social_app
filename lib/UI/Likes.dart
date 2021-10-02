import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Likes extends StatefulWidget {
  const Likes({Key? key}) : super(key: key);

  @override
  _LikesState createState() => _LikesState();
}

class _LikesState extends State<Likes> {
  bool follow = false;
  bool follow1 = true;
  bool following = true;
  bool you = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            following = true;
                            you = false;
                          });
                        },
                        child: Container(
                          width: size.width * 0.4838299,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Following",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              Container(
                                width: size.width * 0.4838299,
                                height: 3,
                                decoration: BoxDecoration(
                                    color: following
                                        ? Colors.indigo
                                        : Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.4838299,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              following = false;
                              you = true;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "You",
                                style: TextStyle(
                                  color: you
                                      ? Colors.indigo
                                      : Colors.grey.shade700,
                                ),
                              ),
                              Container(
                                width: size.width * 0.4838299,
                                height: 3,
                                decoration: BoxDecoration(
                                    color: you ? Colors.indigo : Colors.white),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(),
                you
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "New",
                              style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 10, top: 15),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 22,
                                  backgroundImage:
                                      AssetImage("assets/images/share1.png"),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: size.width * 0.61115355,
                                      child: RichText(
                                        text: TextSpan(
                                            text: "Julz_free ",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            children: [
                                              TextSpan(
                                                  text:
                                                      "mentioned you in a comment: ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              TextSpan(
                                                  text: "@yana_sic ",
                                                  style: TextStyle(
                                                      color: Colors.indigo)),
                                              TextSpan(
                                                  text: "this looks ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ]),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "34 min",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(15)),
                                  // child: Image.asset(postImage),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 10, top: 15),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 22,
                                  backgroundImage:
                                      AssetImage("assets/images/share2.png"),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 180,
                                  child: Wrap(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                            text: "Krisi shestud",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            children: [
                                              TextSpan(
                                                  text:
                                                      " started following you ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              TextSpan(
                                                  text: "    10 min ",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                follow
                                    ? Container(
                                        height: 40,
                                        width: 100,
                                        child: Center(
                                          child: Text(
                                            "Message",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border:
                                                Border.all(color: Colors.black),
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        // child: Image.asset(postImage),
                                      )
                                    : Container(
                                        height: 40,
                                        width: 100,
                                        child: Center(
                                          child: Text(
                                            "Follow",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.indigoAccent,
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        // child: Image.asset(postImage),
                                      )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 15),
                            child: Text(
                              "Today",
                              style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 10, top: 15),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 22,
                                  backgroundImage:
                                      AssetImage("assets/images/share3.png"),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: size.width * 0.61115355,
                                  child: Wrap(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                            text: "Maria_smith",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            children: [
                                              TextSpan(
                                                  text: " Liked your photo",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              TextSpan(
                                                  text: "  4 min ",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(15)),
                                  // child: Image.asset(postImage),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 10, top: 15),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 22,
                                  backgroundImage:
                                      AssetImage("assets/images/share4.png"),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: size.width * 0.61115355,
                                  child: Wrap(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                            text: "La ish, katy_Loui",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            children: [
                                              TextSpan(
                                                  text:
                                                      " and 123 others liked your photo",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              TextSpan(
                                                  text: "  4 min ",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(15)),
                                  // child: Image.asset(postImage),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 10, top: 15),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 22,
                                  backgroundImage:
                                      AssetImage("assets/images/share5.png"),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 180,
                                  child: Wrap(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                            text: "Krisi shestud",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            children: [
                                              TextSpan(
                                                  text:
                                                      " started following you ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              TextSpan(
                                                  text: "    6 d ",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: 40,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      "Message",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(25)),
                                  // child: Image.asset(postImage),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 10, top: 15),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 22,
                                  backgroundImage:
                                      AssetImage("assets/images/share6.png"),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: size.width * 0.61115355,
                                  child: Wrap(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                            text: "Jack_movition",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            children: [
                                              TextSpan(
                                                  text: " liked your photo",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              TextSpan(
                                                  text: "  59 min ",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(15)),
                                  // child: Image.asset(postImage),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "This Week",
                              style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 10, top: 15),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 22,
                                  backgroundImage:
                                      AssetImage("assets/images/share7.png"),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: size.width * 0.61115355,
                                  child: Wrap(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                            text: "Lea_mish, Katy_loui",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            children: [
                                              TextSpan(
                                                  text:
                                                      " and 123 others liked your photo",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              TextSpan(
                                                  text: "  59 min ",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(15)),
                                  // child: Image.asset(postImage),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 10, top: 15),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 22,
                                  backgroundImage:
                                      AssetImage("assets/images/share5.png"),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 180,
                                  child: Wrap(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                            text: "Krisi shestud",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            children: [
                                              TextSpan(
                                                  text:
                                                      " started following you ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              TextSpan(
                                                  text: "    6 d ",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: 40,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      "Follow",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.indigoAccent,
                                      borderRadius: BorderRadius.circular(25)),
                                  // child: Image.asset(postImage),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 10, top: 15),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 22,
                                  backgroundImage:
                                      AssetImage("assets/images/share8.png"),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 180,
                                  child: Wrap(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                            text: "filn_rusko",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            children: [
                                              TextSpan(
                                                  text:
                                                      " started following you",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              TextSpan(
                                                  text: "  59 min ",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: 40,
                                  width: 100,
                                  child: Center(
                                    child: Text(
                                      "Message",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(25)),
                                  // child: Image.asset(postImage),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    : Container(
                        child: Center(
                          child: Text("Following"),
                        ),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget comment(BuildContext context, personPix, text, time) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 10, top: 15),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage(personPix),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            child: Text(text),
          ),
          Spacer(),
          Container(
            height: 60,
            width: 55,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(25)),
            // child: Image.asset(postImage),
          )
        ],
      ),
    );
  }

  // Widget follow(
  //     BuildContext context, personPix, String text, var time, follow) {
  //   return Padding(
  //     padding: const EdgeInsets.only(left: 20, right: 10, top: 15),
  //     child: Row(
  //       children: [
  //         CircleAvatar(
  //           radius: 22,
  //           backgroundImage: AssetImage(personPix),
  //         ),
  //         SizedBox(
  //           width: 20,
  //         ),
  //         Container(
  //           child: Text("$text"),
  //         ),
  //         Spacer(),
  //         follow
  //             ? Container(
  //                 height: 40,
  //                 width: 100,
  //                 child: Center(
  //                   child: Text(
  //                     "Message",
  //                     style: TextStyle(color: Colors.black, fontSize: 15),
  //                   ),
  //                 ),
  //                 decoration: BoxDecoration(
  //                     color: Colors.white,
  //                     border: Border.all(color: Colors.black),
  //                     borderRadius: BorderRadius.circular(25)),
  //                 // child: Image.asset(postImage),
  //               )
  //             : Container(
  //                 height: 40,
  //                 width: 100,
  //                 child: Center(
  //                   child: Text(
  //                     "Follow",
  //                     style: TextStyle(color: Colors.white, fontSize: 15),
  //                   ),
  //                 ),
  //                 decoration: BoxDecoration(
  //                     color: Colors.indigoAccent,
  //                     borderRadius: BorderRadius.circular(25)),
  //                 // child: Image.asset(postImage),
  //               )
  //       ],
  //     ),
  //   );
  // }
}
