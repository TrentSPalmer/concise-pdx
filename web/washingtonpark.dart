import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'prebuildcards.dart';
import 'card_templates.dart';
import 'northweststreetssights.dart';
import 'attractions.dart';

class WashingtonPark extends StatefulWidget {
  @override
  _WashingtonParkState createState() => _WashingtonParkState();
}

class _WashingtonParkState extends State<WashingtonPark> {
  void initState() {
    html.window.history.pushState("","washington-park","/washington-park.html");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('washingtonpark'),
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
              oregonZoo(),
              japaneseGarden(),
              roseGarden(),
              hoytArboretum(),
              pittockMansion(),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NorthWestStreetsSights()));
                },
                child: cardOne('(Back to as long as you are in NW Portland)'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Attractions()));
                },
                child: cardOne('(Back to must see and do'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
