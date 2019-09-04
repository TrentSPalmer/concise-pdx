import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';
import 'card_templates.dart';

class EastWillametteValleySights extends StatefulWidget {
  @override
  _EastWillametteValleySightsState createState() => _EastWillametteValleySightsState();
}

class _EastWillametteValleySightsState extends State<EastWillametteValleySights> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('east willamette valley sights'),
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
