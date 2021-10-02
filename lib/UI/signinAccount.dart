import 'package:flutter/material.dart';

class SiginAccount extends StatefulWidget {
  const SiginAccount({Key? key}) : super(key: key);

  @override
  _SiginAccountState createState() => _SiginAccountState();
}

class _SiginAccountState extends State<SiginAccount> {
  String name = "diana_slown";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffECF0F3),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.32006145,
            ),
            Container(
              height: size.height * 0.17283318,
              width: size.width * 0.26377387,
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: size.height * 0.08321598,
                    backgroundImage:
                        const AssetImage("assets/images/BlueGirl.png"),
                  ),
                  Positioned(
                    right: 5,
                    child: CircleAvatar(
                      radius: size.height * 0.02048393,
                      backgroundColor: Colors.green,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.02560492,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.02560492,
            ),
            InkWell(
                onTap: () {}, child: Image.asset("assets/buttons/Signin.png")),
            SizedBox(
              height: size.height * 0.02560492,
            ),
            InkWell(
                onTap: () {},
                child: Image.asset("assets/text/SwitchAccounts.png")),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.226822),
              child: Row(
                children: [
                  const Text("Don't have an account? / ",
                      style: TextStyle(
                        color: Colors.black,
                      )),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Sign up",
                      style: TextStyle(color: Color(0xff7737FF)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.05120983,
            )
          ],
        ),
      ),
    );
  }
}
