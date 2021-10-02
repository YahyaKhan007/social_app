import 'package:flutter/material.dart';

class SearchResultsNearYou extends StatefulWidget {
  const SearchResultsNearYou({Key? key}) : super(key: key);

  @override
  _SearchResultsNearYouState createState() => _SearchResultsNearYouState();
}

class _SearchResultsNearYouState extends State<SearchResultsNearYou> {
  List<String> Pix = [
    "assets/images/Grid2.png",
    "assets/images/Grid1.png",
    "assets/images/Grid3.png",
    "assets/images/Grid4.png",
    "assets/images/Grid5.png",
  ];
  List<String> title = [
    "diana_slown",
    "thomasFracilion",
    "jacobsmax",
    "jacobsmax",
    "Joanna Evans"
  ];
  List<String> subtitle = [
    "UI/UX designer",
    "CopyWriter at Apple",
    "influencer",
    'dj at Gonzu club',
    "Photographer"
  ];

  bool topSelected = true;
  bool tagsSelected = false;
  bool accountsSelected = false;
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.01920369,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.03819709702),
                    child: Container(
                      height: size.height * 0.06401229,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  size.height * 0.06401229),
                            ),
                            prefixIcon: Image.asset("assets/icons/Search.png"),
                            hintText: "search"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01920369,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.04074357),
                    child: Text("9 personnes a proximate"),
                  ),
                  Divider(),
                  Container(
                    height: size.height * 0.75534503,
                    child: ListView.builder(
                        itemCount: Pix.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                                right: size.width * 0.03819709702),
                            child: InkWell(
                              onTap: () {},
                              child: ListTile(
                                  leading: InkWell(
                                    onTap: () {},
                                    child: CircleAvatar(
                                      radius: size.width * 0.06366183,
                                      backgroundImage: AssetImage(Pix[index]),
                                    ),
                                  ),
                                  title: Text(title[index],
                                      style: TextStyle(
                                          fontSize: size.width * 0.03565062389,
                                          fontWeight: FontWeight.bold)),
                                  subtitle: Text(subtitle[index],
                                      style: TextStyle(
                                          fontSize: size.width * 0.03055767762,
                                          fontWeight: FontWeight.normal)),
                                  trailing: InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      "assets/icons/close.png",
                                    ),
                                  )),
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
