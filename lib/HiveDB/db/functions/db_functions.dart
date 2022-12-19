import 'package:flutter/widgets.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_titorials/HiveDB/db/models/data_modelss.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

//! Add button click
Future<void> addStudent(StudentModel value) async{
  

  final studentDB = await Hive.openBox<StudentModel>('student_db');
  final _id = await studentDB.add(value);
  value.id = _id;
  studentListNotifier.value.add(value);
  studentListNotifier.notifyListeners(); //! ValueListenableBuilder (list_student wid)
  //print(value.toString());
}

Future<void> getAllStudents() async {
  final studentDB = await Hive.openBox<StudentModel>('student_db');
  studentListNotifier.value.clear();

  studentListNotifier.value.addAll(studentDB.values);
  studentListNotifier.notifyListeners();

}

Future<void> deleteStudent(int id) async{
  final studentDB = await Hive.openBox<StudentModel>('student_db');
  await studentDB.delete(id);
  getAllStudents();
}