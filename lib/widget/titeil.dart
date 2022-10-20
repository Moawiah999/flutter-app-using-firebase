import 'package:flutter/material.dart';

class Titel extends StatefulWidget {
  const Titel({super.key});

  @override
  State<Titel> createState() => _TitelState();
}

class _TitelState extends State<Titel> {
  @override
  Widget build(BuildContext context) {
    return RichText(
      softWrap: false,
      text: TextSpan(
          onEnter: ((event) {
            print("123");
          }),
          text: 'Lt',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color(0xffe46b10)),
          children: [
            TextSpan(
              text: 'uc Stu',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            TextSpan(
              text: 'dents',
              style: TextStyle(color: Color(0xffe46b10), fontSize: 30),
            ),
          ]),
    );
  }
}
