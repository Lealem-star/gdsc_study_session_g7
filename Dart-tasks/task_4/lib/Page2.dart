import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.chevron_left),
        title: const Text('Create New Task'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('lib/images/images.png'),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/page2');
            },
            child: const Text('Add task'),
          ),
        ],
      ),
    );
  }
}
