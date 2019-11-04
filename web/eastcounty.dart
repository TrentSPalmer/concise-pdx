import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'card_templates.dart';
import 'smalltowns.dart';

class EastCounty extends StatefulWidget {
  @override
  _EastCountyState createState() => _EastCountyState();
}

class _EastCountyState extends State<EastCounty> {
  void initState() {
    html.window.history.pushState("","east-county","/east-county.html");
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SmallTowns()));
              },
            );
          }
        ), 
        title: Text('east county'),
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
              cardTwo('Main Ave between Powell and 5th in Downtown Gresham','https://www.google.com/maps/@45.4996431,-122.4304628,17z','downtown-gresham'),
              cardTwo('History Columbia River Hwy in Downtown Troutdale','https://www.google.com/maps/@45.540483,-122.3881627,18z','downtown-troutdale'),
            ],
          ),
        ),
      ),
    );
  }
}
