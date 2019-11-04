import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';
import 'card_templates.dart';
import 'dart:html' as html;
import 'vistas.dart';

class VistasSouthEastPDX extends StatefulWidget {
  @override
  _VistasSouthEastPDXState createState() => _VistasSouthEastPDXState();
}

class _VistasSouthEastPDXState extends State<VistasSouthEastPDX> {
  void initState() {
    html.window.history.pushState("","vistas-se-pdx","/vistas-se-pdx.html");
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
        title: Text('se-pdx-vistas'),
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
              mtTabor(),
            ],
          ),
        ),
      ),
    );
  }
}
