import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class PasswordRecovery extends StatefulWidget {
  const PasswordRecovery({Key? key}) : super(key: key);

  @override
  _PasswordRecoveryState createState() => _PasswordRecoveryState();
}

class _PasswordRecoveryState extends State<PasswordRecovery> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Container(
                height: size.height,
                width: size.width,
                child: Image.asset(
                  "assets/images/BackgroundFull.png",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: size.height * 0.572316,
                child: Container(
                    height: size.height * 0.46344898,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(size.width * 0.06366183),
                            topRight: Radius.circular(size.width * 0.06366183)),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: size.height * 0.02816541,
                        ),
                        Center(
                            child: Image.asset("assets/icons/Indicator.png")),
                        SizedBox(
                          height: size.height * 0.01920369,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.07130125),
                          child: Text("Password Recovery",
                              style: TextStyle(
                                fontSize: size.width * 0.05602241,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                        SizedBox(height: size.height * 0.01920369),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.07130125),
                          child: Text(
                              "Enter your email to recover your password",
                              style: TextStyle(
                                  fontSize: size.width * 0.033565062389,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff8592a1))),
                        ),
                        SizedBox(height: size.height * 0.0448086),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.07130125),
                          child: Text(
                            "EMAIL",
                            style: TextStyle(
                                fontSize: size.width * 0.03055768,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02560492,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.07130125),
                          child: Container(
                            height: size.height * 0.07425426,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  suffixIcon: Image.asset(
                                      "assets/icons/CheckCircle.png")),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02560492,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.07130125),
                          child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: size.height * 0.07425426,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green,
                                ),
                                child: const Center(
                                  child: Text(
                                    "Send Email",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
