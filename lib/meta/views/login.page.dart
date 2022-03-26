import 'package:e_com/app/constants.dart';
import 'package:e_com/app/extensions/widgets.ext.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "ECom",
              style: TextStyle(fontSize: 40),
            ),
            50.boxV,
            const Text(
              "Get Started",
              style: TextStyle(fontSize: 18),
            ),
            10.boxV,
            const Text(
              "Sign with Google and start shopping",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            40.boxV,
            Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(FontAwesomeIcons.google),
                    10.boxH,
                    const Text("Sign in with Google")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
