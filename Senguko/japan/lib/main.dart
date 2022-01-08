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
import 'package:flutter/services.dart' show rootBundle;



void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      )
  );
}



class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text(
          'The Sengoku period',
          style: TextStyle(
            fontSize : 20.0,
            color: Colors.yellow,
            fontFamily: 'Source4',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
    body: Center (
      child: Column (
          children: <Widget> [
            Expanded(child:
            Container(
                color: Color.fromRGBO(117, 11, 15, 1),
                child: Image.asset('assets/images/battle.jpg')
            ),
            ),
          ]
      ),
    ),
  );
}