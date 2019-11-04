import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'prebuildcards.dart';
import 'card_templates.dart';
import 'attractions.dart';

class CentralOregon extends StatefulWidget {
  @override
  _CentralOregonState createState() => _CentralOregonState();
}

class _CentralOregonState extends State<CentralOregon> {
  void initState() {
    html.window.history.pushState("","central-oregon","/central-oregon.html");
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
        title: Text('central-eastern-oregon'),
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
              lavaButte(),
              newberryCrater(),
              craterLake(),
              fortRock(),
              hartMountain(),
              malheurLake(),
              steensMountain(),
              alvordDesert(),
              owyheeCanyonLands(),
              wallowaLake(),
              hellsCanyon(),
              johnDayFossilBeds(),
            ],
          ),
        ),
      ),
    );
  }
}
