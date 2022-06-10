import 'package:flutter/material.dart';
import 'package:negi/Screens/Locations/LocationScreen.dart';

import 'Screens/HomeScreen.dart';
import 'Screens/Routines/medicines/MedicineScreen.dart';
import 'Screens/Routines/notes/AudioHome.dart';
import 'Screens/Routines/notes/NotesScreen.dart';
import 'Screens/Routines/notes/TextHome.dart';
import 'Screens/Routines/notes/VideoHome.dart';
import 'Screens/Routines/tasks/TasksScreen.dart';
import 'Screens/YouScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(95, 65, 165, 1), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color.fromRGBO(95, 65, 165, 1)),
      ),
      home: const MainPage(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/location': (context) => const LocationsPage(),
        '/notes': (context) => const NotesPage(),
        '/textNotes': (context) => const TextNotesPage(),
        '/videoNotes': (context) => const VideoNotesPage(),
        '/audioNotes': (context) => const AudioNotesPage(),
        '/you': (context) => const YouPage(),
        '/daily': (context) => const DailyTasksPage(),
        '/medicine': (context) => const MdicinePage(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}
