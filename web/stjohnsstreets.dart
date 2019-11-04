import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'card_templates.dart';
import 'streetareas.dart';

class StJohnsStreets extends StatefulWidget {
  @override
  _StJohnsStreetsState createState() => _StJohnsStreetsState();
}

class _StJohnsStreetsState extends State<StJohnsStreets> {
  void initState() {
    html.window.history.pushState("","stjohns-streets","/stjohns-streets.html");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StreetAreas()));
              },
            );
          }
        ), 
        title: Text('walkable stjohns streets\nwith bars-restaurants'),
        centerTitle: true,
        backgroundColor: navy,
        actions: <Widget>[
          Home(context),
        ],
      ),
      backgroundColor: peacockBlue,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 6.0,),
          child: Column(
            children: <Widget>[
              convenienceCardOne(
                'https://en.wikipedia.org/wiki/Cathedral_Park_(Portland,_Oregon)',
                'Cathedral Park',
                'This area of town is convenient for a visit to Cathedral Park under the St John\'s Bridge',
                'https://www.google.com/maps/@45.5883,-122.75799,17z',
                'cathedral-park'
              ),
              cardTwo('N Lombard from Richmond to St Louis','https://www.google.com/maps/@45.5902882,-122.7536259,17z','lombard-ivanhoe'),
            ],
          ),
        ),
      ),
    );
  }
}
