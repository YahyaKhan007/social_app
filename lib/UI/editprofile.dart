import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
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
                            child: CircleAvatar(
                              radius: 13,
                              backgroundColor: Colors.black87,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 11,
                                child: Icon(Icons.arrow_back,
                                    size: 20, color: Colors.black87),
                              ),
                            ),
                          ),
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
                              "edit profile",
                              style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2E313C)),
                            ),
                          ],
                        ),
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  color: Color(0xff7737ff), width: 2)),
                          child: Icon(
                            Icons.check,
                            size: 18,
                            color: Colors.purple,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage("assets/images/share1.png"),
                        ),
                        Positioned(
                            right: 0,
                            child: InkWell(
                                onTap: () {},
                                child:
                                    Image.asset("assets/icons/writePhoto.png")))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                buildRow(context, "Name", "Yana Kot"),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: size.width * 0.7,
                    height: 0.5,
                    color: Colors.grey[300],
                  ),
                ),
                buildRow(context, "UserName", "yana_kot"),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: size.width * 0.7,
                    height: 0.5,
                    color: Colors.grey[300],
                  ),
                ),
                buildRow(context, "Website", "desigm4me.com"),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: size.width * 0.7,
                    height: 0.5,
                    color: Colors.grey[300],
                  ),
                ),
                buildRow(context, "Bio",
                    "I am UI/UX Designer,Cofounder Design4ME,available, work overtime"),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: size.width * 0.7,
                    height: 0.5,
                    color: Colors.grey[300],
                  ),
                ),
                buildRow(
                    context, "Interest", "Football, BasketBall, Handball ..."),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: size.width * 0.7,
                    height: 0.5,
                    color: Colors.grey[300],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Private Information",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                buildRow(context, "Email", "yanakot@gmail.com"),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: size.width * 0.7,
                    height: 0.5,
                    color: Colors.grey[300],
                  ),
                ),
                buildRow(context, "Phone", "+923121900963"),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: size.width * 0.7,
                    height: 0.5,
                    color: Colors.grey[300],
                  ),
                ),
                buildRow(context, "Gender", "Female"),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: size.width * 0.7,
                    height: 0.5,
                    color: Colors.grey[300],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildRow(BuildContext context, String title, String fieldText) {
  return Padding(
    padding: EdgeInsets.only(left: 16),
    child: title == "Interest"
        ? Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  title,
                  style: TextStyle(fontSize: 14, color: Color(0xff828796)),
                ),
              ),
              Expanded(
                flex: 6,
                child: ListTile(
                  dense: true,
                  subtitle: Text("Football, Basketball, Handball ...",
                      style: TextStyle(fontSize: 14, color: Colors.black)),
                  trailing: Icon(CupertinoIcons.forward),
                ),
              ),
            ],
          )
        : Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  title,
                  style: TextStyle(fontSize: 14, color: Color(0xff828796)),
                ),
              ),
              Expanded(
                flex: 5,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  controller: TextEditingController(text: fieldText),
                  decoration: InputDecoration(
                      hintMaxLines: 3,
                      border: InputBorder.none,
                      hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                ),
              )
            ],
          ),
  );
}
