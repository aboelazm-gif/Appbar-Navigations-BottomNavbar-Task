import 'package:flutter/material.dart';
import 'DetailsScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int currIndex = 0;
  final List<Widget> pages = [
    Center(child: Text('Home Page', style: TextStyle(fontSize: 40))),
    Center(child: Text('Profile Page', style: TextStyle(fontSize: 40))),
    Center(child: Text('Settings Page', style: TextStyle(fontSize: 40))),
  ];

  void TappedItem(int index) {
    setState(() {
      currIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Navigation Demo'),
      ),
      body: pages[currIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currIndex,
        onTap: TappedItem,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(),
            ),
          );
        },
        child: Icon(Icons.arrow_forward),
        tooltip: 'Go to Details',
      ),
    );
  }
}
