import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'card_templates.dart';
import 'northweststreetssights.dart';

class NorthWestStreets extends StatefulWidget {
  @override
  _NorthWestStreetsState createState() => _NorthWestStreetsState();
}

class _NorthWestStreetsState extends State<NorthWestStreets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('walkable northwest streets\nwith bars-restaurants'),
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
              cardTwo('NW 23rd, Burnside to Thurman','https://www.google.com/maps/@45.5295226,-122.6984339,16z','23rd'),
              cardTwo('NW 21st, Burnside to Raleigh','https://www.google.com/maps/@45.5291143,-122.6945136,16z','21st'),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => NorthWestStreetsSights()));
                },
                child: cardOne('As long as you\'re in NorthWest Portland.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
