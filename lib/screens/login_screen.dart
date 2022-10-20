import 'package:citycafe_app/components/authmethode.dart';
import 'package:citycafe_app/screens/forgotpassword.dart';
import 'package:citycafe_app/screens/home_screen.dart';
import 'package:citycafe_app/screens/signup_Screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../widget/titeil.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({Key? key}) : super(key: key);

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  late String email;
  late String password;
  final authInstance = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: Titel()),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xffe46b10),
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                )),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/1.png"))),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                onChanged: (value) {
                  email = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                onChanged: (value) {
                  password = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ForgotPassword();
                  },
                ));
              },
              child: const Text(
                'Forgot Password',
                style: TextStyle(
                    color: Color(0xffe46b10), fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffe46b10)),
                child: const Text('Login'),
                onPressed: () async {
                  try {
                    final newuser =
                        await authInstance.signInWithEmailAndPassword(
                            email: email, password: password);
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Home_Screen();
                      },
                    ));
                  } catch (e) {
                    print(e);
                  }
                },
              ),
            ),
            Row(
              children: [
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Signup_Screen();
                      },
                    ));
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            SizedBox(
              height: 50,
            ),
            // GestureDetector(
            //     child: ElevatedButton(
            //   child: Text("Sign in with a google account"),
            //   onPressed: () {
            //     signInWithGoogle();
            //   },
            // )),
            ElevatedButton(
                onPressed: () => GoogleLogin().googlelogin(),
                child: Text("sig in withe google"))
          ],
        ),
      ),
    );
  }

  // signInWithGoogle() async {
  //   final GoogleSignInAccount? googleuser =
  //       await GoogleSignIn(scopes: <String>["email"]).signIn();
  //   final GoogleSignInAuthentication googleAuth =
  //       await googleuser!.authentication;
  //   final Credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
  //   return await FirebaseAuth.instance.signInWithCredential(Credential);
  // }

  Future<void> googleSigIn() async {
    GoogleSignInAccount? googleAccount =
        await GoogleSignIn(scopes: <String>["email"]).signIn();
    if (googleAccount != null) {
      final googleAuth = await googleAccount.authentication;
      if (googleAuth.accessToken != null && googleAuth.idToken != null) {
        try {
          await authInstance.signInWithCredential(
            GoogleAuthProvider.credential(
                idToken: googleAuth.idToken,
                accessToken: googleAuth.accessToken),
          );
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return Home_Screen();
            },
          ));
        } on FirebaseAuthException catch (error) {
        } catch (error) {
        } finally {}
      }
    }
  }
}
