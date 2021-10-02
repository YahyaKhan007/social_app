import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                top: size.height * 0.17923441,
                child: SingleChildScrollView(
                  child: Container(
                      height: size.height * 0.86032518,
                      width: size.width,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                          color: Colors.white),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: size.height * 0.02816541,
                            ),
                            Center(
                                child:
                                    Image.asset("assets/icons/Indicator.png")),
                            SizedBox(
                              height: size.height * 0.02560492,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 28),
                              child:
                                  Image.asset("assets/text/WelcomeBack!.png"),
                            ),
                            SizedBox(
                              height: size.height * 0.02560492,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 28),
                              child: Image.asset(
                                  "assets/text/LoginToContinue2.png"),
                            ),
                            SizedBox(
                              height: size.height * 0.02560492,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 28),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                ],
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.02560492,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 28),
                              child: Image.asset("assets/text/Name.png"),
                            ),
                            SizedBox(
                              height: size.height * 0.02560492,
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
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: size.height * 0.02560492,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 28),
                              child: Image.asset("assets/text/Email.png"),
                            ),
                            SizedBox(
                              height: size.height * 0.02560492,
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
                              height: size.height * 0.02560492,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 28),
                              child: Image.asset("assets/text/Password.png"),
                            ),
                            SizedBox(
                              height: size.height * 0.02560492,
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
                                    height: size.height * 0.07141518,
                                    width: size.width,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff79d0f1),
                                        border: Border.all(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Center(
                                        child: Text(
                                      "Create an account",
                                      style: TextStyle(fontSize: 15),
                                    )),
                                  )),
                            ),
                            SizedBox(
                              height: size.height * 0.02560492,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 95),
                              child: Row(
                                children: [
                                  const Text("Already have an account?"),
                                  InkWell(
                                      onTap: () {}, child: const Text(" login"))
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
