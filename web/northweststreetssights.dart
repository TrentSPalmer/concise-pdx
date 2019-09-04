import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'card_templates.dart';
import 'prebuildcards.dart';
import 'washingtonpark.dart';

class NorthWestStreetsSights extends StatefulWidget {
  @override
  _NorthWestStreetsSightsState createState() => _NorthWestStreetsSightsState();
}

class _NorthWestStreetsSightsState extends State<NorthWestStreetsSights> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('northwest-pdx-sights'),
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
              macleayParkPittockMansion(),
              convenienceCardOne(
                'https://en.wikipedia.org/wiki/Providence_Park',
                'providence-park',
                'This area of town is convenient for a football, baseball, or soccer game at Providence park',
                'https://www.google.com/maps/@45.521389,-122.691667,17z',
                'providence-park-map'
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => WashingtonPark()));
                },
                child: cardOne('Visit the Zoo, Rose Garden, Hoyt Arboretum, Pittock Mansion, and Japanese Garden at WashingtonPark.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
