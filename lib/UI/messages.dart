// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:social/Data/GridViewData.dart';
import 'package:social/Data/messgedData.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  bool directMessage = true;
  bool groupChat = false;
  bool archived = false;
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
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: Container(
                    height: 50,
                    width: size.height,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: InkWell(
                              onTap: () {},
                              child:
                                  Image.asset("assets/icons/WriteMessage.png")),
                        ),
                        Column(
                          children: [
                            Text(
                              "lana_smith",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff828796)),
                            ),
                            Text(
                              "messages",
                              style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2E313C)),
                            ),
                          ],
                        ),
                        Image.asset(
                          "assets/icons/WriteMessage.png",
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01920369,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: size.width * 0.04329004),
                  child: Container(
                    height: size.height * 0.05396787,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              directMessage = true;
                              groupChat = false;
                              archived = false;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "Direct Messages",
                                style: TextStyle(
                                    color: directMessage
                                        ? const Color(0xff7737FF)
                                        : Colors.black,
                                    fontWeight: directMessage
                                        ? FontWeight.bold
                                        : FontWeight.normal),
                              ),
                              Text(
                                "____________________",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.03365062389,
                                    color: directMessage
                                        ? const Color(0xff7737FF)
                                        : Colors.white),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              directMessage = false;
                              groupChat = true;
                              archived = false;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "Group Chat",
                                style: TextStyle(
                                    fontWeight: groupChat
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                    color: groupChat
                                        ? const Color(0xff7737FF)
                                        : Colors.black),
                              ),
                              Text(
                                "___________________",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.03365062389,
                                    color: groupChat
                                        ? const Color(0xff7737FF)
                                        : Colors.white),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              directMessage = false;
                              groupChat = false;
                              archived = true;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                "Archived",
                                style: TextStyle(
                                    fontWeight: archived
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                    color: archived
                                        ? const Color(0xff7737FF)
                                        : Colors.black),
                              ),
                              Text(
                                "___________________",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.03365062389,
                                    color: archived
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
                directMessage
                    ? Container(
                        height: size.height * 0.80975547,
                        width: size.width,
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height * 0.01280246,
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
                                      prefixIcon: Icon(
                                        Icons.search,
                                        size: size.height * 0.03840737,
                                      ),
                                      // Image.asset("assets/icons/Search.png"),
                                      hintText: "search"),
                                ),
                              ),
                            ),
                            Container(
                              height: size.height * 0.66572782,
                              child: ListView.builder(
                                  itemCount: MessageData.messages.length,
                                  itemBuilder: (context, index) {
                                    return message(
                                        context,
                                        sharePersons[index],
                                        sharePersonsNames[index],
                                        MessageData.messages[index],
                                        MessageData.pending[index],
                                        MessageData.isActive[index],
                                        MessageData.timeAgo[index]);
                                  }),
                            ),
                          ],
                        ),
                      )
                    : groupChat
                        ? Container(
                            child: Center(
                              child: Text("Group Chat"),
                            ),
                          )
                        : Container(
                            child: Center(
                              child: Text("archived"),
                            ),
                          )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget message(BuildContext context, image, name, message, int pendingMessges,
    active, time) {
  return Padding(
    padding: EdgeInsets.only(bottom: 10.0),
    child: Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: ListTile(
            leading: Stack(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(image),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: active
                        ? Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.green),
                          )
                        : Container(
                            width: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                            child: Center(child: Text("1h")),
                          ))
              ],
            ),
            title: Text(name,
                style: TextStyle(
                    fontWeight: pendingMessges > 0
                        ? FontWeight.bold
                        : FontWeight.normal)),
            subtitle: Text(message,
                style: TextStyle(
                    fontWeight: pendingMessges > 0
                        ? FontWeight.bold
                        : FontWeight.normal)),
            trailing: pendingMessges == 0
                ? Container(
                    width: 12,
                    height: 10,
                  )
                : Container(
                    child: Column(
                      children: [
                        Text(time,
                            style: TextStyle(
                                fontWeight: pendingMessges > 0
                                    ? FontWeight.bold
                                    : FontWeight.normal)),
                        CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.purple,
                            child: Text(
                              "$pendingMessges",
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ),
                  ),
          ),
        ),
      ],
    ),
  );
}
