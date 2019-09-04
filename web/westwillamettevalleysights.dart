import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';
import 'card_templates.dart';

class WestWillametteValleySights extends StatefulWidget {
  @override
  _WestWillametteValleySightsState createState() => _WestWillametteValleySightsState();
}

class _WestWillametteValleySightsState extends State<WestWillametteValleySights> {
  @override
  Widget build(BuildContext context) {
    String _wineTastingString = 'Newberg-Dundee is Oregon\'s biggest wine tasting region.';
    _wineTastingString += ' But be careful out there, because no one wants to deal with a bunch';
    _wineTastingString += ' of drunk jerks in Newberg at 1 or 2 am.';
    return Scaffold(
      appBar: AppBar(
        title: Text('west willamette valley sights'),
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
