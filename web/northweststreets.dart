import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'card_templates.dart';
import 'northweststreetssights.dart';
import 'streetareas.dart';

class NorthWestStreets extends StatefulWidget {
  @override
  _NorthWestStreetsState createState() => _NorthWestStreetsState();
}

class _NorthWestStreetsState extends State<NorthWestStreets> {
  void initState() {
    html.window.history.pushState("","northwest-streets","/northwest-streets.html");
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
        title: Text('walkable northwest streets\nwith bars-restaurants'),
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
              cardTwo('NW 23rd from Burnside to Thurman','https://www.google.com/maps/@45.5295226,-122.6984339,16z','23rd'),
              cardTwo('NW 21st from Burnside to Raleigh','https://www.google.com/maps/@45.5291143,-122.6945136,16z','21st'),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NorthWestStreetsSights()));
                },
                child: cardOne('As long as you\'re in NorthWest Portland.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
