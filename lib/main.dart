import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Sagar koli",
      home: homeScreen(),
    ));

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appBar2 = AppBar(
        title: Center(child: Text("The Smart Salon Manger")),
        backgroundColor: Colors.black,
      );
    return Scaffold(
      appBar: appBar2,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 5,
                offset: Offset(2.0, 5.0)
              )
            ],
               color: Colors.teal,
               gradient: LinearGradient(colors: [
                 Colors.yellow , Colors.pink
               ])
          ),
          child: Text("I am box",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 20
          ),
          ),
        ),
      ),
    );
  }
}
