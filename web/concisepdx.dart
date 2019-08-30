import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'streetareas.dart';
import 'vistas.dart';
import 'faqs.dart';
import 'hikes.dart';
import 'attractions.dart';
import 'card_templates.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'concise-pdx',
      theme: ThemeData(
        primaryColor: navy,
      ),
      home: ConcisePDX(),
    );
  }
}

class ConcisePDX extends StatefulWidget {
  @override
  _ConcisePDXState createState() => _ConcisePDXState();
}

class _ConcisePDXState extends State<ConcisePDX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('concise-pdx'),
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
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => StreetAreas()));
                },
                child: cardOne('Walkable Streets With Restaurants and Bars'),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => Attractions()));
                },
                child: cardOne('Must See and Do'),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => Hikes()));
                },
                child: cardOne('Must Hikes'),
              ),
              // cardOne('Anecdotal Recommendations'),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => Vistas()));
                },
                child: cardOne('Vistas and Overlooks'),
              ),
              InkWell(
                onTap: () async {
                  await Navigator.push(context, MaterialPageRoute(builder: (context) => Faqs()));
                },
                child: cardOne('FAQ\'s'),
              ),
              cardOne('Feedback and Source'),
            ],
          ),
        ),
      ),
    );
  }
}
