import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'card_templates.dart';
import 'prebuildcards.dart';

class EastWillametteValley extends StatefulWidget {
  @override
  _EastWillametteValleyState createState() => _EastWillametteValleyState();
}

class _EastWillametteValleyState extends State<EastWillametteValley> {
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
              silverFalls(),
              convenienceCardOne(
                'https://en.wikipedia.org/wiki/Oregon_Garden',
                'oregon-garden',
                'Silverton is convenient for a visit to Oregon Garden',
                'https://www.google.com/maps/@44.9927687,-122.7935883,16z',
                'oregon-garden-map'
              ),
              cardTwo('Water and First in Downtown Silverton','https://www.google.com/maps/@45.0052266,-122.7825282,17z','water-first'),
              cardTwo('Downtown Mt Angel is famous for German Food','https://www.google.com/maps/@45.0696714,-122.7991836,17z','downtown-mtangel'),
            ],
          ),
        ),
      ),
    );
  }
}
