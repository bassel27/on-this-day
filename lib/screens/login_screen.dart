import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("On This Day"),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: const InputDecoration(labelText: "Username"),
                controller: _usernameController,
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                decoration: const InputDecoration(labelText: "Password"),
                controller: _passwordController,
              ),
              ElevatedButton(
                onPressed: () {
                  print(_usernameController.text);
                  print(_passwordController.text);
                },
                child: const Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
