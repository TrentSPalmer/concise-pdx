import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'prebuildcards.dart';
import 'card_templates.dart';

class OregonCityVistas extends StatefulWidget {
  @override
  _OregonCityVistasState createState() => _OregonCityVistasState();
}

class _OregonCityVistasState extends State<OregonCityVistas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('oregon-city-vistas'),
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
