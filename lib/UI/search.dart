import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              SizedBox(height: size.height * 0.03200615),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: size.width * 0.04074357),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: size.height * 0.06401229,
                      width: size.width * 0.8,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  size.height * 0.6401229),
                            ),
                            prefixIcon: Image.asset("assets/icons/Search.png"),
                            hintText: "search"),
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          showDiologue(context, size);
                        },
                        child: Image.asset("assets/icons/menu.png")),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.01920369,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: size.width * 0.04074357),
                child: Container(
                  height: size.height * 0.78,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                      ),
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(10)),
                        );
                      }),
                ),
              )
            ],
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
                  top: size.height * 0.12802458,
                  left: size.width * 0.04074357,
                  right: size.width * 0.04074357),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.8,
                height: size.height * 0.64652413,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(size.height * 0.03200615)),
                // child: Column(
                //   children: [],
                // ),
              ),
            ),
          ),
        );
      });
}
