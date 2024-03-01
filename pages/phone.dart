import 'package:http/http.dart' as http;
import 'dart:io';

import 'package:flutter/material.dart';

class PhoneScreen extends StatelessWidget {
  final List<Book> books = [
    Book(
      'Book 1',
      'Author 1',
      'Description 1',
      'lib/images/download (3).jfif',
    ),
    Book(
      'Book 2',
      'Author 2',
      'Description 2',
      'lib/images/download (4).jfif',
    ),
    Book(
      'Book 3',
      'Author 3',
      'Description 3',
      'lib/images/download (5).jfif',
    ),
    Book(
      'Book 4',
      'Author 4',
      'Description 4',
      'lib/images/download (2).jfif',
    ),
    Book(
      'Book 5',
      'Author 5',
      'Description 5',
      'lib/images/download (1).jfif',
    ),
    Book(
      'Book 6',
      'Author 6',
      'Description 6',
      'lib/images/download (9).jfif',
    ),
    Book(
      'Book 7',
      'Author 7',
      'Description 7',
      'lib/images/Alchemist.jfif',
    ),
    Book(
      'Book 8',
      'Author 8',
      'Description 9',
      'lib/images/download Cosmos.jfif',
    ),
  ];

  Future<void> downloadFile(String url, String savePath) async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final file = File(savePath);
      await file.writeAsBytes(response.bodyBytes);
      print('File downloaded successfully');
    } else {
      print('Failed to download file. Error: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.chevron_left),
            ),
          title: Text('Bookstore'),
        ),
        body: ListView.builder(
          itemCount: books.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.asset(
                books[index].imageUrl,
                width: 50,
                height: 50,
              ),
              title: Text(books[index].title),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(books[index].author),
                  SizedBox(height: 4),
                  Text(books[index].description),
                ],
              ),
              trailing: ElevatedButton(
                onPressed: () {
                  downloadFile(books[index].imageUrl, 'C:/Users/leale/OneDrive/Pictures');
                },
                child: Text('Download'),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Book {
  final String title;
  final String author;
  final String description;
  final String imageUrl;

  Book(this.title, this.author, this.description, this.imageUrl);
}