import 'package:flutter/material.dart';

class Likes extends StatefulWidget {
  const Likes({Key? key}) : super(key: key);

  @override
  _LikesState createState() => _LikesState();
}

class _LikesState extends State<Likes> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 31),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Following",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                    Text(
                      "You",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 31),
                child: Text(
                  "New",
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ),
              comment(
                context,
                "assets/images/share1.png",
                "my Name is khan",
                30,
              ),
              // comments(
              //   context,
              //   "assets/images/share1.png",
              //   "my Name is khan",
              //   30,
              // ),
              follow(context, "assets/images/share1.png", "my Name is khan", 30,
                  true),
              Padding(
                padding: const EdgeInsets.only(left: 31),
                child: Text(
                  "Today",
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ),
              follow(context, "assets/images/share7.png", "my Name is khan", 30,
                  false),
            ],
          ),
        ),
      ),
    );
  }

  Widget comment(BuildContext context, personPix, text, time) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage(personPix),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            child: Text(text),
          ),
          Spacer(),
          Container(
            height: 60,
            width: 55,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(25)),
            // child: Image.asset(postImage),
          )
        ],
      ),
    );
  }

  Widget follow(
      BuildContext context, personPix, String text, var time, follow) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage(personPix),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            child: Text("$text"),
          ),
          Spacer(),
          follow
              ? Container(
                  height: 40,
                  width: 100,
                  child: Center(
                    child: Text(
                      "Message",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(25)),
                  // child: Image.asset(postImage),
                )
              : Container(
                  height: 40,
                  width: 100,
                  child: Center(
                    child: Text(
                      "Follow",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.circular(25)),
                  // child: Image.asset(postImage),
                )
        ],
      ),
    );
  }
}
