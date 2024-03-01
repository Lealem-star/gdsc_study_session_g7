import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/pages/first.dart';
import 'package:todo_app/pages/taskprovider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TaskProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage(),
      ),
      builder: (context, child) {
        // Load tasks after the app initializes
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Provider.of<TaskProvider>(context, listen: false).loadTasks();
        });
        return child!;
      },
    );
  }
}