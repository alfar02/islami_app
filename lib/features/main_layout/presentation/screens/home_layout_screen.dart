import 'package:flutter/material.dart';
class MainLayoutScreen extends StatefulWidget {
  const MainLayoutScreen({super.key});

  @override
  State<MainLayoutScreen> createState() => _MainLayoutScreenState();
}

class _MainLayoutScreenState extends State<MainLayoutScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const Center(child: Text('صفحة القرآن')), 
    const Center(child: Text('صفحة التسبيح')),
    const Center(child: Text('صفحة الحديث')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'القرآن'),
          BottomNavigationBarItem(icon: Icon(Icons.fingerprint), label: 'تسبيح'),
          BottomNavigationBarItem(icon: Icon(Icons.auto_stories), label: 'حديث'),
        ],
      ),
    );
  }
}