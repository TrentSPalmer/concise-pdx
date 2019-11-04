import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'card_templates.dart';
import 'oregoncitysights.dart';
import 'eastwillamettevalley.dart';

class OregonCity extends StatefulWidget {
  @override
  _OregonCityState createState() => _OregonCityState();
}

class _OregonCityState extends State<OregonCity> {
  void initState() {
    html.window.history.pushState("","oregon-city","/oregon-city.html");
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
        title: Text('walkable streets in Oregon City'),
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
              cardTwo('Main St in Downtown Oregon City','https://www.google.com/maps/@45.3575898,-122.6072795,17z','main'),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => OregonCitySights()));
                },
                child: cardOne('As long as you\'re in Oregon City.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
