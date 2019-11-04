import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';
import 'card_templates.dart';
import 'dart:html' as html;
import 'vistas.dart';

class VistasNorthEastPDX extends StatefulWidget {
  @override
  _VistasNorthEastPDXState createState() => _VistasNorthEastPDXState();
}

class _VistasNorthEastPDXState extends State<VistasNorthEastPDX> {
  void initState() {
    html.window.history.pushState("","vistas-ne-pdx","/vistas-ne-pdx.html");
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
        title: Text('ne-pdx-vistas'),
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
              rockyButteDrive(),
              rockyButteHike(),
            ],
          ),
        ),
      ),
    );
  }
}
