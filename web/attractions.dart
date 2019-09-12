import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'card_templates.dart';
import 'washingtonpark.dart';
import 'mounthood.dart';
import 'columbiagorge.dart';
import 'oregoncoast.dart';
import 'washingtonstate.dart';
import 'eastwillamettevalleysights.dart';
import 'westwillamettevalleysights.dart';

class Attractions extends StatefulWidget {
  @override
  _AttractionsState createState() => _AttractionsState();
}

class _AttractionsState extends State<Attractions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'attractions',
          ),
        centerTitle: true,
        backgroundColor: navy,
      ),
      backgroundColor: peacockBlue,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 6.0,),
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => WestWillametteValleySights()));
                },
                child: cardOne('Sight-See in the West Willamette Valley.'),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => EastWillametteValleySights()));
                },
                child: cardOne('Sight-See in the East Willamette Valley.'),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => MountHood()));
                },
                child: cardOne('Camp, Hike, or Sight-See on Mt Hood.'),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => OregonCoast()));
                },
                child: cardOne('Camp, Hike, or Sight-See on the Oregon Coast.'),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => ColumbiaGorge()));
                },
                child: cardOne('Camp, Hike, Cruise, or Sight-See in the Columbia River Gorge.'),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => WashingtonPark()));
                },
                child: cardOne('Visit the Zoo, Rose Garden, Hoyt Arboretum, Pittock Mansion, and Japanese Garden at WashingtonPark.'),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => WashingtonState()));
                },
                child: cardOne('Sight-See in Washington State.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
