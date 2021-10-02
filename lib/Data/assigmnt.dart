import 'package:flutter/material.dart';

class Assigment extends StatefulWidget {
  const Assigment({Key? key}) : super(key: key);

  @override
  State<Assigment> createState() => _AssigmentState();
}

class _AssigmentState extends State<Assigment> {
  String text = "this is a textField";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Using basic Widgets"),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Text("Text will show below, Consider this as a TextView"),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey)),
                child: Center(
                    child: Text(
                  "This is a textView",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                controller: TextEditingController(
                  text: "hello",
                ),
                decoration: InputDecoration(
                    hintText: "Enter text",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.indigo),
              child: Center(
                  child: Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              )),
            )
          ],
        ),
      ),
    );
  }
}
