import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';
import 'card_templates.dart';

class NorthEastStreets extends StatefulWidget {
  @override
  _NorthEastStreetsState createState() => _NorthEastStreetsState();
}

class _NorthEastStreetsState extends State<NorthEastStreets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('walkable northeast streets\nwith bars-restaurants'),
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
              modaCenter(),
              rockyButteDrive(),
              rockyButteHike(),
              cardTwo('NE Alberta, 9th to 32nd','https://www.google.com/maps/@45.5591051,-122.6447643,16z','alberta'),
              cardTwo('NE Freemont, 40th to 51st','https://www.google.com/maps/@45.5483097,-122.6163709,17z','freemont'),
              cardTwo('NE Sandy, 40th to 75th','https://www.google.com/maps/@45.5422545,-122.6045048,16z','sandy'),
              cardTwo('NE Weidler-Broadway, MLK to 28th','https://www.google.com/maps/@45.534722,-122.6490053,16z','weidler-broadway'),
            ],
          ),
        ),
      ),
    );
  }
}
