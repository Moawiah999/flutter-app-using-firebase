// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class SubmiButton extends StatefulWidget {
//   SubmiButton({super.key});

//   @override
//   State<SubmiButton> createState() => _SubmiButtonState();
// }

// class _SubmiButtonState extends State<SubmiButton> {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Color(0xfffbb448),
//       ),
//       onPressed: () async {
//         try {
//           var authenticationobject = FirebaseAuth.instance;
//           UserCredential myUser =
//               await authenticationobject.createUserWithEmailAndPassword(
//                   email: emailController.text, password: passController.text);
//           ScaffoldMessenger.of(context)
//               .showSnackBar(SnackBar(content: Text("added successfully")));
//         } catch (e) {
//           ScaffoldMessenger.of(context)
//               .showSnackBar(SnackBar(content: Text("sorry there is an error")));
//         }
//       },
//       child: Container(
//         width: MediaQuery.of(context).size.width,
//         padding: EdgeInsets.symmetric(vertical: 15),
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(5)),
//           boxShadow: <BoxShadow>[
//             BoxShadow(
//                 color: Colors.grey.shade200,
//                 offset: Offset(2, 4),
//                 blurRadius: 5,
//                 spreadRadius: 2)
//           ],
//           gradient: LinearGradient(
//             begin: Alignment.centerLeft,
//             end: Alignment.centerRight,
//             colors: [Color(0xfffbb448), Color(0xfff7892b)],
//           ),
//         ),
//         child: Text(
//           'Register Now',
//           style: TextStyle(fontSize: 20, color: Colors.white),
//         ),
//       ),
//     );
//   }
// }
