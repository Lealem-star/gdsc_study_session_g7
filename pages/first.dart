import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app/pages/sec_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEE6F57),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: 300,
              color: const Color(0xFFEE6F57),
              width: double.infinity,
              child: Image.asset('lib/images/stickman.png')),
          SizedBox(
            height: 39,
            width: 256,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sec_Page()),
                );
              },
              child: Text('Get Started'),
            ),
          ),
        ],
      ),
    );
  }
}
