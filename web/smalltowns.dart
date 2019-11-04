import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'card_templates.dart';
import 'eastwillamettevalley.dart';
import 'westwillamettevalley.dart';
import 'eastcounty.dart';
import 'streetareas.dart';

class SmallTowns extends StatefulWidget {
  @override
  _SmallTownsState createState() => _SmallTownsState();
}

class _SmallTownsState extends State<SmallTowns> {
  void initState() {
    html.window.history.pushState("","small-town-streets","/small-town-streets.html");
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StreetAreas()));
              },
            );
          }
        ), 
        title: Text('walkable small-towns\nwith bars-restaurants'),
        centerTitle: true,
        backgroundColor: navy,
        actions: <Widget>[
          Home(context),
        ],
      ),
      backgroundColor: peacockBlue,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 6.0,),
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => EastWillametteValley()));
                },
                child: cardOne('East Willamette Valley'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WestWillametteValley()));
                },
                child: cardOne('West Willamette Valley'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => EastCounty()));
                },
                child: cardOne('East County'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
