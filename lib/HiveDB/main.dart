
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_titorials/HiveDB/Screens/Home/screen_home.dart';
import 'package:my_titorials/HiveDB/db/models/data_modelss.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized(); // Checking the prblms then only it go further steps
  await Hive.initFlutter();
  //? Adapter registration
  if (!Hive.isAdapterRegistered(StudentModelAdapter().typeId)) {
    Hive.registerAdapter(StudentModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StudentDetails',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const ScreenHome(),
    );
  }
}