import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:mini_course_player_app/models/course_model.dart';

class CourseService {
  Future<List<CourseModel>> getCourses() async {
    final jsonString = await rootBundle.loadString('assets/data/courses.json');

    final Map<String, dynamic> data = jsonDecode(jsonString);

    final List courses = data['courses'];

    return courses.map((Courses) => CourseModel.fromJson(Courses)).toList();
  }
}
