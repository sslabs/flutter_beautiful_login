import 'package:beautiful_login/screens/login/widgets/form_container.dart';
import 'package:beautiful_login/screens/login/widgets/sign_up_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.jpeg'),
                fit: BoxFit.cover)),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 78, bottom: 32),
                      child: Image.asset('images/ClipartKey_971306.png',
                          width: 130, height: 130, fit: BoxFit.contain),
                    ),
                    FormContainer(),
                    SignUpButton()
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
