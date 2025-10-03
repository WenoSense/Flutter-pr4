import 'package:flutter/material.dart';
import 'package:pr4/screens/buses_screen.dart';
import 'package:pr4/screens/routes_screen.dart';
import 'package:pr4/screens/drivers_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Практическая работа №3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MainScreen(),
    );
  }
}


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    BusesScreen(),
    RoutesScreen(),
    DriversScreen(),
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
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bus),
            label: 'Автобусы',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.route),
            label: 'Маршруты',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Водители',
          ),
        ],
      ),
    );
  }
}
