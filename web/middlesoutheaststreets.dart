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
              cardTwo('NE Glisan from 22nd to 30th','https://www.google.com/maps/@45.5265333,-122.6390832,18z','glisan'),
              cardTwo('East Burnside from Grand Ave to 32nd','https://www.google.com/maps/@45.5229846,-122.6464803,16z','burnside'),
              cardTwo('SE Morrison-Belmont from Grand Ave to 11th','https://www.google.com/maps/@45.5168686,-122.6573149,18z','morrison-belmont'),
              cardTwo('SE Belmont from 23rd to 47th','https://www.google.com/maps/@45.5164842,-122.6281218,16z','belmont'),
              cardTwo('SE Hawthorne from 9th to 49th','https://www.google.com/maps/@45.5119538,-122.6358274,15z','hawthorne'),
              cardTwo('SE Division between 10th and 50th','https://www.google.com/maps/@45.5047459,-122.634429,15z','division'),
              mtTabor(),
            ],
          ),
        ),
      ),
    );
  }
}
