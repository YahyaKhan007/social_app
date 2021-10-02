import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
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
        centerTitle: true,
        title: Align(
          alignment: Alignment.bottomRight,
          child: Row(
            children: [
              Text(
                "POITERS",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset("assets/icons/LocationIcon.png")
            ],
          ),
        ),
        actions: [Image.asset("assets/icons/WriteMessage.png")],
        elevation: 0,
      ),
      body: Container(),
    );
  }
}
