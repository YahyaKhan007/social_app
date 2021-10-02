import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool gallery = true;
  bool save = false;

  List<String> pix = [
    "assets/icons/AddStory.png",
    "assets/images/Grid2.png",
    "assets/images/YelGirl.png"
  ];
  List<String> StoryNames = ["New", "Lifestyle", "Friends"];

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
                              backgroundImage: const AssetImage(
                                  "assets/images/BlueGirl.png"),
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
                SizedBox(
                  height: size.height * 0.01280245807,
                ),
                Column(
                  children: [
                    Text(
                      "Julia Shahferova",
                      style: TextStyle(
                          fontSize: size.width * 0.04583652,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.01280245807,
                    ),
                    Text(
                      "UI/UX Designer at @Ecommercex",
                      style: TextStyle(
                        fontSize: size.width * 0.03055767762,
                        // fontFamily:
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01280245807,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(CupertinoIcons.location),
                        SizedBox(
                          width: size.width * 0.0509296269,
                        ),
                        const Text("Poitiers, France")
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.01920369,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Container(
                                height: size.height * 0.07169377,
                                width: size.width * 0.33104151,
                                decoration: BoxDecoration(
                                    color: const Color(0xff7737FF),
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Center(
                                  child: Text("Follow",
                                      style: TextStyle(
                                        color: Colors.white,
                                      )),
                                ))),
                        SizedBox(width: size.height * 0.01920369),
                        InkWell(
                            onTap: () {},
                            child: Container(
                                height: size.height * 0.07169377,
                                width: size.width * 0.33104151,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Center(
                                  child: Text("Message",
                                      style: TextStyle(
                                        color: Colors.black,
                                      )),
                                ))),
                      ],
                    ),
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
                              itemCount: pix.length,
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
                                                    AssetImage(pix[index]),
                                              )
                                            : CircleAvatar(
                                                radius:
                                                    size.height * 0.03584688,
                                                backgroundImage:
                                                    AssetImage(pix[index]),
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
                              height: size.height * 0.26885162,
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
