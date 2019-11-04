import 'package:flutter_web/material.dart';
import 'defaults.dart';
import 'card_templates.dart';
import 'dart:html' as html;
import 'faqs.dart';

class TriMet extends StatefulWidget {
  @override
  _TriMetState createState() => _TriMetState();
}

class _TriMetState extends State<TriMet> {
  void initState() {
    html.window.history.pushState("","trimet","/trimet.html");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    String _answer = 'The buses, lightrail, and streetcars are all on the same system.';
    _answer += ' This makes it easy to find your way using Google Maps for directions.';

    String _fareAnswer = 'Presumably if you are a tourist, you want to buy a HOP ticket from a ticket machine,';
    _fareAnswer += ' or pay a bus driver cash, (instead of buying a HOP card).';
    _fareAnswer += ' All day costs \$5, 2.5 hours costs \$2.50.';

    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Faqs()));
              },
            );
          }
        ), 
        title: Text('trimet'),
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
              cardThree(_answer),
              infoCard('There no longer is a \"Fareless Square\".','https://en.wikipedia.org/wiki/Fareless_Square','a'),
              infoCard(_fareAnswer,'https://trimet.org/fares/','b'),
            ],
          ),
        ),
      ),
    );
  }
}
