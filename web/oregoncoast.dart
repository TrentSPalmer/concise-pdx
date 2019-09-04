import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'card_templates.dart';
import 'prebuildcards.dart';

class OregonCoast extends StatefulWidget {
  @override
  _OregonCoastState createState() => _OregonCoastState();
}

class _OregonCoastState extends State<OregonCoast> {
  String _coastString = 'These is not a single State Park Campground on the Oregon Coast that is not Amazing!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OregonCoast'),
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
              fortStevens(),
              tillamookAirMuseum(),
              oregonCoastAquarium(),
              seaLionCaves(),
              infoCard(_coastString,'https://oregonstateparks.org/index.cfm?do=visit.dsp_find','a'),
              infoCard('Watch Whales on the Oregon Coast','https://oregonstateparks.org/index.cfm?do=thingstodo.dsp_whalewatching','b'),
              infoCard('Hike at the Oregon Coast.','https://www.oregonhikers.org/field_guide/Oregon_Coast_Hikes','c'),
            ],
          ),
        ),
      ),
    );
  }
}
