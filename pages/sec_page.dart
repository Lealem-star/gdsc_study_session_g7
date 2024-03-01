// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/pages/fourth_page.dart';
import 'package:todo_app/pages/taskTile.dart';
import 'package:todo_app/pages/taskprovider.dart';
import 'package:todo_app/pages/third_page.dart';

class Sec_Page extends StatelessWidget {
  Sec_Page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.chevron_left)),
        title: Text('Todo List'),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 236,
            height: 242,
            child: Image.asset('lib/images/download (1).png'),
          ),
          Text('Tasks list'),
          Consumer<TaskProvider>(
            builder: (context, taskProvider, child) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: taskProvider.tasks.length,
                itemBuilder: (context, index) {
                  final task = taskProvider.tasks[index];
                  return GestureDetector(
                    child: TaskTile(
                      title: task.title,
                      description: task.description,
                      date: task.date,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Fourth_Page(
                            title: task.title,
                            description: task.description,
                            date: task.date,
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            },
          ),
          Center(
            child: SizedBox(
              height: 70,
              width: 256,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdPage(),
                    ),
                  );
                },
                child: Text('Create Task'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
