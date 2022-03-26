import 'package:e_com/app/constants.dart';
import 'package:e_com/meta/views/home.page.dart';
import 'package:e_com/meta/views/login.page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Ecom());

class Ecom extends StatelessWidget {
  const Ecom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "Gifory",
          appBarTheme: const AppBarTheme(
              elevation: 0.0,
              backgroundColor: Colors.black,
              centerTitle: true,
              titleTextStyle: TextStyle(fontSize: 18, fontFamily: "Gifory"))),
      home: const HomePage(),
    );
  }
}
