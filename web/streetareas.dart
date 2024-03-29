import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'middlesoutheaststreets.dart';
import 'northeaststreets.dart';
import 'northweststreets.dart';
import 'northstreets.dart';
import 'stjohnsstreets.dart';
import 'sellwoodstreets.dart';
import 'smalltowns.dart';
import 'southwest.dart';
import 'card_templates.dart';
import 'concisepdx.dart';

class StreetAreas extends StatefulWidget {
  @override
  _StreetAreasState createState() => _StreetAreasState();
}

class _StreetAreasState extends State<StreetAreas> {
  void initState() {
    html.window.history.pushState("","walkable-street-areas","/walkable-street-areas.html");
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ConcisePDX()));
              },
            );
          }
        ), 
        title: Text(
            'walkable-street-areas\nwith bars-restaurants',
          ),
        centerTitle: true,
        backgroundColor: navy,
      ),
      backgroundColor: peacockBlue,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 6.0,),
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MiddleSouthEastStreets()));
                },
                child: cardOne('Middle SouthEast'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SellwoodStreets()));
                },
                child: cardOne('Sellwood'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NorthEastStreets()));
                },
                child: cardOne('NorthEast'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NorthStreets()));
                },
                child: cardOne('North'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StJohnsStreets()));
                },
                child: cardOne('St John\'s'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NorthWestStreets()));
                },
                child: cardOne('NorthWest'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SouthWestStreets()));
                },
                child: cardOne('SouthWest'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SmallTowns()));
                },
                child: cardOne('Small Towns in the Area'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
