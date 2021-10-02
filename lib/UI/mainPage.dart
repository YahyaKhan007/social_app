import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:social/Data/GridViewData.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> stories = [
    "assets/images/Grid2.png",
    "assets/images/Grid1.png",
    "assets/images/Grid4.png",
    "assets/images/Grid5.png",
    "assets/images/Grid3.png",
  ];
  List<String> storyNames = [
    "our Story",
    "Lana smith",
    "Joe Evana",
    "Zack paul",
    "karena",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              height: size.height,
              width: size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.02560492,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.04074357),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "assets/icons/Camera.png",
                            color: Colors.black,
                            height: 25,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.30557678,
                        ),
                        Text(
                          "POITERS",
                          style: TextStyle(
                              fontSize: size.width * 0.03055767762,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: size.width * 0.02546473135,
                        ),
                        Image.asset(
                          "assets/icons/LocationIcon.png",
                          height: 13,
                        ),
                        SizedBox(
                          width: size.width * 0.11459129,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "assets/icons/AddPost.png",
                            color: Colors.black,
                            height: 22,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.03055767762,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "assets/icons/Heart.png",
                            color: Colors.black,
                            height: 20,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.03055767762,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "assets/icons/Mail.png",
                            color: Colors.black,
                            height: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.012800245807,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.02037179),
                    child: Container(
                        height: size.height * 0.1354065,
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: stories.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.02037179),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: size.height * 0.10498016,
                                  width: size.width * 0.15788133,
                                  child: Column(
                                    children: [
                                      index == 0
                                          ? Stack(
                                              children: [
                                                CircleAvatar(
                                                  radius: size.width *
                                                      0.07619419404,
                                                  backgroundImage: AssetImage(
                                                      stories[index]),
                                                ),
                                                Positioned(
                                                    right: 0,
                                                    bottom: 0,
                                                    child: Image.asset(
                                                        "assets/icons/add.png"))
                                              ],
                                            )
                                          : CircleAvatar(
                                              radius:
                                                  size.width * 0.07619419404,
                                              backgroundImage:
                                                  AssetImage(stories[index]),
                                            ),
                                      SizedBox(
                                        height: size.height * 0.00640123,
                                      ),
                                      Text(
                                        storyNames[index],
                                        style: TextStyle(
                                            fontSize:
                                                size.width * 0.03055767762),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        )),
                  ),
                  // SizedBox(
                  //   height: size.height * 0.00640123,
                  // ),
                  const Divider(),
                  Container(
                    height: size.height * 0.72397593,
                    child: Column(
                      children: [
                        ListTile(
                          leading: const CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/Grid2.png"),
                          ),
                          title: const Text(
                            "Lanasmith",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: const Text("Poitiers, France"),
                          trailing: Image.asset(
                            "assets/icons/ThreeDots.png",
                            cacheHeight: 30,
                          ),
                        ),
                        Container(
                            width: size.width,
                            height: size.height * 0.48009218,
                            child: Image.asset("assets/images/Post1.png",
                                fit: BoxFit.cover)),
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
                                  height: 20,
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
                                  height: 22,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                onTap: () {
                                  showDiologue(context);
                                },
                                child: Image.asset(
                                  "assets/icons/SendMessage.png",
                                  height: 22,
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
                          padding:
                              EdgeInsets.only(left: 16, top: 10, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    style: TextStyle(color: Colors.black),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'yanna_summer',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text: ' and ',
                                          style:
                                              TextStyle(color: Colors.black)),
                                      TextSpan(
                                          text: '12k more',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold))
                                    ]),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}

showDiologue(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4070087,
                  left: MediaQuery.of(context).size.width * 0.04074357,
                  right: MediaQuery.of(context).size.width * 0.04074357),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.59787479,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    Center(child: Image.asset("assets/icons/Indicator.png")),
                    SizedBox(
                      height:
                          MediaQuery.of(context).size.height * 0.00380245807,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              MediaQuery.of(context).size.width * 0.03074357),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Share",
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    0.05602241,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset("assets/icons/share.png")
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01920369,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06401229,
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  MediaQuery.of(context).size.height *
                                      0.6401229),
                            ),
                            prefixIcon: Image.asset(
                              "assets/icons/Search.png",
                              height: MediaQuery.of(context).size.height *
                                  0.0286541,
                            ),
                            hintText: "search"),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01929369,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              MediaQuery.of(context).size.width * 0.07174357),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/icons/group.png",
                            height:
                                MediaQuery.of(context).size.height * 0.05602241,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width *
                                0.02546473135,
                          ),
                          Text(
                            "create group",
                            style: TextStyle(
                                color: Color(0xff7737FF),
                                fontSize: MediaQuery.of(context).size.width *
                                    0.04583652,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01929369,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              MediaQuery.of(context).size.width * 0.04074357),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.20483933,
                        child: GridView.builder(
                          itemCount: sharePersons.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  mainAxisSpacing:
                                      MediaQuery.of(context).size.width *
                                          0.0181971,
                                  crossAxisSpacing:
                                      MediaQuery.of(context).size.height *
                                          0.01929369),
                          itemBuilder: (BuildContext context, index) {
                            return Column(
                              children: [
                                CircleAvatar(
                                  radius: MediaQuery.of(context).size.height *
                                      0.032000615,
                                  backgroundImage:
                                      AssetImage(sharePersons[index]),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.00640123,
                                ),
                                Text(
                                  sharePersonsNames[index],
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.030557677762),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01920369,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06401229,
                      width: MediaQuery.of(context).size.width * 0.30557678,
                      decoration: BoxDecoration(
                          color: Color(0xff7737FF),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Text(
                          "Send",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
