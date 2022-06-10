import 'package:flutter/material.dart';
import 'package:negi/styles/text.dart';

class AudioNotesPage extends StatefulWidget {
  const AudioNotesPage({Key? key}) : super(key: key);

  @override
  _AudioNotesPageState createState() => _AudioNotesPageState();
}

class _AudioNotesPageState extends State<AudioNotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio Notes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Recordings,',
              style: textStyleBlack(FontWeight.w400, 25.0),
            ),
            const SizedBox(height: 20),
            card("remember", "2:30", context),
            card("myself", "0:52", context),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget card(title, time, context) {
    return ListTile(
        leading: const Icon(
          Icons.play_circle_fill,
          size: 32.0,
        ),
        title: Text('$title'),
        subtitle: LinearProgressIndicator(
          value: 0,
          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.5),
        ),
        trailing: Text('$time'));
  }
}