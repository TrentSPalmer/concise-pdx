import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'card_templates.dart';
import 'eastwillamettevalley.dart';
import 'westwillamettevalley.dart';

class SmallTowns extends StatefulWidget {
  @override
  _SmallTownsState createState() => _SmallTownsState();
}

class _SmallTownsState extends State<SmallTowns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('walkable small-towns\nwith bars-restaurants'),
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
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => EastWillametteValley()));
                },
                child: cardOne('East Willamette Valley'),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => WestWillametteValley()));
                },
                child: cardOne('West Willamette Valley'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
