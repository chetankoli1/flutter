import 'package:example/changeNameCard.dart';
import 'package:example/drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change me";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(title: new Text("chetan koli")),
        body: Center(
            child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: ChangeNameCard(
                  myText: myText, nameController: _nameController),
            ),
          ),
        )),
        drawer: MyDrawer(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              myText = _nameController.text;
              setState(() {});
            },
            child: Icon(Icons.refresh)));
  }
}
