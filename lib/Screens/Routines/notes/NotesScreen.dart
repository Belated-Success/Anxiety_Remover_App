import 'package:flutter/material.dart';
import 'package:negi/styles/text.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              'Your Notes,',
              style: textStyleBlack(FontWeight.w400, 25.0),
            ),
            const SizedBox(
              height: 50,
            ),
            Wrap(
              children: [
                card('Text ', Colors.greenAccent.shade200, () {
                  Navigator.pushNamed(context, '/textNotes');
                }),
                const SizedBox(
                  width: 20,
                ),
                card('Video', Colors.blueGrey.withOpacity(0.5), () {
                  Navigator.pushNamed(context, '/videoNotes');
                }),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: card('Audio', Colors.blue.withOpacity(0.7), () {
                    Navigator.pushNamed(context, '/audioNotes');
                  }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget card(title, color, onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 150,
        width: 150,
        margin: const EdgeInsets.all(5),
        child: Center(
          child: Text(
            title,
            style: textStyleWhite(
              FontWeight.normal,
              22.0,
            ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
      ),
    );
  }
}