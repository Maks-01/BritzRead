
import 'package:flutter/material.dart';
import 'screens/books_screen.dart';
import 'screens/training_screen.dart';
import 'screens/modes_screen.dart';
import 'screens/progress_screen.dart';

void main() => runApp(const BlitzReadApp());

class BlitzReadApp extends StatelessWidget {
  const BlitzReadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BlitzRead',
      theme: ThemeData.dark(),
      home: const BlitzReadHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BlitzReadHome extends StatefulWidget {
  const BlitzReadHome({super.key});

  @override
  State<BlitzReadHome> createState() => _BlitzReadHomeState();
}

class _BlitzReadHomeState extends State<BlitzReadHome> {
  int _selectedIndex = 0;

  static final List<Widget> _screens = <Widget>[
    BooksScreen(),
    TrainingScreen(),
    ModesScreen(),
    ProgressScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.cyanAccent,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Книги'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Обучение'),
          BottomNavigationBarItem(icon: Icon(Icons.flash_on), label: 'Режимы'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Прогресс'),
        ],
      ),
    );
  }
}
