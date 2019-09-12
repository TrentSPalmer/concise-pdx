import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'card_templates.dart';

class WashingtonHiking extends StatefulWidget {
  @override
  _WashingtonHikingState createState() => _WashingtonHikingState();
}

class _WashingtonHikingState extends State<WashingtonHiking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('washington-hiking'),
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
              infoCard('Hike at the Washington Coast.','https://www.oregonhikers.org/field_guide/Washington_Coast_Hikes','a'),
              infoCard('Hike South West Washington.','https://www.oregonhikers.org/field_guide/Southwest_Washington_Hikes','b'),
            ],
          ),
        ),
      ),
    );
  }
}
