import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:social/Data/ListViewData.dart';

class ProfilePro extends StatefulWidget {
  const ProfilePro({Key? key}) : super(key: key);

  @override
  _ProfileProState createState() => _ProfileProState();
}

class _ProfileProState extends State<ProfilePro> {
  bool gallery = true;
  bool save = false;

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: size.height * 0.02560492),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.03055767762),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: size.width * 0.0381971,
                          child: CircleAvatar(
                            radius: size.width * 0.03310415,
                            backgroundColor: Colors.white,
                            child: const Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            showDiologue(context, size);
                          },
                          child: Image.asset("assets/icons/menu.png"))
                    ],
                  ),
                ),
                Container(
                    height: size.height * 0.1536295,
                    width: size.width,
                    child: Stack(
                      children: [
                        Positioned(
                          left: size.width * 0.35650624,
                          child: CircleAvatar(
                            backgroundColor: Colors.amber,
                            radius: size.height * 0.07425426,
                            child: CircleAvatar(
                              radius: size.height * 0.07169377,
                              backgroundImage:
                                  const AssetImage("assets/images/share1.png"),
                            ),
                          ),
                        ),
                        Positioned(
                          top: size.height * 0.03712713,
                          left: size.width * 0.04074357,
                          child: Container(
                              height: size.height * 0.0784518,
                              width: size.width * 0.28520499,
                              child: Column(
                                children: [
                                  Text(
                                    "321k",
                                    style: TextStyle(
                                        fontSize: size.width * 0.06875477,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Followers",
                                    style: TextStyle(
                                        fontSize: size.width * 0.03055767762,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff828796)),
                                  )
                                ],
                              )),
                        ),
                        Positioned(
                          top: size.height * 0.03712713,
                          left: size.width * 0.67990833,
                          child: Container(
                              height: size.height * 0.0784518,
                              width: size.width * 0.28520499,
                              child: Column(
                                children: [
                                  Text(
                                    "125",
                                    style: TextStyle(
                                        fontSize: size.width * 0.06875477,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Following",
                                    style: TextStyle(
                                        fontSize: size.width * 0.03055767762,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff828796)),
                                  )
                                ],
                              )),
                        )
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                            color: const Color(0xff7737FF),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text("Follow",
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "Amzonico London",
                              style: TextStyle(
                                  fontSize: size.width * 0.03983652,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: size.height * 0.00680245807,
                            ),
                            Text(
                              "Resturant",
                              style: TextStyle(
                                fontSize: size.width * 0.03055767762,
// fontFamily:
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.00680245807,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  CupertinoIcons.location,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: size.width * 0.0309296269,
                                ),
                                const Text(
                                  "Poitiers, France",
                                  style: TextStyle(
                                    fontSize: 12,
// fontFamily:
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Container(
                            height: 40,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.grey)),
                            child: Center(child: Text("Message"))),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03280245807,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * 0.0448086,
                        width: size.width * 0.22918258,
                        decoration: BoxDecoration(
                            // color: Color(0xff7737FF),
                            color: Colors.indigo[300],
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "Order Food",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * 0.0448086,
                        width: size.width * 0.22918258,
                        decoration: BoxDecoration(
                            // color: Color(0xff7737FF),
                            color: Colors.indigo[300],
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "Direction",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * 0.0448086,
                        width: size.width * 0.22918258,
                        decoration: BoxDecoration(
                            // color: Color(0xff7737FF),
                            color: Colors.indigo[300],
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Text(
                            "Contact",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.01920369,
                    ),
                    Container(
                      height: size.height * 0.1019,
                      child: Padding(
                        padding: EdgeInsets.only(left: size.width * 0.04074357),
                        child: Container(
                          height: size.height * 0.10369991,
                          width: double.infinity,
                          child: ListView.builder(
                              itemCount: StoryPix.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.02546473135),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        index == 0
                                            ? CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius:
                                                    size.height * 0.03584688,
                                                backgroundImage:
                                                    AssetImage(StoryPix[index]),
                                              )
                                            : CircleAvatar(
                                                radius:
                                                    size.height * 0.03584688,
                                                backgroundImage:
                                                    AssetImage(StoryPix[index]),
                                              ),
                                        SizedBox(
                                          height: size.height * 0.00640123,
                                        ),
                                        Text(StoryNames[index],
                                            style: TextStyle(
                                                fontSize:
                                                    size.width * 0.03055767762))
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01280245807,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.03819709702),
                      child: Row(
                        children: [
                          Container(
                              height: size.height * 0.06401229,
                              width: size.width * 0.45,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade300)),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    save = false;
                                    gallery = true;
                                  });
                                },
                                child: Image.asset(
                                  "assets/icons/Gallery.png",
                                  color: gallery
                                      ? Colors.indigo
                                      : Colors.grey[600],
                                ),
                              )),
                          Container(
                              height: size.height * 0.06401229,
                              width: size.width * 0.45,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade300)),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    save = true;
                                    gallery = false;
                                  });
                                },
                                child: Image.asset("assets/icons/Save.png",
                                    color: save
                                        ? Colors.indigo
                                        : Colors.grey[600]),
                              )),
                        ],
                      ),
                    ),
                    gallery
                        ? Padding(
                            padding: EdgeInsets.only(
                                left: size.width * 0.02546473135,
                                right: size.width * 0.02546473135,
                                top: size.height * 0.01280245807),
                            child: Container(
                              height: size.height * 0.30885162,
                              child: GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 5,
                                          mainAxisSpacing: 5),
                                  itemBuilder: (BuildContext context, index) {
                                    return Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black12,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    );
                                  }),
                            ),
                          )
                        : Container(
                            height: size.height * 0.26885162,
                            color: Colors.black,
                          ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

showDiologue(BuildContext context, size) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.34566637,
                  left: MediaQuery.of(context).size.width * 0.04074357,
                  right: MediaQuery.of(context).size.width * 0.04074357),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.58891307,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03200615,
                    ),
                    Center(child: Image.asset("assets/icons/Indicator.png")),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01920369,
                    ),
                    buildRow(
                        context, size, "Archive", "assets/icons/Archive.png"),
                    buildRow(context, size, "Your Activity",
                        "assets/icons/Activity.png"),
                    buildRow(
                        context, size, "Nametag", "assets/icons/NameTag.png"),
                    buildRow(
                      context,
                      size,
                      "Saved",
                      "assets/icons/Save.png",
                    ),
                    buildRow(context, size, "Close Friends",
                        "assets/icons/CloseFriend.png"),
                    buildRow(context, size, "Discover People",
                        "assets/icons/DiscoverPeople.png"),
                    buildRow(context, size, "Open Facebook",
                        "assets/icons/Facebook.png"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02560492,
                    ),
                    buildRow(
                        context, size, "Settings", "assets/icons/Settings.png"),
                  ],
                ),
              ),
            ),
          ),
        );
      });
}

Widget buildRow(BuildContext context, size, title, icon) {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: MediaQuery.of(context).size.height * 0.01466295),
    child: InkWell(
      onTap: () {},
      child: Row(
        children: [
          Image.asset(
            icon,
            height: MediaQuery.of(context).size.height * 0.03132467,
            color: Colors.black,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05092946269,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.03819709702,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    ),
  );
}
