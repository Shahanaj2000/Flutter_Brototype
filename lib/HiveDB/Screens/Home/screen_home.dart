import 'package:flutter/material.dart';
import 'package:my_titorials/HiveDB/Screens/widgets/add_student.dart';
import 'package:my_titorials/HiveDB/Screens/widgets/list_student.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CRUD OPERATIONS"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            AddStudentWidget(),
            const Expanded(child: ListStudentWidhet())
          ],
        ),
      ),
    );
  }
}