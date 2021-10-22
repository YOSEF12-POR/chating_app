import '../screens/chat_screen.dart';
import '../screens/registertion_screen.dart';
import '../screens/signin_screen.dart';
import '../screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

//git add .
// git push origin master

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Yalah Chat',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: ChatScreen(),
        initialRoute: _auth.currentUser != null
            ? ChatScreen.ScreenRoute
            : WelcomeScreen.ScreenRoute,
        routes: {
          WelcomeScreen.ScreenRoute: (context) => WelcomeScreen(),
          SignInScreen.ScreenRoute: (context) => SignInScreen(),
          RegistertionScreen.ScreenRoute: (context) => RegistertionScreen(),
          ChatScreen.ScreenRoute: (context) => ChatScreen(),
        });
  }
}
