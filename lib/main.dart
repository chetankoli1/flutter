import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Sagar koli",
      home: HomeScreen(),
      theme: ThemeData(primarySwatch: Colors.purple),
    ));

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change me";

  @override
  void initState() {
    // TODO: implement initState
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
              child: Column(
                children: [
                  Image.asset("assets/Images/chetan.jpg", fit: BoxFit.cover),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    myText,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _nameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Enter Value",
                        labelText: "Name",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )),
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: new Text("chetan koli"),
              accountEmail: new Text("chetan@abc.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://media.istockphoto.com/photos/portrait-of-smiling-handsome-man-in-blue-tshirt-standing-with-crossed-picture-id1045886560?k=6&m=1045886560&s=612x612&w=0&h=hXrxai1QKrfdqWdORI4TZ-M0ceCVakt4o6532vHaS3I="),
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
                subtitle: Text(
                    "please give your feed back to improve more functionlity"),
                trailing: Icon(Icons.refresh))
          ],
        )),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              myText = _nameController.text;
              setState(() {});
            },
            child: Icon(Icons.refresh)));
  }
}
