import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'card_templates.dart';

class SellwoodStreets extends StatefulWidget {
  @override
  _SellwoodStreetsState createState() => _SellwoodStreetsState();
}

class _SellwoodStreetsState extends State<SellwoodStreets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('walkable sellwood streets\nwith bars-restaurants'),
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
              cardTwo('Woodstock','https://example.com','woodstock'),
              convenienceCardOne(
                'https://www.portlandoregon.gov/parks/finder/index.cfm?&action=ViewPark&propertyid=27',
                'crystal-springs-rhododendron-garden',
                'This area of town is convenient for Crystal Springs Rhododendron Garden',
                'https://www.google.com/maps/@45.479722,-122.635556,17z',
                'crystal-springs-rhododendron-garden-map'
              ),
              cardTwo('Bybee','https://example.com','bybee'),
              cardTwo('Milwaukie','https://example.com','milwaukie'),
              convenienceCardOne(
                'https://www.alltrails.com/trail/us/oregon/springwater-on-the-wilamette-north-woodland-and-bluff-trail-loop',
                'springwater-on-the-willamette-trail',
                'This area of town is near the Springwater on the Willamette Trail',
                'https://www.google.com/maps/@45.4762318,-122.6616333,16z',
                'springwater-on-the-willamette-trail-map'
              ),
              cardTwo('SE 13th','https://example.com','13th'),
              cardTwo('Tacoma','https://example.com','tacoma'),
            ],
          ),
        ),
      ),
    );
  }
}
