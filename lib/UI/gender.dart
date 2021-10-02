import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  bool maleState = true;
  bool femaleState = false;
  bool otherState = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              child: Image.asset(
                "assets/images/BackgroundFull.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: size.height * 0.5859709,
              child: Container(
                  height: size.height * 0.41514275,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(size.width * 0.06366183),
                          topRight: Radius.circular(size.width * 0.06366183)),
                      color: Colors.white),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: size.height * 0.0286541,
                        ),
                        Center(
                            child: Container(
                                height: 4,
                                child:
                                    Image.asset("assets/icons/Indicator.png"))),
                        SizedBox(
                          height: size.height * 0.01920369,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.05602241),
                          child: Text("Choose your gender",
                              style: TextStyle(
                                fontSize: size.width * 0.05602241,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              maleState = true;
                              femaleState = false;
                              otherState = false;
                            });
                          },
                          child: buildRow(context, size, 'Male',
                              "assets/icons/GenderIcon.png", maleState),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              maleState = false;
                              femaleState = true;
                              otherState = false;
                            });
                          },
                          child: buildRow(context, size, 'Female',
                              "assets/icons/GenderIcon.png", femaleState),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              maleState = false;
                              femaleState = false;
                              otherState = true;
                            });
                          },
                          child:
                              buildRow(context, size, 'Other', "", otherState),
                        ),
                        SizedBox(
                          height: size.height * 0.01280245807,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.07130125),
                          child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: size.height * 0.07425426,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff79d0f1),
                                ),
                                child: Center(
                                  child: Text(
                                    "Next",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildRow(BuildContext context, Size size, title, String icon, state) {
  return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.07130125,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.07435426,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey.shade200)),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.01920369,
              horizontal: size.width * 0.03819709702),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: icon != ""
                      ? Image.asset(
                          icon,
                          cacheHeight: 18,
                        )
                      : CircleAvatar(
                          radius: size.width * 0.03055767762,
                          backgroundColor: Colors.white,
                        )),
              SizedBox(
                width: size.width * 0.03819709702,
              ),
              Expanded(
                flex: 6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: size.width * 0.04074357,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff303342)),
                    ),
                    state
                        ? CircleAvatar(
                            radius: 11,
                            backgroundColor: const Color(0xffFF8E5D),
                            child: const Icon(
                              Icons.check,
                              size: 20,
                              color: Colors.white,
                            ))
                        : Container()
                  ],
                ),
              )
            ],
          ),
        ),
      ));
}
