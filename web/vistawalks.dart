import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';
import 'card_templates.dart';
import 'dart:html' as html;
import 'vistas.dart';

class VistaWalks extends StatefulWidget {
  @override
  _VistaWalksState createState() => _VistaWalksState();
}

class _VistaWalksState extends State<VistaWalks> {
  void initState() {
    html.window.history.pushState("","walkable-vistas","/walkable-vistas.html");
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
        title: Text('walkable vistas'),
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
              waudBluff(),
              mtTabor(),
              hoganButte(),
              highRockLookOut(),
              larchMountain(),
              multnomahFalls(),
            ],
          ),
        ),
      ),
    );
  }
}
