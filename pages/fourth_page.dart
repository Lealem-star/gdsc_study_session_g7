import 'package:flutter/material.dart';

class Fourth_Page extends StatelessWidget {
  final String title;
  final DateTime date;
  final String description;
  const Fourth_Page({
    //super.key,
    Key? key,
    required this.title,
    required this.description,
    required this.date,
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
        title: Text('Task Detail'),
        actions: [Icon(Icons.more_vert)],
      ),
      body: ListView(
        children: [
          Container(
            width: 236,
            height: 242,
            child: Image.asset('lib/images/hhhii.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Title',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.all(16),
              height: 55,
              width: 311,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 239, 232, 232),
              ),
              child: SingleChildScrollView(child: Text(title,style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),)),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Description',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.all(16),
              height: 150,
              width: 311,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 247, 242, 242),
              ),
              child: SingleChildScrollView(
                child: Text(description,style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Deadline',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.all(16),
              height: 55,
              width: 311,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 244, 237, 237),
                // other decoration properties
              ),
              child: Text(date.toString(),style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
            ),
          ),
        ],
      ),
    );
  }
}
