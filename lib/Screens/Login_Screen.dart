
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenLogin extends StatefulWidget {
  ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
   //For geting the text into DB
    final _usernameController = TextEditingController();

    final _passwordController = TextEditingController();

    bool _isDataMatched = true;

    final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        title: const Text("LOGIN"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                 TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Username',
                  ),
                  validator: (value) {
                    /*if(_isDataMatched) {
                      return null;
                    } else {
                      return "Username or Password doesn't match";
                    }*/
                    if (value == null || value.isEmpty) {
                      return 'Value is empty';
                    } else {
                      return null;
                    }
                  },
                ), 
                const SizedBox(
                  height: 10,
                ),
                 TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password'
                  ),
                  validator: (value) {
                    /*if(_isDataMatched) {
                      return null;
                    } else {
                      return "Username or Password doesn't match";
                    } */
                    if (value == null || value.isEmpty) {
                      return 'Value is empty';
                    } else {
                      return null;
                    }
                  },
                    
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Visibility(
                      visible: !_isDataMatched,
                      child: const Text(
                        "Username or Password doesn't match",
                      style: TextStyle(color: Colors.red),), 
                    ),
                    ElevatedButton.icon(
                      onPressed: () { 
                        checkLogin(context);
                        if(_formkey.currentState!.validate()) {
                          return checkLogin(context);
                        } else {
                          print("Data Empty");
                        }
                        
                      },
                      icon: const Icon(Icons.check),
                      label: const Text("LOGIN"),
                    ),
                  ],
                ),
              ],
            ),
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
      
    }
  }
}