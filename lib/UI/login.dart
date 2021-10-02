import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                height: size.height * 0.42376136,
                width: size.width,
                child: Image.asset(
                  "assets/images/BackgroundHalf.png",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: size.height * 0.26923441,
                child: Container(
                    height: size.height * 0.7232518,
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
                          height: size.height * 0.0286541,
                        ),
                        Center(
                            child: Image.asset("assets/icons/Indicator.png")),
                        SizedBox(
                          height: size.height * 0.02560492,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.07130125),
                          child: Text(
                            "Welcome Back!",
                            style: TextStyle(
                                fontSize: size.width * 0.05602241,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02060492,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.07130125),
                          child: Text("Login to continue",
                              style: TextStyle(
                                fontSize: size.width * 0.03565062,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff8f92a1),
                              )),
                        ),
                        SizedBox(
                          height: size.height * 0.020604920,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.07130125),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: size.width * 0.25210084,
                                height: size.height * 0.06401229,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.indigo[600],
                                ),
                              ),
                              Container(
                                width: size.width * 0.25210084,
                                height: size.height * 0.06401229,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                width: size.width * 0.25210084,
                                height: size.height * 0.06401229,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey)),
                              )
                              // InkWell(
                              //     onTap: () {},
                              //     child: Image.asset(
                              //       "assets/icons/facebook.png",
                              //       height: size.height * 0.06401229,
                              //       width: size.width * 0.25210084,
                              //     )),
                              // InkWell(
                              //     onTap: () {},
                              //     child: Image.asset(
                              //       "assets/icons/Apple.png",
                              //       height: size.height * 0.06401229,
                              //       width: size.width * 0.25210084,
                              //     )),
                              // InkWell(
                              //     onTap: () {},
                              //     child: Image.asset(
                              //       "assets/icons/Google.png",
                              //       height: size.height * 0.06401229,
                              //       width: size.width * 0.25210084,
                              //     )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02060492,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.07130125),
                          child: Text("EMAIL",
                              style: TextStyle(
                                  fontSize: size.width * 0.03055767762,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          height: size.height * 0.02060492,
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.07130125),
                            child: Container(
                              height: size.height * 0.0614518,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    suffixIcon: Image.asset(
                                        "assets/icons/CheckCircle.png")),
                              ),
                            )),
                        SizedBox(
                          height: size.height * 0.02060492,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.07130125),
                          child: Text("PASSWORD",
                              style: TextStyle(
                                  fontSize: size.width * 0.03055767762,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(
                          height: size.height * 0.02060492,
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.07130125),
                            child: Container(
                              height: size.height * 0.0614518,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    suffixIcon:
                                        const Icon(Icons.remove_red_eye)),
                              ),
                            )),
                        SizedBox(
                          height: size.height * 0.02560492,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.07130125),
                          child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: size.height * 0.06141518,
                                width: size.width,
                                decoration: BoxDecoration(
                                    color: Colors.indigo,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Center(
                                    child: Text("Login",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ))),
                              )),
                        ),
                        SizedBox(
                          height: size.height * 0.02060492,
                        ),
                        Center(
                            child: InkWell(
                                onTap: () {},
                                child: const Text(
                                  "Forgot Password",
                                  style: TextStyle(color: Color(0xff8f92a1)),
                                ))),
                        SizedBox(
                          height: size.height * 0.02060492,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.07130125),
                          child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: size.height * 0.07141518,
                                width: size.width,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Center(
                                    child: Text(
                                  "Create an account",
                                  style: TextStyle(fontSize: 15),
                                )),
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
