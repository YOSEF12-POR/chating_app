import 'package:chating_app/screens/registertion_screen.dart';

import '../screens/signin_screen.dart';

import '../widgets/my_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const String ScreenRoute = 'welcome_screen';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset('images/logo.png'),
                ),
                Text(
                  'Chating App',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff2e386b),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            MyButton(
              color: Colors.yellow[900]!,
              title: 'Sign in ',
              onPressed: () {
                Navigator.pushNamed(context, SignInScreen.ScreenRoute);
              },
            ),
            MyButton(
              color: Colors.blue[800]!,
              title: 'Register  ',
              onPressed: () {
                Navigator.pushNamed(context, RegistertionScreen.ScreenRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
