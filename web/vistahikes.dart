import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';
import 'card_templates.dart';
import 'dart:html' as html;
import 'vistas.dart';

class VistaHikes extends StatefulWidget {
  @override
  _VistaHikesState createState() => _VistaHikesState();
}

class _VistaHikesState extends State<VistaHikes> {
  void initState() {
    html.window.history.pushState("","hikeable-vistas","/hikeable-vistas.html");
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
        title: Text('hikeable vistas'),
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
              rockyButteHike(),
              mtTabor(),
              mcgloughlinPromenade(),
              olallieButte(),
              larchMountain(),
              angelsRest(),
              multnomahFalls(),
              indianPoint(),
              dogMountain(),
              coyoteWall(),
            ],
          ),
        ),
      ),
    );
  }
}
