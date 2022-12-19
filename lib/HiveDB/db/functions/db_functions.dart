import 'package:flutter/widgets.dart';
import 'package:my_titorials/HiveDB/db/models/data_modelss.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

//! Add button click
void addStudent(StudentModel value) {
  studentListNotifier.value.add(value);
  studentListNotifier.notifyListeners(); //! ValueListenableBuilder (list_student wid)
  //print(value.toString());
}