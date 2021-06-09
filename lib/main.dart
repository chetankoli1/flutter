import 'dart:js';

import 'package:example/pages/HomeScreen.dart';
import 'package:example/pages/LoginPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Sagar koli",
      home: LoginPage(),
      theme: ThemeData(primarySwatch: Colors.purple),
      routes: {
        "/home": (context) => HomeScreen(),
        "/login": (context) => LoginPage()
      },
    ));
