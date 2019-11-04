import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'card_templates.dart';
import 'vistadrives.dart';
import 'vistawalks.dart';
import 'vistahikes.dart';
import 'gorgevistas.dart';
import 'remotevistas.dart';
import 'vistasnorthpdx.dart';
import 'vistasnortheastpdx.dart';
import 'vistassoutheastpdx.dart';
import 'greshamvistas.dart';
import 'oregoncityvistas.dart';
import 'concisepdx.dart';
import 'dart:html' as html;

class Vistas extends StatefulWidget {
  @override
  _VistasState createState() => _VistasState();
}

class _VistasState extends State<Vistas> {
  void initState() {
    html.window.history.pushState("","vistas-and-overlooks","/vistas-and-overlooks.html");
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ConcisePDX()));
              },
            );
          }
        ), 
        title: Text(
            'vistas-and-overlooks',
          ),
        centerTitle: true,
        backgroundColor: navy,
      ),
      backgroundColor: peacockBlue,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 6.0,),
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VistaDrives()));
                },
                child: cardOne('Drive to the Top'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VistaWalks()));
                },
                child: cardOne('Walk to the Top'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VistaHikes()));
                },
                child: cardOne('A Real Hike to the Top'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GorgeVistas()));
                },
                child: cardOne('Gorge'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RemoteVistas()));
                },
                child: cardOne('Remote'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VistasNorthPDX()));
                },
                child: cardOne('North Portland'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VistasNorthEastPDX()));
                },
                child: cardOne('NE Portland'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => VistasSouthEastPDX()));
                },
                child: cardOne('SE Portland'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GreshamVistas()));
                },
                child: cardOne('Gresham'),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OregonCityVistas()));
                },
                child: cardOne('Oregon City'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
