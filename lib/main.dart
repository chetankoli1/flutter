import 'package:example/pages/HomeScreen.dart';
import 'package:example/pages/LoginPage.dart';
import 'package:example/utils/Constants.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Constants constants = Constants();
  final bool key = true;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Sagar koli",
    home: constants.getSesson() == key ? HomeScreen() : LoginPage(),
    theme: ThemeData(primarySwatch: Colors.purple),
    routes: {
      "/home": (context) => HomeScreen(),
      "/login": (context) => LoginPage()
    },
  ));
}
