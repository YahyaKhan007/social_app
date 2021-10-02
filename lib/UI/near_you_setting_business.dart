import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NearYouSettingBusiness extends StatefulWidget {
  const NearYouSettingBusiness({Key? key}) : super(key: key);

  @override
  _NearYouSettingBusinessState createState() => _NearYouSettingBusinessState();
}

class _NearYouSettingBusinessState extends State<NearYouSettingBusiness> {
  int _value = 6;
  bool showOnMap = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 8,
            ),
            child: Text(
              "Cancel",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Setting",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text("Done",
                  style: TextStyle(
                    color: Color(0xffBBBBBB),
                    fontSize: 15,
                  )))
        ],
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 31.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Filters",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: 'Robobto'),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.forward,
                        color: Colors.grey.shade700,
                      ))
                ],
              ),
            ),
            Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 31.0),
                  child: Text(
                    "A moins de",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Slider(
                    value: _value.toDouble(),
                    min: 1.0,
                    max: 100.0,
                    divisions: 100,
                    activeColor: Colors.indigo,
                    inactiveColor: Colors.white,
                    // label: 'Set volume value',
                    onChanged: (double newValue) {
                      setState(() {
                        _value = newValue.round();
                      });
                    },
                    semanticFormatterCallback: (double newValue) {
                      return '${newValue.round()} dollars';
                    }),
                Padding(
                  padding: const EdgeInsets.only(left: 31.0, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "0 km",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                      ),
                      Text(
                        "10 km",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                      ),
                      Text(
                        "100 km",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 31.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Paiement sur place",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Switch(
                    value: showOnMap,
                    onChanged: (value) {
                      setState(() {
                        showOnMap = value;
                      });
                    },
                    activeTrackColor: Colors.indigoAccent,
                    activeColor: Colors.indigo,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
