import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'card_templates.dart';

class LakeOswegoStreets extends StatefulWidget {
  @override
  _LakeOswegoStreetsState createState() => _LakeOswegoStreetsState();
}

class _LakeOswegoStreetsState extends State<LakeOswegoStreets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('walkable lake-oswego streets\nwith bars-restaurants'),
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
              convenienceCardOne(
                'https://en.wikipedia.org/wiki/Willamette_Shore_Trolley',
                'willamette-trolley',
                'This area of town is convenient for an excursion on the Willamette Shore Trolley',
                'https://www.google.com/maps/@45.4180967,-122.6629502,20z',
                'willamette-trolley-map'
              ),
              cardTwo('Downtown Lake Oswego','https://www.google.com/maps/@45.4167125,-122.6660073,16z','lake-oswego'),
            ],
          ),
        ),
      ),
    );
  }
}
