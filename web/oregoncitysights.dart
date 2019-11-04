import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'card_templates.dart';
import 'prebuildcards.dart';
import 'oregoncity.dart';

class OregonCitySights extends StatefulWidget {
  @override
  _OregonCitySightsState createState() => _OregonCitySightsState();
}

class _OregonCitySightsState extends State<OregonCitySights> {
  void initState() {
    html.window.history.pushState("","oregon-city-sights","/oregon-city-sights.html");
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OregonCity()));
              },
            );
          }
        ), 
        title: Text('oregon-city-sights'),
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
              mcgloughlinPromenade(),
              convenienceCardOne(
                'https://www.nps.gov/fova/learn/historyculture/mcloughlin-house.htm',
                'mcloughlin-house',
                'History Buffs may want to visit the McGloughlin House',
                'https://www.google.com/maps/@45.3571259,-122.6056864,19z',
                'mcloughlin-house-map'
              ),
              convenienceCardOne(
                'https://en.wikipedia.org/wiki/Willamette_Falls',
                'willamette-falls',
                'See Willamette Falls in Oregon City',
                'https://www.google.com/maps/@45.35239,-122.61763,16z',
                'willamette-falls-map'
              ),
              cardTwo('See Willamette Falls from turnout on I-205 NB','https://goo.gl/maps/kMaYQafxdtHbVqFr5','main'),
              cardTwo('See Willamette Falls from turnout on 99E','https://www.google.com/maps/@45.351922,-122.6141362,21z','main'),
            ],
          ),
        ),
      ),
    );
  }
}
