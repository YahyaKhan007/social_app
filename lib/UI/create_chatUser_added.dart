import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CreateChatUserAdded extends StatefulWidget {
  const CreateChatUserAdded({Key? key}) : super(key: key);

  @override
  _CreateChatUserAddedState createState() => _CreateChatUserAddedState();
}

class _CreateChatUserAddedState extends State<CreateChatUserAdded> {
  List<String> _texts = [
    "Bessie Baldvin",
    "Fanni Trempson",
    "Ophella Harrington",
    "Larry hayes",
    "Gabriel Robinson",
  ];

  late List<bool> check;

  @override
  void initState() {
    super.initState();
    check = List<bool>.filled(_texts.length, false);
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
            "Create group",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text("Done",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600)))
        ],
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: size.width * 0.9,
                  height: 45,
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          prefixIcon: Image.asset("assets/icons/Search.png"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)))),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Container(
                    width: double.infinity,
                    height: 80,
                    child: ListView.builder(
                        itemCount: 2,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.grey[300],
                            ),
                          );
                        }),
                  ),
                ),
                Container(
                  height: 550,
                  child: ListView.builder(
                      itemCount: _texts.length,
                      itemBuilder: (context, index) {
                        return User(context, "", _texts[index], index);
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget User(BuildContext context, image, name, index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          // Container(
          //   height: 18,
          //   width: 18,
          //   decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          // ),

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
          SizedBox(
            width: 20,
          ),
          InkWell(
              onTap: () {},
              child:
                  CircleAvatar(radius: 21, backgroundColor: Colors.grey[300])),
          SizedBox(
            width: 20,
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
