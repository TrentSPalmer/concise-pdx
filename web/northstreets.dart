import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';
import 'card_templates.dart';

class NorthStreets extends StatefulWidget {
  @override
  _NorthStreetsState createState() => _NorthStreetsState();
}

class _NorthStreetsState extends State<NorthStreets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('walkable north streets\nwith bars-restaurants'),
        centerTitle: true,
        backgroundColor: navy,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
          ),
        ],
      ),
      backgroundColor: peacockBlue,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 6.0,),
          child: Column(
            children: <Widget>[
              cardTwo('Vancouver-Williams','https://example.com','vancouver-williams'),
              modaCenter(),
              cardTwo('Mississippi-Albina','https://example.com','mississippi-albina'),
              waudBluff(),
              cardTwo('North Lombard','https://example.com','north lombard'),
            ],
          ),
        ),
      ),
    );
  }
}
