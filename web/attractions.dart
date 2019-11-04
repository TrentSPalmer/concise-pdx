import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'card_templates.dart';
import 'washingtonpark.dart';
import 'mounthood.dart';
import 'columbiagorge.dart';
import 'oregoncoast.dart';
import 'washingtonstate.dart';
import 'centraloregon.dart';
import 'eastwillamettevalleysights.dart';
import 'westwillamettevalleysights.dart';
import 'concisepdx.dart';

class Attractions extends StatefulWidget {
  @override
  _AttractionsState createState() => _AttractionsState();
}

class _AttractionsState extends State<Attractions> {
  void initState() {
    html.window.history.pushState("","must-see-and-do","/must-see-and-do.html");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ConcisePDX()));
              },
            );
          }
        ), 
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
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WestWillametteValleySights()));
                },
                child: cardOne('Sight-See in the West Willamette Valley.'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => EastWillametteValleySights()));
                },
                child: cardOne('Sight-See in the East Willamette Valley.'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MountHood()));
                },
                child: cardOne('Camp, Hike, or Sight-See on Mt Hood.'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OregonCoast()));
                },
                child: cardOne('Camp, Hike, or Sight-See on the Oregon Coast.'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ColumbiaGorge()));
                },
                child: cardOne('Camp, Hike, Cruise, or Sight-See in the Columbia River Gorge.'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WashingtonPark()));
                },
                child: cardOne('Visit the Zoo, Rose Garden, Hoyt Arboretum, Pittock Mansion, and Japanese Garden at WashingtonPark.'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WashingtonState()));
                },
                child: cardOne('Sight-See in Washington State.'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CentralOregon()));
                },
                child: cardOne('Sight-See in Central and Eastern Oregon.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
