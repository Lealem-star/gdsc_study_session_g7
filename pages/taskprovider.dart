import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/pages/model.dart';
import 'dart:convert';

class TaskProvider extends ChangeNotifier {
  List<Task> _tasks = [];
  List<Task> get tasks => _tasks;

  Future<void> loadTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? tasksJson = prefs.getString('tasks');
    if (tasksJson != null) {
      List<dynamic> tasksData = jsonDecode(tasksJson);
      _tasks = tasksData.map((data) => Task.fromJson(data)).toList();
      notifyListeners();
    }
  }

  Future<void> saveTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String tasksJson = jsonEncode(_tasks);
    await prefs.setString('tasks', tasksJson);
  }

  void addProduct(Task task) {
    _tasks.add(task);
    saveTasks();
    notifyListeners();
  }

  void updateTask(Task updatedTask) {
    final index = _tasks.indexWhere((task) => task.title == updatedTask.title);
    if (index >= 0) {
      _tasks[index] = updatedTask;
      saveTasks();
      notifyListeners();
    }
  }

  void deleteTask(String taskTitle) {
    _tasks.removeWhere((task) => task.title == taskTitle);
    saveTasks();
    notifyListeners();
  }
}