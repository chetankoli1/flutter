import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Sagar koli",
      home: HomeScreen(),
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
    ));

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      body: Container(

      ),
      appBar: AppBar(
        title: new Text("chetan koli")
      
      ),
      drawer: Drawer(
        child: ListView(
            children: [
              DrawerHeader(child: Text("I am drawer",
                            style: TextStyle(color: Colors.white),
                            ),
              decoration: BoxDecoration(color: Colors.purpleAccent)
              ),
              ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Account"),
                  subtitle: Text("This is full details"),
                  trailing: Icon(Icons.edit),
              ),
              ListTile(
                  leading: Icon(Icons.feedback),
                  title: Text("feedback"),
                  subtitle: Text("please give your feed back to improve more functionlity"),
                  trailing: Icon(Icons.refresh)
              )
            ],
        )
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      },
      child: Icon(Icons.edit)
      ),
    );
  }
}
