import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'card_templates.dart';
import 'prebuildcards.dart';

class Silverton extends StatefulWidget {
  @override
  _SilvertonState createState() => _SilvertonState();
}

class _SilvertonState extends State<Silverton> {
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
            ],
          ),
        ),
      ),
    );
  }
}
