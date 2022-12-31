import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("On This Day"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(decoration: InputDecoration(labelText: "Username")),
              TextField(decoration: InputDecoration(labelText: "Password")),
              ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
