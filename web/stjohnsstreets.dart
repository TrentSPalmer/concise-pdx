import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'card_templates.dart';

class StJohnsStreets extends StatefulWidget {
  @override
  _StJohnsStreetsState createState() => _StJohnsStreetsState();
}

class _StJohnsStreetsState extends State<StJohnsStreets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('walkable stjohns streets\nwith bars-restaurants'),
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
      body: Column(
        children: <Widget>[
          convenienceCardOne(
            'https://en.wikipedia.org/wiki/Cathedral_Park_(Portland,_Oregon)',
            'Cathedral Park',
            'This area of town is convenient for a visit to Cathedral Park under the St John\'s Bridge',
            'https://www.google.com/maps/@45.5883,-122.75799,17z',
            'cathedral-park'
          ),
          cardTwo('Lombard-Ivanhoe','https://example.com','lombard-ivanhoe'),
        ],
      ),
    );
  }
}
