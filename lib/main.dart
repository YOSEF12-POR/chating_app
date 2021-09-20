import '../screens/chat_screen.dart';

import '../screens/registertion_screen.dart';
import '../screens/signin_screen.dart';
import '../screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Chat App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: ChatScreen(),
        initialRoute: WelcomeScreen.ScreenRoute,
        routes: {
          WelcomeScreen.ScreenRoute: (context) => WelcomeScreen(),
          SignInScreen.ScreenRoute: (context) => SignInScreen(),
          RegistertionScreen.ScreenRoute: (context) => RegistertionScreen(),
          ChatScreen.ScreenRoute: (context) => ChatScreen(),
        });
  }
}
