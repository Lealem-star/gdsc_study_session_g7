import 'package:flutter/material.dart';
import 'package:gdsc_bookstore/pages/book_page.dart';
import 'package:gdsc_bookstore/pages/phone.dart';
import 'package:gdsc_bookstore/pages/setting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  List<Widget> _pages = [
    HomeScreen(),
    BookScreen(),
    SettingsScreen(),
    PhoneScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
//type: BottomNavigationBarType.fixed,
// backgroundColor: Colors.black,
//iconSize: 30,
//selectedFontSize: 50,
//unselectedFontSize: 40,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Book',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.pink,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              label: 'Phone',
              backgroundColor: Colors.yellow,
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildImageBox(String imagePath) {
    return Container(
      width: 100,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildCategoryBox(IconData icon, String text) {
    return Container(
      width: 120,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 242, 240, 240),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          SizedBox(width: 8),
          Text(text),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.sort),
          title: const Text('GDSC BOOKSTORE'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 245, 243, 243),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(),
                            hintText: 'Looking For ........',
                            suffixIcon: const Icon(Icons.search),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      //padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: const Icon(
                        Icons.tune,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Card(
                  color: Colors.blue,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Sep 23,2023',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.format_quote_sharp,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 32,
                            ),
                            Center(
                              child: Text(
                                'Today a reader',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 32,
                            ),
                            Icon(
                              Icons.format_quote_sharp,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Center(
                            child: Text(
                          'tomorrow a',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                        Center(
                            child: Text(
                          'LEADER',
                          style: TextStyle(
                            fontSize: 36,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.accessible,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(
                                Icons.accessible,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(
                                Icons.accessible,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildCategoryBox(Icons.healing, 'Health'),
                      _buildCategoryBox(Icons.science, 'Science'),
                      _buildCategoryBox(Icons.history, 'History'),
                      _buildCategoryBox(
                          Icons.pivot_table_chart_outlined, 'Technology'),
                      _buildCategoryBox(
                          Icons.airline_seat_flat_angled_rounded, 'Philosophy'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text('Recommendation'),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildImageBox('lib/images/download (1).jfif'),
                      _buildImageBox('lib/images/download (9).jfif'),
                      _buildImageBox('lib/images/download (2).jfif'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text('New'),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildImageBox('lib/images/download (3).jfif'),
                      _buildImageBox('lib/images/download (4).jfif'),
                      _buildImageBox('lib/images/download (5).jfif'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text('Trending'),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildImageBox('lib/images/download (6).jfif'),
                      _buildImageBox('lib/images/download (7).jfif'),
                      _buildImageBox('lib/images/download (8).jfif'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
