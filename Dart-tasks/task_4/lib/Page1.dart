import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.chevron_left),
        title: const Text('Todo List'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('lib/images/images.png')),
          Text('Task list'),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/page1');
            },
            child: const Text('Create Task'),
          ),
        ],
      ),
    );
  }
}
