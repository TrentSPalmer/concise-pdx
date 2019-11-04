import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'prebuildcards.dart';
import 'card_templates.dart';
import 'attractions.dart';

class MountHood extends StatefulWidget {
  @override
  _MountHoodState createState() => _MountHoodState();
}

class _MountHoodState extends State<MountHood> {
  void initState() {
    html.window.history.pushState("","mthood","/mthood.html");
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
        title: Text('MountHood'),
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
