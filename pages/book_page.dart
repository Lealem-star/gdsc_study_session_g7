import 'package:flutter/material.dart';
import 'package:gdsc_bookstore/pages/phone.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.arrow_back),
            actions: [Icon(Icons.more_vert)],
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'lib/images/download Cosmos.jfif',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Cosmos'),
                  SizedBox(
                    height: 8,
                  ),
                  Text('Book by Carl Sagan | 2h 30m'),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          // Handle button tap
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: Center(child: Text('Free')),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      InkWell(
                        onTap: () {
                          // Handle button tap
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      InkWell(
                        onTap: () {
                          // Handle button tap
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: Icon(
                            Icons.share,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Text('Book Information'),
                SizedBox(
                  height: 4,
                ),
                Text(
                    'Cosmos is one of the bestselling science books of all time.In clear-eyed pros, Sagan reveales a jewel-liked blue world inhabited by a life form that is just ...'),
                SizedBox(
                  height: 4,
                ),
                Text('About Author'),
                SizedBox(
                  height: 4,
                ),
                Text(
                    'Cosmos is one of the bestselling science books of all time.In clear-eyed pros, Sagan reveales a jewel-liked blue world inhabited by a life form that is just ...'),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('User Review'),
                    Icon(Icons.chevron_right),
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                          'lib/images/photo_2024-02-26_01-21-28.jpg'),
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Text(
                          'Lealem Meseret',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('This is Amazing Books'),
                        Text('Oct 2023'),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Related Books'),
                    Icon(Icons.chevron_right),
                  ],
                ),
                Row(
                  children: [
                    Card(
                      child: Column(
                        children: [
                          Image.asset(
                            'lib/images/Alchemist.jfif',
                            fit: BoxFit.cover,
                          ),
                          Text('The Alchemist'),
                        ],
                      ),
                    ),
                    SizedBox(),
                    Card(
                      child: Column(
                        children: [
                          Image.asset(
                            'lib/images/download Cosmos.jfif',
                            fit: BoxFit.cover,
                          ),
                          Text('Cosmos'),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PhoneScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.all(24),
                    ),
                    child: Text(
                      'Start Reading',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
