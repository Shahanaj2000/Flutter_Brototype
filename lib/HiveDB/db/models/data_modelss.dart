import 'package:hive/hive.dart';
part 'data_modelss.g.dart'; //! Adapter (Bridge b/w R & W fron DB)
@HiveType(typeId: 1)
class StudentModel {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String age;

  //? We cant ignore the value bcz of reqparams
  StudentModel({required this.name, required this.age, this.id});
}