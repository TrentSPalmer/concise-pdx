import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';
import 'card_templates.dart';

class MountHood extends StatefulWidget {
  @override
  _MountHoodState createState() => _MountHoodState();
}

class _MountHoodState extends State<MountHood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MountHood'),
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
              timberlineLodge(),
              paradisePark(),
              elkMeadows(),
              cairnBasin(),
              timothyLake(),
              trilliumLake(),
              lostLake(),
              infoCard('More Hikes on Mt Hood','https://www.oregonhikers.org/field_guide/Mount_Hood_Hikes','a'),
              infoCard('More Camping on Mt Hood','https://www.fs.usda.gov/activity/mthood/recreation/camping-cabins','b'),
            ],
          ),
        ),
      ),
    );
  }
}
