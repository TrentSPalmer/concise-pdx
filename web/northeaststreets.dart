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
              cardTwo('Killingsworth','https://example.com','killingsworth'),
              cardTwo('Alberta','https://example.com','alberta'),
              cardTwo('Freemont','https://example.com','freemont'),
              cardTwo('Sandy','https://example.com','sandy'),
              cardTwo('Weidler-Broadway','https://example.com','weidler-broadway'),
              modaCenter(),
              rockyButteDrive(),
              rockyButteHike(),
            ],
          ),
        ),
      ),
    );
  }
}
