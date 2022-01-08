import 'package:flutter/material.dart';
import 'package:untitled/navigation_drawer_widget.dart';
import 'package:untitled/intropage.dart';
import 'package:untitled/sengoku.dart';
import 'package:untitled/unifiers.dart';
import 'package:untitled/oda.dart';
import 'package:untitled/toyotomi.dart';
import 'package:untitled/tokugawa.dart';
import 'package:untitled/conclusion.dart';
import 'package:untitled/gallery.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromRGBO(117, 11, 15, 1),

        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 12),
            buildMenuItems(
              text: 'Introduction',
                onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox (height :12),
            Divider(color: Colors.white70),
            const SizedBox (height :12),
            buildMenuItems(
                text: 'The Sengoku Ordeal',
                onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox (height :12),
            Divider(color: Colors.white70),
            const SizedBox (height :12),
            buildMenuItems(
                text: 'The Three unifiers',
                onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox (height :12),
            buildMenuItems(
                text: 'Oda Nobunaga    (1534-1582)',
                onClicked: () => selectedItem(context, 3),
            ),
            const SizedBox (height :12),
            buildMenuItems(
                text: 'Toyotimo Hideyoshi (1536-1598)',
                onClicked: () => selectedItem(context, 4),
            ),
            const SizedBox (height :12),
            buildMenuItems(
                text: 'Tokugawa Leyasu (154-1616)',
                onClicked: () => selectedItem(context, 5),
            ),
            const SizedBox (height :12),
            Divider(color: Colors.white70),
            const SizedBox (height :12),
            buildMenuItems(
                text: 'Conclusion',
                onClicked: () => selectedItem(context, 6),
            ),
            const SizedBox (height :12),
            Divider(color: Colors.white70),
            const SizedBox (height :12),
            buildMenuItems(
                text: 'Gallery',
                onClicked: () => selectedItem(context, 7),
            ),
          ],
        ),
      ),
    );
  }


  Widget buildMenuItems({
    required String text,
    VoidCallback? onClicked,
  }) {
    final color = Colors.yellow;
    final fontSize = 18.0;
    final hoverColor = Colors.white70;

    return ListTile(
      title: Text(text, style: TextStyle(color: color, fontSize : fontSize)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
    void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
      switch (index) {
        case 0:
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => intropage(),
          ));
          break;
        case 1:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => sengoku(),
          ));
          break;
          case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => unifiers(),
        ));
        break;
          case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => oda(),
        ));
        break;
          case 4:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => toyotomi(),
          ));
          break;
          case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => tokugawa(),
          ));
          break;
          case 6:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => conclusion(),
          ));
          break;
          case 7:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Gallery(),
          ));
          break;
      }
  }
}