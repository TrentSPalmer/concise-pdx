import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'card_templates.dart';
import 'washingtonstate.dart';

class WashingtonHiking extends StatefulWidget {
  @override
  _WashingtonHikingState createState() => _WashingtonHikingState();
}

class _WashingtonHikingState extends State<WashingtonHiking> {
  void initState() {
    html.window.history.pushState("","washington-hiking","/washington-hiking.html");
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WashingtonState()));
              },
            );
          }
        ), 
        title: Text('washington-hiking'),
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
              infoCard('Hike at the Washington Coast.','https://www.oregonhikers.org/field_guide/Washington_Coast_Hikes','a'),
              infoCard('Hike South West Washington.','https://www.oregonhikers.org/field_guide/Southwest_Washington_Hikes','b'),
            ],
          ),
        ),
      ),
    );
  }
}
