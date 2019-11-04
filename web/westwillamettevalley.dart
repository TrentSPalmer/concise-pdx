import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'card_templates.dart';
import 'smalltowns.dart';

class WestWillametteValley extends StatefulWidget {
  @override
  _WestWillametteValleyState createState() => _WestWillametteValleyState();
}

class _WestWillametteValleyState extends State<WestWillametteValley> {
  void initState() {
    html.window.history.pushState("","west-willamette-valley","/west-willamette-valley.html");
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
        title: Text('west willamette valley'),
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
                'https://en.wikipedia.org/wiki/Evergreen_Aviation_%26_Space_Museum',
                'spruce-goose',
                'McMinnville is convenient for the Spruce Goose and Evergreen Aviation Museum',
                'https://www.google.com/maps/@45.2031571,-123.1454622,17z',
                'spruce-goose-map'
              ),
              cardTwo('Newberg-Dundee is a Wine-Tasting Destination','https://www.google.com/maps/@45.3007635,-122.9754037,17z','downtown-newberg'),
              cardTwo('3rd St in Downtown McMinnville','https://www.google.com/maps/@45.2099371,-123.1927857,16z','downtown-mcminnville'),
            ],
          ),
        ),
      ),
    );
  }
}
