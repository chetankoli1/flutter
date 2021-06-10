import 'package:example/utils/Constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  var userNameController = TextEditingController();
  var passwordNameController = TextEditingController();
  final Constants constants = Constants();
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final Constants constants = Constants();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: new AppBar(
          title: new Text("Login Page"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/Images/chetan.jpg",
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.7),
              colorBlendMode: BlendMode.darken,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: new SingleChildScrollView(
                    child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Form(
                            child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Enter Username",
                                  labelText: "Username",
                                  border: OutlineInputBorder()),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  labelText: "Password",
                                  border: OutlineInputBorder()),
                            )
                          ],
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        RaisedButton(
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => HomeScreen()));
                            constants.createSessson(true);
                            Navigator.pushReplacementNamed(context, "/home");
                          },
                          child: new Text("Login"),
                          color: Colors.pink,
                          textColor: Colors.white,
                        )
                      ],
                    ),
                  ),
                )),
              ),
            ),
          ],
        ));
  }
}
