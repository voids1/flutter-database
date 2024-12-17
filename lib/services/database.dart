import 'package:flutter_application_6/model/student.dart';
import 'package:supabase_flutter/supabase_flutter.dart';



class Database {
  final supabase = Supabase.instance.client;

  Future<List<Student>> getData() async {
    var response = await supabase.from("student").select();

    List<Student> studentList = [];
    for (var element in response) {
      studentList.add(Student.fromJson(element));
    }
    return studentList;
  }
}