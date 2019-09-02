import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'card_templates.dart';
import 'prebuildcards.dart';

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
              cardTwo('Main St in Downtown Oregon City','https://www.google.com/maps/@45.3575898,-122.6072795,17z','main'),
            ],
          ),
        ),
      ),
    );
  }
}
