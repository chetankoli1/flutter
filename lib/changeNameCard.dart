import 'package:flutter/material.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key? key,
    required this.myText,
    required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
