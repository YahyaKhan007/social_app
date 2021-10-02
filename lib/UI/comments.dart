import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Comments extends StatefulWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  _CommentsState createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: size.height * 0.97,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: Container(
                    height: 50,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: InkWell(
                            onTap: () {},
                            child: CircleAvatar(
                              radius: 13,
                              backgroundColor: Colors.black87,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 11,
                                child: Icon(Icons.arrow_back,
                                    size: 20, color: Colors.black87),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "lana_smith",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff828796)),
                            ),
                            Text(
                              "comments",
                              style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2E313C)),
                            ),
                          ],
                        ),
                        Image.asset(
                          "assets/icons/ThreeDots.png",
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: size.height * 0.65,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/share2.png"),
                              ),
                              Container(
                                width: size.width * 0.77,
                                child: Column(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                          text: 'lana_smith',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text:
                                                  ' Let me know what you think-',
                                              style: TextStyle(
                                                  color: Colors.grey.shade600,
                                                  fontSize: 12),
                                            ),
                                            TextSpan(
                                                text: "#lolipop #baby #awesom ",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.purple)),
                                            TextSpan(
                                                text: " ? Should i make more ?",
                                                style: TextStyle(
                                                    color: Colors.grey.shade600,
                                                    fontSize: 12)),
                                          ]),
                                    ),
                                    SizedBox(
                                      height: 8,
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
                                              color: Colors.grey.shade600,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Divider(),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        _Row(
                            context,
                            "assets/images/share1.png",
                            "diana_slown ",
                            "This week we discussed all things teen skinCare Our Girls can move",
                            "3h"),
                        SizedBox(
                          height: 15,
                        ),
                        _Row(
                            context,
                            "assets/images/share3.png",
                            "diana_slown ",
                            "This week we discussed all things teen skinCare Our Girls can move",
                            "2h"),
                        SizedBox(
                          height: 15,
                        ),
                        _Row(
                            context,
                            "assets/images/share4.png",
                            "diana_slown ",
                            "This week we discussed all things teen skinCare Our Girls can move",
                            "1h"),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 50.0),
                          child: reply(context, "assets/images/share2.png",
                              "lana_smith ", "Mee too", "1h"),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Container(
                    height: 120,
                    child: Column(
                      children: [
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 27,
                              backgroundImage:
                                  AssetImage("assets/images/share2.png"),
                            ),
                            Container(
                              width: size.width * 0.76,
                              height: 53,
                              child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Leave a comment...",
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50)))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _Row(BuildContext context, image, name, comments, time) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(image),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                    text: name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: comments,
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 12))
                    ]),
              ),
              SizedBox(
                height: 8,
              ),
              time == '1h'
                  ? Row(
                      children: [
                        Icon(CupertinoIcons.heart, size: 18, color: Colors.red),
                        Text(
                          " 3",
                          style: TextStyle(color: Colors.red),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(CupertinoIcons.chat_bubble,
                            size: 18, color: Colors.black),
                        Text(
                          " 1",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        Icon(CupertinoIcons.heart,
                            size: 18, color: Colors.grey.shade600),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(CupertinoIcons.chat_bubble,
                            size: 18, color: Colors.grey.shade600)
                      ],
                    ),
            ],
          ),
        ),
        Text(
          time,
          style: TextStyle(fontSize: 12),
        )
      ],
    ),
  );
}

Widget reply(BuildContext context, image, name, reply, time) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(image),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.61,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.61,
                child: RichText(
                  text: TextSpan(
                      text: name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: reply,
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 12))
                      ]),
                ),
              ),
              Row(
                children: [
                  Icon(CupertinoIcons.heart,
                      size: 18, color: Colors.grey.shade400),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(CupertinoIcons.chat_bubble,
                      size: 18, color: Colors.grey.shade400)
                ],
              ),
            ],
          ),
        ),
        Text(
          time,
          style: TextStyle(fontSize: 12),
        )
      ],
    ),
  );
}
