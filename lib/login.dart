import 'package:firebase_auth/firebase_auth.dart';
import 'package:flex_admin_panel/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'components/loading.dart';
import 'constants/colors.dart';
import 'constants/styles.dart';


class LoginWithGoogle extends StatefulWidget {
  const LoginWithGoogle({super.key});

  @override
  State<LoginWithGoogle> createState() => _LoginWithGoogleState();
}

class _LoginWithGoogleState extends State<LoginWithGoogle> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        // User is signed in
        // Save user instance or perform any action you want
       print(user);
      } else {
        print("NoUserfound");
        // User is signed out
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       child:  ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
              MaterialStatePropertyAll(ColorConstant.buttonColor),
              fixedSize: const MaterialStatePropertyAll(Size(154, 51)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)))),
          child: Text("GOOGLE LOGIN",
              style: Styles.textWith14with800(Colors.black)),
          onPressed: () {
            _signInWithGoogle();

          },
        ),
      ),
    );
  }
  Future<void> _signInWithGoogle() async {
    try {
      GoogleSignInAccount? currentUser;
      final firebaseAuth = FirebaseAuth.instance;
      const List<String> scopes = ['email'];
      GoogleSignIn googleSignIn =
      GoogleSignIn(scopes: scopes, signInOption: SignInOption.standard,
          clientId: '985413801317-9d47ljng1a8es6fpb20jmcqah1nr2tpf.apps.googleusercontent.com',
      );
      currentUser = await googleSignIn.signIn();
      if (currentUser == null) {
        print('Google Sign In Failed!');
        return;
      }
      final authentication = await currentUser.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: authentication.accessToken,
          idToken: authentication.idToken);
      final userCredentials =
      await firebaseAuth.signInWithCredential(credential);
      final profile = userCredentials.additionalUserInfo!.profile;
      Navigator.push(context, MaterialPageRoute(builder: (_)=>HomePage()));

      debugPrint(profile.toString());
    } catch (error) {
      print('Google Sign In Failed');
      debugPrint('_signInWithGoogleError: $error');
    }
  }

}
