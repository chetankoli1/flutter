import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
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
      body: Padding(padding: const EdgeInsets.all(8.0),
      child: Align(
                alignment: Alignment.bottomRight,
                    child: Container(
                      color: Colors.black,
                      width: 200,
                      height: 400,
                      child : Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: 100,
                        height: 100,
                        color: Colors.red,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: 100,
                        height: 100,
                        color: Colors.yellow,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: 100,
                        height: 100,
                        color: Colors.green,
                      ),
                    ],
                  ),
                  ),
              ),       
      )
    );
  }
}
