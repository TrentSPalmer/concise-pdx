import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'prebuildcards.dart';
import 'card_templates.dart';
import 'attractions.dart';

class EastWillametteValleySights extends StatefulWidget {
  @override
  _EastWillametteValleySightsState createState() => _EastWillametteValleySightsState();
}

class _EastWillametteValleySightsState extends State<EastWillametteValleySights> {
  void initState() {
    html.window.history.pushState("","east-willamette-valley-sights","/east-willamette-valley-sights.html");
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Attractions()));
              },
            );
          }
        ), 
        title: Text('east willamette valley sights'),
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
              silverFalls(),
              oregonGarden(),
              convenienceCardOne(
                'https://oregonstateparks.org/index.cfm?do=parkPage.dsp_parkPage&parkId=151',
                'silver-falls',
                'Camp at Silver Falls State Park Oregon',
                'https://www.google.com/maps/@44.87752,-122.65513,15z',
                'silver-falls-map'
              ),
            ],
          ),
        ),
      ),
    );
  }
}
