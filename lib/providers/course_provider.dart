import 'package:flutter/material.dart';
import 'package:mini_course_player_app/core/services/course_service.dart';
import 'package:mini_course_player_app/models/course_model.dart';

class CourseProvider extends ChangeNotifier {
  final CourseService _courseService = CourseService();

  List<CourseModel> _courses = [];
  List<CourseModel> get courses => _courses;

  bool _isLoadding = false;
  bool get isloading => _isLoadding;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  Future<void> getCourse() async {
    _isLoadding = true;
    _errorMessage = null;
    notifyListeners();

    try {
      _courses = await _courseService.getCourses();
    } catch (e) {
      _errorMessage = e.toString();
    }
    _isLoadding = false;
    notifyListeners();
  }
}
