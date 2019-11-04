import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'prebuildcards.dart';
import 'card_templates.dart';
import 'attractions.dart';

class WestWillametteValleySights extends StatefulWidget {
  @override
  _WestWillametteValleySightsState createState() => _WestWillametteValleySightsState();
}

class _WestWillametteValleySightsState extends State<WestWillametteValleySights> {
  void initState() {
    html.window.history.pushState("","west-willamette-valley-sights","/west-willamette-valley-sights.html");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    String _wineTastingString = 'Newberg-Dundee is Oregon\'s biggest wine tasting region.';
    _wineTastingString += ' But be careful out there, because no one wants to deal with a bunch';
    _wineTastingString += ' of drunk jerks in Newberg at 1 or 2 am.';
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
        title: Text('west willamette valley sights'),
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
              cardThree(_wineTastingString),
              convenienceCardOne(
                'https://www.oregonwines.com/wineries/by-region/dundee-newberg-wineries/',
                'newberg-dundee-wine',
                'Some Newberg-Dundee Wine Tasting Info',
                'https://www.google.com/maps/@45.3046966,-123.0034138,12z',
                'newberg-dundee-wine-map'
              ),
              spruceGoose(),
            ],
          ),
        ),
      ),
    );
  }
}
