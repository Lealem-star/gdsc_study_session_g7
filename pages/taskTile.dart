import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
//import 'package:provider/provider.dart';
//import 'package:todo_app/pages/taskprovider.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final DateTime date;
  final String description;
  const TaskTile({
   // super.key,
   Key? key,
    required this.title,
    required this.description,
    required this.date,
  }): super(key: key);

  String get singleChar {
    return title.isNotEmpty ? title[0] : '';
  }

  @override
  Widget build(BuildContext context) {
    //final taskProvider = Provider.of<TaskProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 242, 240, 240),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(title,style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),), Text(DateFormat('yyyy-MM-dd-HH').format(date).toString(),style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),)],
            ),
            SizedBox(height: 3,),
            Row(
              children: [
                Text(singleChar.toUpperCase(),style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
