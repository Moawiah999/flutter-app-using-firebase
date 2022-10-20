import 'package:citycafe_app/screens/home_screen.dart';
import 'package:citycafe_app/screens/homescreentow.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

// class AuthMuthed {
//   FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
//   signInWithGoogle(context) async {
//     GoogleSignInAccount? googleAccount =
//         await GoogleSignIn(scopes: <String>["email"]).signIn();
//     final GoogleSignInAuthentication googleAuth =
//         await googleAccount!.authentication;
//     final Credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
//     await _firebaseAuth.signInWithCredential(Credential).whenComplete(() => () {
//           Navigator.push(context, MaterialPageRoute(
//             builder: (context) {
//               return Home_Screen();
//             },
//           ));
//         });
//   }
// }
class GoogleLogin extends ChangeNotifier {
  authState() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        return HomeScreenTow();
        // if (snapshot.hasData) {

        //   return const Screenone();

        // } else {

        //   return const SignUp();

        // }
      },
    );
  }

  Future googlelogin() async {
    GoogleSignInAccount? googleUser =
        await GoogleSignIn(scopes: <String>["email"]).signIn();

    GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  signO() {
    FirebaseAuth.instance.signOut();
  }
}
