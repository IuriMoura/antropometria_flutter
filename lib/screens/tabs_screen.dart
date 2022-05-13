import 'package:flutter/material.dart';
import 'package:antropometria_flutter/screens/historico_screen.dart';
import 'package:antropometria_flutter/screens/main_screen.dart';
import 'package:antropometria_flutter/screens/main_screen.dart';
import 'package:antropometria_flutter/components/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _indexSelectedScreen = 0;

  List<Widget> _screens = [HomeScreen(), HistoricoScreen()];

  _selectScreen(int index) {
    setState(() {
      _indexSelectedScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculos Antropometricos')),
      body: _screens[_indexSelectedScreen],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Colors.white,
        currentIndex: _indexSelectedScreen,
        backgroundColor: Theme.of(context).colorScheme.primary,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Historico'),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
