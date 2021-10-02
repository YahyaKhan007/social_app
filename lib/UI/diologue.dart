import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Dialogue extends StatefulWidget {
  const Dialogue({Key? key}) : super(key: key);

  @override
  _DialogueState createState() => _DialogueState();
}

class _DialogueState extends State<Dialogue> {
  List<String> user1 = [
    'hello this is me Yahya ! who are you ?',
    'hello ?',
    'hello this is me Yahya ! who are you ?',
    'hello',
  ];
  List<String> user2 = [
    'You may not know me but i am the one who stalks you alot',
    'You may',
    'You may not know me but i am the one who stalks you alot',
    'You may ',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: Padding(
          padding: EdgeInsets.only(left: size.width * 0.05092946269),
          child: Row(
            children: [
              InkWell(
                onTap: () {},
                child: CircleAvatar(
                  radius: size.width * 0.03565062389,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: size.width * 0.03055767762,
                    backgroundColor: Colors.white,
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        title: Row(
          children: [
            InkWell(
              onTap: () {},
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/Grid1.png"),
              ),
            ),
            SizedBox(
              width: size.width * 0.05092946269,
            ),
            InkWell(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Max Jacobson",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: size.width * 0.035650622389),
                  ),
                  Text("Jacobs_max",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: size.width * 0.03055767762))
                ],
              ),
            ),
          ],
        ),
        actions: [
          InkWell(
              onTap: () {}, child: Image.asset("assets/icons/WriteMessage.png"))
        ],
      ),
      body: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        child: Container(
          height: size.height * 0.89,
          // width: size.width,
          child: Column(
            children: [
              Container(
                  height: size.height * 0.7788240046,
                  // width: size.width,
                  // color: Colors.grey,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: user1.length,
                      itemBuilder: (context, index) {
                        return index % 2 == 0
                            ? User1(context, user1[index])
                            : User2(context, user2[index]);
                      })),

              // SizedBox(height: 1),
              // Spacer(),
              const Divider(
                thickness: 1,
              ),

              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.03819709702,
                    right: size.width * 0.03819709702,
                    bottom: size.height * 0.01024196646),
                child: Container(
                  height: size.height * 0.0704135194,
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIconConstraints: BoxConstraints(
                            maxWidth: size.width * 0.28011204482),
                        suffixIcon: Row(
                          children: [
                            InkWell(
                                onTap: () {},
                                child:
                                    Image.asset("assets/icons/Microphone.png")),
                            SizedBox(
                              width: size.width * 0.02546473135,
                            ),
                            InkWell(
                                onTap: () {},
                                child: Image.asset("assets/icons/gallery.png")),
                            InkWell(
                              onTap: () {},
                              child: SizedBox(
                                width: size.width * 0.02546473135,
                              ),
                            ),
                            InkWell(
                                onTap: () {},
                                child: Image.asset("assets/icons/send.png")),
                          ],
                        ),
                        hintStyle:
                            TextStyle(fontSize: size.width * 0.03055767762),
                        hintText: "Tap a messgae...",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                size.height * 0.06401229))),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget User1(BuildContext context, message) {
  return Padding(
    padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.07639419404,
        top: MediaQuery.of(context).size.height * 0.01280245807,
        bottom: MediaQuery.of(context).size.height * 0.01280245807),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.circular(
              MediaQuery.of(context).size.height * 0.03200615)),
      child: Padding(
        padding:
            EdgeInsets.all(MediaQuery.of(context).size.height * 0.01280245807),
        child: Text(
          message,
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.02560492),
        ),
      ),
    ),
  );
}

Widget User2(BuildContext context, message) {
  return Padding(
    padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.01273236567,
        top: MediaQuery.of(context).size.height * 0.01280245807,
        bottom: MediaQuery.of(context).size.height * 0.01280245807,
        right: MediaQuery.of(context).size.width * 0.076399419404),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.grey[400], borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding:
            EdgeInsets.all(MediaQuery.of(context).size.height * 0.01280245807),
        child: Text(
          message,
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.05092946269),
        ),
      ),
    ),
  );
}
