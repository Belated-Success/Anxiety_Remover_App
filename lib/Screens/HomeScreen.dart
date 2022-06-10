import 'package:flutter/material.dart';
import 'package:negi/Screens/Main/MainScreen.dart';
import 'package:negi/Screens/Contact/ContactScreen.dart';
import 'package:negi/Screens/Settings/SettingsScreen.dart';
import 'package:negi/Widgets/home/BottomAppBarWidget.dart';
import 'package:negi/utils/notificationsApi.dart';

import 'Routines/RoutineScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final _children = [
    const HomePage(),
    const RoutinePage(),
    const RoutinePage(),
    const ContactsPage(),
    const SettingsPage(),
  ];

  void onTapped(int index) {
    if (index == 2) {
      index--;
    }

    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    NotificationsApi.initialize();
    listenNotifications();
    super.initState();
  }

  void listenNotifications() {
    NotificationsApi.onNotifications.stream.listen((event) {
      Navigator.pushNamed(context, '/medicine');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.location_on_outlined,
            size: 25,
          ),
          onPressed: () {
            debugPrint('unsrop');
            Navigator.pushNamed(context, '/location');
          },
        ),
        bottomNavigationBar:
        bottomAppBarWidget(_currentIndex, onTapped, context));
  }
}