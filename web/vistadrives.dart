import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';
import 'card_templates.dart';
import 'dart:html' as html;
import 'vistas.dart';

class VistaDrives extends StatefulWidget {
  @override
  _VistaDrivesState createState() => _VistaDrivesState();
}

class _VistaDrivesState extends State<VistaDrives> {
  void initState() {
    html.window.history.pushState("","driveable-vistas","/driveable-vistas.html");
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
        title: Text('driveable vistas'),
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
              rockyButteDrive(),
              hoganButte(),
              willametteFallsViewPoint(),
              womensForum(),
              crownPoint(),
            ],
          ),
        ),
      ),
    );
  }
}
