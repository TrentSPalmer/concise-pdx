import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';
import 'card_templates.dart';
import 'dart:html' as html;
import 'vistas.dart';

class GorgeVistas extends StatefulWidget {
  @override
  _GorgeVistasState createState() => _GorgeVistasState();
}

class _GorgeVistasState extends State<GorgeVistas> {
  void initState() {
    html.window.history.pushState("","gorge-vistas","/gorge-vistas.html");
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
        title: Text('gorge-vistas'),
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
              larchMountain(),
              womensForum(),
              crownPoint(),
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
