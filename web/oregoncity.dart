import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'card_templates.dart';
import 'oregoncitysights.dart';

class OregonCity extends StatefulWidget {
  @override
  _OregonCityState createState() => _OregonCityState();
}

class _OregonCityState extends State<OregonCity> {
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
              cardTwo('Main St in Downtown Oregon City','https://www.google.com/maps/@45.3575898,-122.6072795,17z','main'),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => OregonCitySights()));
                },
                child: cardOne('As long as you\'re in Oregon City.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
