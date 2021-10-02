import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class NearYouSetting extends StatefulWidget {
  const NearYouSetting({Key? key}) : super(key: key);

  @override
  _NearYouSettingState createState() => _NearYouSettingState();
}

class _NearYouSettingState extends State<NearYouSetting> {
  bool showOnMap = false;
  bool orderAlphabatic = false;
  bool lastAccess = false;
  int _value = 6;
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 31.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Show me on map",
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
              Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Range",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
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
                  Row(
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
                  )
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order alphabtically",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Switch(
                    value: orderAlphabatic,
                    onChanged: (value) {
                      setState(() {
                        orderAlphabatic = value;
                      });
                    },
                    activeTrackColor: Colors.indigoAccent,
                    activeColor: Colors.indigo,
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order by last access",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Switch(
                    value: lastAccess,
                    onChanged: (value) {
                      setState(() {
                        lastAccess = value;
                      });
                    },
                    activeTrackColor: Colors.indigoAccent,
                    activeColor: Colors.indigo,
                  ),
                ],
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
