import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateChatUserAddedFilters extends StatefulWidget {
  const CreateChatUserAddedFilters({Key? key}) : super(key: key);

  @override
  _CreateChatUserAddedFiltersState createState() =>
      _CreateChatUserAddedFiltersState();
}

class _CreateChatUserAddedFiltersState
    extends State<CreateChatUserAddedFilters> {
  List<String> names = [
    "Coiffure",
    "Resturant",
    "Bar",
    "Hotel",
    "Boite de noit",
    "Cinema",
    "Bar a ongle",
    "Cinema",
    "Salon de message",
    "Spa",
    "Pressing",
  ];

  late List<bool> check;

  @override
  void initState() {
    super.initState();
    check = List<bool>.filled(names.length, false);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          CupertinoIcons.arrow_left,
          size: 27,
          color: Colors.black,
        ),
        title: Center(
          child: Text(
            "Fliters",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text("Done",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w600)))
        ],
        elevation: 0,
      ),
      body: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
              child: Column(children: [
            SizedBox(
              height: 15,
            ),
            Container(
              width: size.width * 0.9,
              height: 45,
              child: TextField(
                  decoration: InputDecoration(
                      isDense: true,
                      hintText: "Search",
                      prefixIcon: Image.asset("assets/icons/Search.png"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)))),
            ),
            Container(
              height: 700,
              width: size.width,
              child: ListView.builder(
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return User(context, names[index], index);
                  }),
            )
          ]))),
    );
  }

  Widget User(BuildContext context, name, index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(
                fontSize: 16,
                fontFamily: "Roboto",
                color: this.check[index] ? Color(0xff7737ff) : Colors.black,
                fontWeight: FontWeight.normal),
          ),
          Checkbox(
            value: this.check[index],
            onChanged: (val) {
              setState(
                () {
                  // print(condition);
                  this.check[index] = !this.check[index];
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
