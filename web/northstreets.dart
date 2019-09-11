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
              modaCenter(),
              waudBluff(),
              peninsulaPark(),
              cardTwo('N Williams from Cook to Skidmore','https://www.google.com/maps/@45.55075,-122.6666716,16z','williams'),
              cardTwo('N Mississippi from Fremont to Alberta','https://www.google.com/maps/@45.5526726,-122.6752348,16z','mississippi'),
              cardTwo('N Denver from Schofield to Interstate','https://www.google.com/maps/@45.5827784,-122.687082,18z','north lombard'),
            ],
          ),
        ),
      ),
    );
  }
}
