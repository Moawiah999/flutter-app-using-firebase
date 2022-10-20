import 'package:flutter/material.dart';

import '../screens/login_screen.dart';

class LoginAccountLabel extends StatefulWidget {
  const LoginAccountLabel({super.key});

  @override
  State<LoginAccountLabel> createState() => _LoginAccountLabelState();
}

class _LoginAccountLabelState extends State<LoginAccountLabel> {
  @override
  Widget build(BuildContext context) {
    return
        // nkWell(
        //   onTap: () {
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (context) => Login_screen()));
        //   },
        //   child:

        Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.all(15),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Already have an account ?',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Login_screen();
                },
              ));
            },
            child: Text(
              'Login',
              style: TextStyle(
                  color: Color(0xfff79c4f),
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
      // ),
    );
  }
}
