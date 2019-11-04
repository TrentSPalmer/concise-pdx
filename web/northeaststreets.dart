import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'prebuildcards.dart';
import 'card_templates.dart';
import 'streetareas.dart';

class NorthEastStreets extends StatefulWidget {
  @override
  _NorthEastStreetsState createState() => _NorthEastStreetsState();
}

class _NorthEastStreetsState extends State<NorthEastStreets> {
  void initState() {
    html.window.history.pushState("","northeast-streets","/northeast-streets.html");
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
        title: Text('walkable northeast streets\nwith bars-restaurants'),
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
              modaCenter(),
              rockyButteDrive(),
              rockyButteHike(),
              cardTwo('NE Alberta from 9th to 32nd','https://www.google.com/maps/@45.5591051,-122.6447643,16z','alberta'),
              cardTwo('NE Freemont from 40th to 51st','https://www.google.com/maps/@45.5483097,-122.6163709,17z','freemont'),
              cardTwo('NE Sandy from 40th to 75th','https://www.google.com/maps/@45.5422545,-122.6045048,16z','sandy'),
              cardTwo('NE Weidler-Broadway from MLK to 28th','https://www.google.com/maps/@45.534722,-122.6490053,16z','weidler-broadway'),
            ],
          ),
        ),
      ),
    );
  }
}
