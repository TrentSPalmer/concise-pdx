import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'card_templates.dart';

class EastCounty extends StatefulWidget {
  @override
  _EastCountyState createState() => _EastCountyState();
}

class _EastCountyState extends State<EastCounty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('walkable small-towns\nwith bars-restaurants'),
        centerTitle: true,
        backgroundColor: navy,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
          ),
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
