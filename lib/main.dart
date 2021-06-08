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
              UserAccountsDrawerHeader(accountName: new Text("chetan koli"),
               accountEmail: new Text("chetan@abc.com"),
               currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://media.istockphoto.com/photos/portrait-of-smiling-handsome-man-in-blue-tshirt-standing-with-crossed-picture-id1045886560?k=6&m=1045886560&s=612x612&w=0&h=hXrxai1QKrfdqWdORI4TZ-M0ceCVakt4o6532vHaS3I="),
               ),
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
