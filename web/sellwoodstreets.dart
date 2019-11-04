import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'card_templates.dart';
import 'streetareas.dart';

class SellwoodStreets extends StatefulWidget {
  @override
  _SellwoodStreetsState createState() => _SellwoodStreetsState();
}

class _SellwoodStreetsState extends State<SellwoodStreets> {
  void initState() {
    html.window.history.pushState("","sellwood-streets","/sellwood-streets.html");
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StreetAreas()));
              },
            );
          }
        ), 
        title: Text('walkable sellwood streets\nwith bars-restaurants'),
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
              convenienceCardOne(
                'https://www.portlandoregon.gov/parks/finder/index.cfm?&action=ViewPark&propertyid=27',
                'crystal-springs-rhododendron-garden',
                'This area of town is convenient for Crystal Springs Rhododendron Garden',
                'https://www.google.com/maps/@45.479722,-122.635556,17z',
                'crystal-springs-rhododendron-garden-map'
              ),
              convenienceCardOne(
                'https://www.alltrails.com/trail/us/oregon/springwater-on-the-wilamette-north-woodland-and-bluff-trail-loop',
                'springwater-on-the-willamette-trail',
                'This area of town is near the Springwater on the Willamette Trail',
                'https://www.google.com/maps/@45.4762318,-122.6616333,16z',
                'springwater-on-the-willamette-trail-map'
              ),
              cardTwo('SE Woodstock from 42nd to 50th','https://www.google.com/maps/@45.4791687,-122.6158324,18z','woodstock'),
              cardTwo('SE Milwaukie from Tolman to Knapp','https://www.google.com/maps/@45.4741145,-122.6483169,17z','milwaukie'),
              cardTwo('SE 13th from Umatilla to Malden','https://www.google.com/maps/@45.4662368,-122.6532889,17z','13th'),
            ],
          ),
        ),
      ),
    );
  }
}
