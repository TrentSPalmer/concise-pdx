import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'card_templates.dart';
import 'prebuildcards.dart';
import 'eastwillamettevalley.dart';

class Silverton extends StatefulWidget {
  @override
  _SilvertonState createState() => _SilvertonState();
}

class _SilvertonState extends State<Silverton> {
  void initState() {
    html.window.history.pushState("","silverton","/silverton.html");
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => EastWillametteValley()));
              },
            );
          }
        ), 
        title: Text('walkable streets in Silverton'),
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
              silverFalls(),
              oregonGarden(),
              cardTwo('Water and First in Downtown Silverton','https://www.google.com/maps/@45.0052266,-122.7825282,17z','water-first'),
            ],
          ),
        ),
      ),
    );
  }
}
