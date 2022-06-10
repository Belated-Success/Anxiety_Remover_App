import 'package:flutter/material.dart';
import 'package:negi/styles/text.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              'Contacts',
              style: textStyleBlack(FontWeight.w400, 22.0),
            ),
            const SizedBox(
              height: 30,
            ),
            Wrap(
              children: [
                card(
                    'https://wallpaperaccess.com/full/1655678.jpg',
                    'Emily',
                    'Daughter'),
                card(
                    'https://static.wikia.nocookie.net/stick-fighters/images/5/5f/Vincent_Universe_--_anime_design_1.png/revision/latest/scale-to-width-down/250?cb=20190225083458',
                    'Elon',
                    'Brother'),
                card(
                    'https://i.pinimg.com/236x/cc/26/c1/cc26c13a836eae1df2298e130a6c74b1.jpg',
                    'Julie',
                    'Mother'),
                card(
                    'https://cdn.anime-planet.com/characters/primary/minato-sahashi-1.jpg?t=1625783401',
                    'Jack',
                    'Father'),
              ],
            )
          ],
        ));
  }

  Widget card(image, name, who) {
    return InkWell(
      onTap: () async {
        debugPrint('clicked');

        await launch("tel:123456");
      },
      child: Container(
        width: 150,
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(
                1.0,
                1.0,
              ),
              blurRadius: 15.0,
              spreadRadius: 2.0,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    image,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Center(child: Text(name)),
              subtitle: Center(child: Text(who)),
            ),
          ],
        ),
      ),
    );
  }
}