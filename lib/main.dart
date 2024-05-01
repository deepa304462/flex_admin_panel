import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flex_admin_panel/home_page.dart';
import 'package:flex_admin_panel/login.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCOr2rsAY-yq8ogNzCBI-gFOxFpwAtvi9k",
          authDomain: "flexxbet.firebaseapp.com",
          projectId: "flexxbet",
          storageBucket: "flexxbet.appspot.com",
          messagingSenderId: "985413801317",
          appId: "1:985413801317:web:0c4e12425b61a3d41c3d8c",
          measurementId: "G-PM6FRQ9H17"
      ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(), // Changed userChanges to authStateChanges
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.data != null) {
              return HomePage(); // Navigate to HomePage if user is not logged in
            } else {
              return LoginWithGoogle(); // Navigate to SignUpPage if user is logged in
            }
          } else {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
     /* home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.userChanges(),
    initialData:  FirebaseAuth.instance.currentUser,
    builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.done) {
    if (snapshot.data == null){
    Navigator.of(context).pushReplacementNamed('/HomePage');
    }else{
    Navigator.of(context).pushReplacementNamed('/signup');
    }
    }
    ),*//*const LoginWithGoogle()*//*,
    );*/
  }
}

