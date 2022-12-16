import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_titorials/Screens/Login_Screen.dart';
import 'package:my_titorials/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HOME SCREEN"),
        actions: [
          IconButton(onPressed: () { signout(context);}, icon: Icon(Icons.exit_to_app)),
        ],
      ),
      body: const Center(
        child: Text("Home Page"),
      ),
    );
  }
  //? Sigout Fn
  signout(BuildContext ctx) async{

    final _sharePrefs = await SharedPreferences.getInstance();
    await _sharePrefs.clear();

    Navigator.of(ctx).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx1) => ScreenLogin()), (route) => false);
  }
}