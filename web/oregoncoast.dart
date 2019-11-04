import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'card_templates.dart';
import 'prebuildcards.dart';
import 'attractions.dart';

class OregonCoast extends StatefulWidget {
  @override
  _OregonCoastState createState() => _OregonCoastState();
}

class _OregonCoastState extends State<OregonCoast> {
  String _coastString = 'These is not a single State Park Campground on the Oregon Coast that is not Amazing!';

  void initState() {
    html.window.history.pushState("","oregon-coast","/oregon-coast.html");
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Attractions()));
              },
            );
          }
        ), 
        title: Text('OregonCoast'),
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
              fortStevens(),
              tillamookAirMuseum(),
              oregonCoastAquarium(),
              seaLionCaves(),
              infoCard(_coastString,'https://oregonstateparks.org/index.cfm?do=visit.dsp_find','a'),
              infoCard('Watch Whales on the Oregon Coast','https://oregonstateparks.org/index.cfm?do=thingstodo.dsp_whalewatching','b'),
              infoCard('Hike at the Oregon Coast.','https://www.oregonhikers.org/field_guide/Oregon_Coast_Hikes','c'),
            ],
          ),
        ),
      ),
    );
  }
}
