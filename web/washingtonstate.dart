import 'package:flutter_web/material.dart';
import 'dart:html' as html;
import 'defaults.dart';
import 'card_templates.dart';
import 'prebuildcards.dart';
import 'washingtonhiking.dart';
import 'attractions.dart';

class WashingtonState extends StatefulWidget {
  @override
  _WashingtonStateState createState() => _WashingtonStateState();
}

class _WashingtonStateState extends State<WashingtonState> {
  void initState() {
    html.window.history.pushState("","washington-state","/washington-state.html");
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
        title: Text('WashingtonState'),
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
              mountSaintHelens(),
              olympicNationalPark(),
              mountRanierNationalPark(),
              hanfordReachNationalMonument(),
              channeledScablands(),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WashingtonHiking()));
                },
                child: cardOne('Hiking in Washington State.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
