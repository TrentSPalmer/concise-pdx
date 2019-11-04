import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'card_templates.dart';
import 'streetareas.dart';

class SouthWestStreets extends StatefulWidget {
  @override
  _SouthWestStreetsState createState() => _SouthWestStreetsState();
}

class _SouthWestStreetsState extends State<SouthWestStreets> {
  void initState() {
    html.window.history.pushState("","southwest-streets","/southwest-streets.html");
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
        title: Text('walkable sw streets\nwith bars-restaurants'),
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
                'https://en.wikipedia.org/wiki/Willamette_Shore_Trolley',
                'willamette-trolley',
                'Lake Oswego is convenient for an excursion on the Willamette Shore Trolley',
                'https://www.google.com/maps/@45.4180967,-122.6629502,20z',
                'willamette-trolley-map'
              ),
              cardTwo('Downtown Lake Oswego','https://www.google.com/maps/@45.4167125,-122.6660073,16z','lake-oswego'),
              cardTwo('Capitol Highway in Multnomah Village from 31st to 38th','https://www.google.com/maps/@45.4685132,-122.7132439,18z','multnomah-village'),
            ],
          ),
        ),
      ),
    );
  }
}
