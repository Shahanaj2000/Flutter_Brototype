
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({super.key});

   //For geting the text into DB
    final _usernameController = TextEditingController();
    final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        title: const Text("LOGIN"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
               TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Username',
                ),
              ), 
              const SizedBox(
                height: 10,
              ),
               TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password'
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                onPressed: () { checkLogin(context);},
                icon: const Icon(Icons.check),
                label: const Text("LOGIN"),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void checkLogin(BuildContext ctx) {
    final _password = _usernameController.text;
    final _username = _passwordController.text;

    if (_username == _password) {
      //Go to Home page
    } else {
      final _errorMessage = "Username or Password doesn't mathch";

      //Snack Bars
      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(
          content: Text(_errorMessage),
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.all(20.0),
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 10),
        ),
      );

      //Alert

      showDialog(context: ctx, builder: (ctx1) {
        return AlertDialog(
          title: const Text('Eroor'),
          content: Text(_errorMessage),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(ctx1).pop();
              },
              child: const Text("Close"),
            ),
          ], 
        );
      });
    }
  }
}