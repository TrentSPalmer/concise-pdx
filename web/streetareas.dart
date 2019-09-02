import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'middlesoutheaststreets.dart';
import 'northeaststreets.dart';
import 'northweststreets.dart';
import 'northstreets.dart';
import 'stjohnsstreets.dart';
import 'sellwoodstreets.dart';
import 'smalltowns.dart';
import 'lakeoswego.dart';
import 'card_templates.dart';

class StreetAreas extends StatefulWidget {
  @override
  _StreetAreasState createState() => _StreetAreasState();
}

class _StreetAreasState extends State<StreetAreas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => MiddleSouthEastStreets()));
                },
                child: cardOne('Middle SouthEast'),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => SellwoodStreets()));
                },
                child: cardOne('Sellwood'),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => NorthEastStreets()));
                },
                child: cardOne('NorthEast'),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => NorthStreets()));
                },
                child: cardOne('North'),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => StJohnsStreets()));
                },
                child: cardOne('St John\'s'),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => NorthWestStreets()));
                },
                child: cardOne('NorthWest'),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => LakeOswegoStreets()));
                },
                child: cardOne('Lake Oswego'),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => SmallTowns()));
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
