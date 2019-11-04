import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';
import 'card_templates.dart';
import 'dart:html' as html;
import 'vistas.dart';

class OregonCityVistas extends StatefulWidget {
  @override
  _OregonCityVistasState createState() => _OregonCityVistasState();
}

class _OregonCityVistasState extends State<OregonCityVistas> {
  void initState() {
    html.window.history.pushState("","oregon-city-vistas","/oregon-city-vistas.html");
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Vistas()));
              },
            );
          }
        ), 
        title: Text('oregon-city-vistas'),
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
              mcgloughlinPromenade(),
              willametteFallsViewPoint(),
              cardTwo('See Willamette Falls from turnout on 99E','https://www.google.com/maps/@45.351922,-122.6141362,21z','main'),
            ],
          ),
        ),
      ),
    );
  }
}
