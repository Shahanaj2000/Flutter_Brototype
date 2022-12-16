import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_titorials/Screens/Home_Screen.dart';
import 'package:my_titorials/Screens/Login_Screen.dart';
import 'package:my_titorials/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  //Once call
  @override
  void initState() {
    // TODO: implement initState
    _gotoLogin();
    super.initState();
  }
  //If any changes to make
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/foodlogo.jpg', height: 300,),
      ),
    );
  }
  //If we want to remove
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> _gotoLogin() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => ScreenLogin()));
  }

  Future<void> checkUserLoggedIn() async {
    final _sharedpreff = await SharedPreferences.getInstance();

    //Get bool
    final _userLoggedIn = _sharedpreff.getBool(SAVE_KEY_NAME);
    if (_userLoggedIn == null || _userLoggedIn == false) {
      _gotoLogin();
    } else {
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx1) => ScreenHome()), (route) => false);
    }
  }
}