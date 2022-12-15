import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_titorials/Screens/Login_Screen.dart';

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
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => ScreenLogin()));
  }
}