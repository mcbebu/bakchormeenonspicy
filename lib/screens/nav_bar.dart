import 'package:flutter/material.dart';
import 'package:flutter_bak/screens/ForumDiscussion.dart';
import 'package:flutter_bak/screens/home_page.dart';
import 'package:flutter_bak/screens/questionaire.dart';
import 'package:flutter_bak/theme/colors/light_colors.dart';
import 'package:flutter_bak/widgets/top_container.dart';

void main() => runApp(const NavBar());

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatefulWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    // List of pages to show
    HomePage(),
    Questionaire(),
    ForumDiscussion(),
    Questionaire(),
  ];
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Community',
      style: optionStyle,
    ),
    Text(
      'Index 2: Feedback',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: _pages[_selectedIndex],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: LightColors.kLightYellow2,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Community',
            backgroundColor: LightColors.kLightYellow2,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feedback),
            label: 'Feedback',
            backgroundColor: LightColors.kLightYellow2,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: LightColors.kLightYellow2,
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
