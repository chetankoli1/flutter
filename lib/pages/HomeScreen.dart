import 'package:example/drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change me";
  var urls = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();

    getData();
  }

  getData() async {
    var res = await http.get(Uri.parse(urls));
    data = jsonDecode(res.body);
    print(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(title: new Text("chetan koli")),
        body: Center(
            child: Padding(
          padding: EdgeInsets.all(16.0),
          child: data != null
              ? Card(
                  child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ListTile(
                            title: Text(data[index]["title"]),
                            leading: Image.network(data[index]["url"]),
                            subtitle: Text("ID: ${data[index]["id"]}"),
                          ),
                        );
                      },
                      itemCount: data.length),
                )
              : Center(
                  child: CircularProgressIndicator(),
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
