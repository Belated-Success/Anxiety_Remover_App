import 'package:flutter/material.dart';

BottomAppBar bottomAppBarWidget(currentIndex, onTapped, context) {
  return BottomAppBar(
    shape: const CircularNotchedRectangle(),
    clipBehavior: Clip.antiAlias,
    notchMargin: 5,
    child: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.home,
            ),
            label: 'Home',
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.timer),
            label: 'Routine',
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.email,
              size: 0,
            ),
            label: '',
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.contacts),
            label: 'Contacts',
            backgroundColor: Theme.of(context).primaryColor,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ]),
  );
}