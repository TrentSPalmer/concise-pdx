import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'card_templates.dart';
import 'prebuildcards.dart';

class MiddleSouthEastStreets extends StatefulWidget {
  @override
  _MiddleSouthEastStreetsState createState() => _MiddleSouthEastStreetsState();
}

class _MiddleSouthEastStreetsState extends State<MiddleSouthEastStreets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('walkable middle se streets\nwith bars-restaurants'),
        centerTitle: true,
        backgroundColor: navy,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
          ),
        ],
      ),
      backgroundColor: peacockBlue,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 6.0,),
          child: Column(
            children: <Widget>[
              mtTabor(),
              cardTwo('Glisan','https://example.com','glisan'),
              cardTwo('Burnside','https://example.com','burnside'),
              cardTwo('Stark','https://example.com','stark'),
              cardTwo('Morrison-Belmont','https://example.com','morrison-belmont'),
              cardTwo('Hawthorne','https://example.com','hawthorne'),
              cardTwo('SE Division between 11th and 60th','https://www.google.com/maps/@45.5048718,-122.6326215,18z','division'),
            ],
          ),
        ),
      ),
    );
  }
}
