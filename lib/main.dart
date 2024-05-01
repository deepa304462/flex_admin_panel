import 'package:firebase_core/firebase_core.dart';
import 'package:flex_admin_panel/home_page.dart';
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
      home: const HomePage(),
    );
  }
}

