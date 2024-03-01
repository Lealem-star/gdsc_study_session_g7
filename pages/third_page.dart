// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/pages/model.dart';
import 'package:todo_app/pages/taskprovider.dart';

class ThirdPage extends StatelessWidget {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
    }
  }

  ThirdPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.chevron_left)),
        title: Text('Create New Task'),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Column(
        children: [
          Text("Main Task Name"),
          Container(
            height: 50,
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter your task',
                labelText: 'Text Field',
                prefixIcon: Icon(Icons.message),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
              controller: titleController,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Description"),
          Container(
            height: 50,
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter your task description',
                labelText: 'Text Field',
                prefixIcon: Icon(Icons.message),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
              controller: descriptionController,
            ),
          ),
          
          Center(
            child: SizedBox(
              height: 76,
              width: 177,
              child: ElevatedButton(
                onPressed: () {
                  Task newTask = Task(
                    title: titleController.text,
                    description: descriptionController.text,
                    date: selectedDate,
                  );
                  taskProvider.addProduct(newTask);
                  Navigator.of(context).pop();
                },
                child: Text('Add Task'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
