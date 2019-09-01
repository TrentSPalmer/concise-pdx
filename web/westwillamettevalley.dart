import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'card_templates.dart';

class WestWillametteValley extends StatefulWidget {
  @override
  _WestWillametteValleyState createState() => _WestWillametteValleyState();
}

class _WestWillametteValleyState extends State<WestWillametteValley> {
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
