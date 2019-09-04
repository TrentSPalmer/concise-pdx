import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'gorgecamping.dart';
import 'prebuildcards.dart';
import 'card_templates.dart';

class ColumbiaGorge extends StatefulWidget {
  @override
  _ColumbiaGorgeState createState() => _ColumbiaGorgeState();
}

class _ColumbiaGorgeState extends State<ColumbiaGorge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ColumbiaGorge'),
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
                'https://en.wikipedia.org/wiki/Historic_Columbia_River_Highway',
                'historic-highway',
                'Drive the Scenic Historic Columbia River Highway',
                'https://www.google.com/maps/@45.5483301,-122.1818084,14z',
                'historic-highway-map'
              ),
              multnomahFalls(),
              dogMountain(),
              angelsRest(),
              infoCard('More Hikes in the Columbia River Gorge.','https://www.oregonhikers.org/field_guide/Columbia_River_Gorge_Hikes','a'),
              infoCard('Wind Surf in the Columbia River Gorge.','https://www.travelportland.com/article/windsurfing-columbia-river-gorge/','b'),
              infoCard('Stern-Wheeler Cruises in the Columbia River Gorge.','https://en.wikipedia.org/wiki/Tourist_sternwheelers_of_Oregon','c'),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => GorgeCamping()));
                },
                child: cardOne('Camping in the Columbia River Gorge.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
