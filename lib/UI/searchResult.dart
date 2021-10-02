import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
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
                        horizontal: size.width * 0.04329004),
                    child: Container(
                      height: size.height * 0.05396787,
                      width: size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                topSelected = true;
                                tagsSelected = false;
                                accountsSelected = false;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  "Top",
                                  style: TextStyle(
                                      color: topSelected
                                          ? const Color(0xff7737FF)
                                          : Colors.black,
                                      fontWeight: topSelected
                                          ? FontWeight.bold
                                          : FontWeight.normal),
                                ),
                                Text(
                                  "______________",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.width * 0.03365062389,
                                      color: topSelected
                                          ? const Color(0xff7737FF)
                                          : Colors.white),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                topSelected = false;
                                tagsSelected = false;
                                accountsSelected = true;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  "Accounts",
                                  style: TextStyle(
                                      fontWeight: accountsSelected
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                      color: accountsSelected
                                          ? const Color(0xff7737FF)
                                          : Colors.black),
                                ),
                                Text(
                                  "______________",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.width * 0.03365062389,
                                      color: accountsSelected
                                          ? const Color(0xff7737FF)
                                          : Colors.white),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                topSelected = false;
                                tagsSelected = true;
                                accountsSelected = false;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  "Tags",
                                  style: TextStyle(
                                      fontWeight: tagsSelected
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                      color: tagsSelected
                                          ? const Color(0xff7737FF)
                                          : Colors.black),
                                ),
                                Text(
                                  "______________",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.width * 0.03365062389,
                                      color: tagsSelected
                                          ? const Color(0xff7737FF)
                                          : Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  topSelected
                      ? Container(
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
                                            backgroundImage:
                                                AssetImage(Pix[index]),
                                          ),
                                        ),
                                        title: Text(title[index],
                                            style: TextStyle(
                                                fontSize:
                                                    size.width * 0.03565062389,
                                                fontWeight: FontWeight.bold)),
                                        subtitle: Text(subtitle[index],
                                            style: TextStyle(
                                                fontSize:
                                                    size.width * 0.03055767762,
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
                      : accountsSelected
                          ? Container()
                          : Container()
                ],
              ),
            )),
      ),
    );
  }
}
