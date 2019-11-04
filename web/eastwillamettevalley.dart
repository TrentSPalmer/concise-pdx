import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'card_templates.dart';
import 'silverton.dart';
import 'oregoncity.dart';
import 'smalltowns.dart';

class EastWillametteValley extends StatefulWidget {
  @override
  _EastWillametteValleyState createState() => _EastWillametteValleyState();
}

class _EastWillametteValleyState extends State<EastWillametteValley> {
  void initState() {
    html.window.history.pushState("","east-willamette-valley","/east-willamette-valley.html");
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SmallTowns()));
              },
            );
          }
        ), 
        title: Text('east willamette valley'),
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
              cardTwo('Downtown Mt Angel is famous for German Food','https://www.google.com/maps/@45.0696714,-122.7991836,17z','downtown-mtangel'),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Silverton()));
                },
                child: cardOne('Silverton (and sights)'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OregonCity()));
                },
                child: cardOne('Oregon City (and sights)'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
