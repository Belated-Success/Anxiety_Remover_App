import 'package:flutter/material.dart';
import 'package:negi/styles/text.dart';

class MdicinePage extends StatelessWidget {
  const MdicinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              'Here are your pills,',
              style: textStyleBlack(FontWeight.w500, 25.0),
            ),
            const SizedBox(
              height: 30,
            ),
            div(context),
            const SizedBox(
              height: 20,
            ),
            div2(context),
          ],
        ),
      ),
    );
  }

  Widget div(context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '08:00',
            style: textStyleBlack(FontWeight.w300, 20.0),
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              Icons.medical_services_rounded,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text('Aspirin'),
            subtitle: const Text('Take 1 tablet'),
          ),
          ListTile(
            leading: Icon(
              Icons.water_sharp,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text('Water'),
            subtitle: const Text('2 Glasses'),
          ),
        ],
      ),
    );
  }

  Widget div2(context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '09:55',
            style: textStyleBlack(FontWeight.w300, 20.0),
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              Icons.medical_services_rounded,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text('Omega3'),
            subtitle: const Text('Take 2 tablet'),
          ),
          ListTile(
            leading: Icon(
              Icons.water_sharp,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text('Water'),
            subtitle: const Text('2 Glasses'),
          ),
        ],
      ),
    );
  }
}