import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  String? title = "recents";
  Gallery() {
    this.title;
  }

  List<String> GridPix = [
    "assets/images/Grid1.png",
    "assets/images/Grid2.png",
    "assets/images/Grid3.png",
    "assets/images/Grid4.png",
    "assets/images/Grid5.png",
    "assets/images/Grid6.png",
    "assets/images/Grid7.png",
    "assets/images/Grid8.png",
    "assets/images/Grid9.png",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(size.height * 0.07681474843),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/icons/Close.png",
                cacheHeight: 28,
              ),
            ),
            title: Center(
              child: Text(
                title!,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width * 0.06875477464,
                    fontWeight: FontWeight.bold),
              ),
            ),
            actions: [
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/icons/ArrowRight.png",
                  cacheHeight: 28,
                ),
              )
            ],
          )),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Container(
                height: size.height * 0.43912431187,
                width: size.width,
                child: Stack(
                  children: [
                    Container(
                      height: size.height * 0.43912431187,
                      width: size.width,
                      child: Image.asset(
                        "assets/images/Boy2.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        top: size.height * 0.368710799247,
                        left: size.width * 0.3157626687,
                        child: Image.asset("assets/icons/Boomerang.png")),
                    Positioned(
                        top: size.height * 0.368710799247,
                        left: size.width * 0.41762159409,
                        child: Image.asset("assets/icons/College.png")),
                    Positioned(
                        top: size.height * 0.368710799247,
                        left: size.width * 0.51948052,
                        child: Image.asset("assets/icons/SelectMultiple.png"))
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Container(
                    height: size.height * 0.390474977,
                    width: size.width,
                    child: GridView.builder(
                        itemCount: GridPix.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 2,
                                crossAxisSpacing: 2),
                        itemBuilder: (BuildContext context, index) {
                          return Image.asset(GridPix[index]);
                        })),
              ),
            )
          ],
        ),
      ),
    );
  }
}
